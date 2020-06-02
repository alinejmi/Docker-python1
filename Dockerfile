#FROM python
#RUN apk update
#RUN apk update

#RUN mkdir -p /usr/src/opt

#WORKDIR /usr/src/opt

#COPY app.py .

#RUN apk add --no-cache --update python3

#RUN apk add py-pip

#RUN pip3 install flask


#ENTRYPOINT python3 app.py 

FROM python

RUN pip install flask

WORKDIR /usr/src/app

COPY app.py .

CMD [ "python", "./app.py" ]
