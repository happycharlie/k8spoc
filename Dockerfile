FROM python:3.9.7
WORKDIR /app
ADD main.py /app
ADD requirements.txt /app
RUN pip install -r requirements.txt
EXPOSE 8888
CMD python main.py