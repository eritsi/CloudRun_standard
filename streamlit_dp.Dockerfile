
   
FROM python:3.7.2

RUN pip install --upgrade pip

WORKDIR /app

COPY requirements_for_streamlit_dp.txt .

RUN pip install --no-cache-dir -r  requirements_for_streamlit_dp.txt 


ENV PORT=


COPY compiled_app.py . 
COPY streamlit_yfinance.py .
COPY streamlit_sp500.py .
COPY streamlit_penguin.py .
COPY streamlit_jpx_wiki.py .
COPY streamlit_iris.py .
COPY streamlit_football_app.py .
COPY streamlit_dna.py .
COPY streamlit_crypto.py .
COPY streamlit_boston.py .
COPY streamlit_basketball_app.py .
COPY dna-logo.jpg .
COPY crypto-logo.jpg .
COPY penguins_cleaned.csv .
COPY penguins_clf.pkl .


CMD streamlit run compiled_app.py --server.port=${PORT}  --browser.serverAddress="0.0.0.0" 
#CMD streamlit run compiled_app.py --server.port=${PORT}  --browser.serverAddress="0.0.0.0" --server.baseUrlPath="st-eritsi-ra7zfnxu4q-an.a.run.app"
#CMD jupyter notebook --port=${PORT} --no-browser --ip="0.0.0.0"