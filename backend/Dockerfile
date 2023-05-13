FROM python:3.11-slim-bullseye AS stage
ENV DJANGO_SETTINGS_MODULE foo.settings

FROM stage AS builder
RUN pip install -U pip setuptools
RUN mkdir -p /app
WORKDIR /app
RUN apt update && apt install -y build-essential python3-dev
RUN mkdir -p /install
COPY . .
RUN sh -c 'pip install --no-warn-script-location --prefix=/install .'
RUN cp -r /install/* /usr/local
RUN sh -c 'python manage.py collectstatic --no-input'

FROM stage 
RUN mkdir -p /app
COPY docker-entrypoint.sh /app/
COPY --from=builder /install /usr/local
COPY --from=builder /app/static.dist /app/static.dist 
ENTRYPOINT ["/app/docker-entrypoint.sh"]
