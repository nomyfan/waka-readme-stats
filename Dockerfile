FROM wakareadmestats/waka-readme-stats:master

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN rm -rf /waka-readme-stats/sources

ADD sources/* /waka-readme-stats/
ENTRYPOINT cd /waka-readme-stats/ && python3 main.py
