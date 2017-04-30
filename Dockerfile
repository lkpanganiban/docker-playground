FROM davidjfelix/python3.5
MAINTAINER Ian Panganiban version: 0.1
COPY code /src
RUN apt-get update && apt-get install -y virtualenv && virtualenv -p python3 /src/env && . /src/env/bin/activate && pip install -U setuptools && pip install numpy
ENTRYPOINT ["/src/env/bin/python3", "/src/run.py"]
