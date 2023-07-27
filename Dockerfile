FROM python
ADD main.py /home/main.py
ADD website /home/website
ADD requirements.txt /home/requirements.txt
WORKDIR /home
RUN pip install -r requirements.txt
ENTRYPOINT ["python3", "main.py"]
EXPOSE 5000/tcp
