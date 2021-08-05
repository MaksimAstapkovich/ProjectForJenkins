FROM python

USER root
RUN mkdir /home/flask_examples/
COPY ./flask_examples/ /home/flask_examples/
WORKDIR /home/flask_examples/
#RUN python3 -m venv venv && \
#	. venv/bin/activate && \
#	pip install -r requirements.txt && \
#	cd hello/ && \
#	flask run
RUN pip install -r /home/flask_examples/requirements.txt
CMD [ "python", "/home/flask_examples/hello/app.py" ] 
EXPOSE 5000
