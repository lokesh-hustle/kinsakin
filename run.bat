@echo off
echo Starting Kintsugi Application...
echo.
echo Starting FastAPI backend...
start cmd /k "python main.py"
timeout /t 3 /nobreak >nul
echo.
echo Starting Streamlit frontend...
start cmd /k "streamlit run app.py"
echo.
echo Both services are starting...
echo FastAPI: http://localhost:8000
echo Streamlit: http://localhost:8501
pause
