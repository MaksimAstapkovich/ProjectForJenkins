FROM python:3

WORKDIR /usr/src/app

COPY ./flask-examples ./
#RUN cd flask-examples

RUN export PATH=$PATH:/usr/src/app/venv/bin/activate
RUN export PATH=$PATH:/usr/src/app/venv/bin/
RUN . venv/bin/activate
RUN pip install -r requirements.txt


RUN cd email && flask run


#RUN python3 -m venv venv
#RUN . venv/bin/activate

#RUN pip install --no-cache-dir -r requirements.txt

#RUN cd /email 
#RUN flask run
#EXPOSE 5000
