FROM python:3.7-stretch

WORKDIR /src/

COPY . .

EXPOSE 8501

COPY . .

RUN pip3 install -r requirements.txt

CMD streamlit run application.py server=“0.0.0.0” --server.enableCORS=false