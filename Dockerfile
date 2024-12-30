# Temel Python image'i
FROM python:3.9-slim

# Çalışma dizinini ayarla
WORKDIR /app

# Gereksinim dosyalarını kopyala
COPY app/requirements.txt .

# Gereksinimleri yükle
RUN pip install -r requirements.txt

# Uygulama dosyalarını kopyala
COPY app/ .

# Flask uygulamasını çalıştır
CMD ["python", "app.py"]
