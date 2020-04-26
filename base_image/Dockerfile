FROM python:3.6.5

RUN apt-get update && apt-get install git -y
# RUN mkdir /fazumbem
RUN git clone https://2b7a27bca6b78e559fd1c5e4f42b6b8de9112c26@github.com/fazumbem/fazumbem
WORKDIR /fazumbem
RUN pip install -r ./api/requirements.txt

# ENTRYPOINT ["python"]
# CMD ["webapp.py"]


