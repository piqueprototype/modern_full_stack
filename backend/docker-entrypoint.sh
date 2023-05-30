#!/bin/bash
# Section 1- Bash options
# set -o errexit
# set -o pipefail
# set -o nounset

# Section 2: Health of dependent services
postgres_ready() {
    python << END
import sys 
from psycopg2 import connect
from psycopg2.errors import OperationalError
try:
    connect(
        dbname="${POSTGRES_DATABASE}",
        user="${POSTGRES_USERNAME}",
        password="${POSTGRES_PASSWORD}",
        host="${POSTGRES_HOST}",
        port="${POSTGRES_PORT}",
    )
except OperationalError as err:
    print(err)
    sys.exit(-1)
END
}

redis_ready() {
    python << END
import sys
from redis import Redis
from redis import RedisError
try:
    redis = Redis.from_url("${REDIS_URL}", db=0, username="default", password="${REDIS_PASSWORD}")
    redis.ping()
except RedisError as err:
    print(err)
    sys.exit(-1)
END
}

until postgres_ready; do
  >&2 echo "${DJANGO_POSTGRES_DATABASE}"
  >&2 echo "${DJANGO_POSTGRES_USER}"
  >&2 echo "${DJANGO_POSTGRES_PASSWORD}"
  >&2 echo "${DJANGO_POSTGRES_HOST}"
  >&2 echo "${DJANGO_POSTGRES_PORT}"
  >&2 echo "Waiting for PostgreSQL to become available..."
  sleep 5
done
>&2 echo "PostgreSQL is available"

until redis_ready; do
  >&2 echo "Waiting for Redis to become available..."
  sleep 5
done
>&2 echo "Redis is available"

# Section 3- Idempotent Django commands
cd ${DJANGO_EXECUTION_DIRECTORY}
python manage.py collectstatic --noinput
python manage.py makemigrations 
python manage.py migrate
python manage.py runserver 0.0.0.0:8000
exec "$@"