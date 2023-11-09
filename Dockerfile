FROM python:3.9-alpine


WORKDIR /efi_flask
COPY . /efi_flask

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 5005


ENV FLASK_APP=app/init.py
ENV FLASK_RUN_HOST=0.0.0.0

CMD ["sh", "run.sh"]