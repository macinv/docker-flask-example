FROM python:2.7
MAINTAINER Jeff Li <jeff.li@mackenzieinvestments.com>

COPY . /app
WORKDIR /app

RUN pip install -r requirement.txt

ENTRYPOINT ["python"]
CMD ["app.py"]