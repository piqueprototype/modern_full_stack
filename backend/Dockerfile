FROM python:3.11-slim-bullseye AS common
ENV DJANGO_SETTINGS_MODULE backend.settings

FROM common AS base
RUN pip install -U pip setuptools
RUN mkdir -p /app
WORKDIR /app

FROM base AS dependencies
COPY setup.py .
RUN python setup.py egg_info

FROM base as builder 
RUN apt update && apt install -y build-essential python3-dev
RUN mkdir -p /install
COPY --from=dependencies /app/backend.egg-info/requires.txt /tmp/
COPY . .
RUN sh -c 'pip install --no-warn-script-location --prefix=/install .'

FROM builder as static-builder
RUN cp -r /install/* /usr/local
RUN sh -c 'python manage.py collectstatic --no-input'

FROM common 
RUN mkdir -p /app
COPY docker-entrypoint.sh /app/
COPY --from=base /install /usr/local
COPY --from=base /app/static.dist /app/static.dist 
ENTRYPOINT ["/app/docker-entrypoint.sh"]
