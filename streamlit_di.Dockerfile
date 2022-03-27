
   
FROM python:3.7.2

RUN pip install --upgrade pip

WORKDIR /app

COPY requirements_for_streamlit_di.txt .

RUN pip install --no-cache-dir -r  requirements_for_streamlit_di.txt 


ENV PORT=


COPY streamlit_ml.py . 
COPY streamlit_lab.py .
COPY streamlit_lab2.py .
COPY streamlit_lab3.py .
COPY streamlit_lab4.py .
COPY streamlit_lab5.py .
COPY util_ml.py .
COPY st_app2.png .
COPY st_app3.png .
COPY ipaexg.ttf /workspace/.pip-modules/lib/python3.8/site-packages/matplotlib/mpl-data/fonts/ttf/

CMD streamlit run streamlit_ml.py --server.port=${PORT}  --browser.serverAddress="0.0.0.0" 
#CMD streamlit run compiled_app.py --server.port=${PORT}  --browser.serverAddress="0.0.0.0" --server.baseUrlPath="st-eritsi-ra7zfnxu4q-an.a.run.app"
#CMD jupyter notebook --port=${PORT} --no-browser --ip="0.0.0.0"