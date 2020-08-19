FROM python:3.6.1-alpine
WORKDIR /project
ADD . /project
RUN pip install -r requirments.txt
RUN python3 hello.test.py
CMD ["python","app.py"]