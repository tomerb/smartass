FROM python:3

WORKDIR /usr/src/smartass

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY src src

#CMD [ "python", "./src/pygpt4all_test.py" ]
#CMD [ "python", "./src/my_langchain.py" ]
CMD [ "python", "./src/my_knowledge_qna.py" ]
