FROM python:3.9

RUN apt-get update
RUN apt-get install -y jq zip
RUN pip install awscli

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
