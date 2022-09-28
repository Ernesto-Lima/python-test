FROM ubuntu:18.04

RUN apt-get update && apt-get -y upgrade && apt-get -y install python3

COPY pi.py /code/pi.py

RUN chmod +rx /code/pi.py

ENV PATH "/code:$PATH"

CMD ["pi.py", "-h"]

