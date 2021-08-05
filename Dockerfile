FROM python

USER root
RUN mkdir /home/flask-examples/
COPY ./flask-examples/ /home/flask-examples/
WORKDIR /home/flask-examples/
#RUN python3 -m venv venv && \
#	. venv/bin/activate && \
#	pip install -r requirements.txt && \
#	cd hello/ && \
#	flask run
RUN pip install -r requirements.txt
CMD [ "python", "/home/flask-examples/hello/app.py" ] 
EXPOSE 5000
