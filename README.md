# Kintsugi - AI Data Cleaning Tool

A FastAPI backend with Streamlit frontend for cleaning CSV data using Google Generative AI.

## Features

- 📤 Upload CSV files via Streamlit interface
- 🤖 AI-powered data cleaning (falls back to mock cleaning if no API key)
- 📊 Preview original and cleaned data
- 📥 Download cleaned CSV files
- 🚀 Fast and easy to use

## Installation

1. Install dependencies:
```bash
pip install -r requirements.txt
```

## Usage

### Option 1: Run Streamlit (includes backend)

The Streamlit app will automatically connect to the FastAPI backend if it's running.

### Option 2: Run separately

**Terminal 1 - Start FastAPI backend:**
```bash
python main.py
```
Or:
```bash
uvicorn main:app --reload
```

**Terminal 2 - Start Streamlit frontend:**
```bash
streamlit run app.py
```

### Enable AI Cleaning (Optional)

To enable Google Generative AI cleaning, set your API key:

```bash
# Windows
set GOOGLE_API_KEY=your_api_key_here

# Linux/Mac
export GOOGLE_API_KEY=your_api_key_here
```

If no API key is set, the system will use mock cleaning logic (removes duplicates, handles missing values, standardizes formats).

## API Endpoints

- `GET /` - Health check
- `POST /upload` - Upload and clean CSV file
- `GET /download/{filename}` - Download cleaned file

## Project Structure

```
Kintsugi/
├── main.py           # FastAPI backend
├── app.py            # Streamlit frontend
├── requirements.txt  # Python dependencies
└── README.md         # This file
```

## Notes

- Cleaned files are saved in the project directory with `cleaned_` prefix
- The backend runs on `http://localhost:8000` by default
- Streamlit runs on `http://localhost:8501` by default
