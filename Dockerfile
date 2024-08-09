# Використовуємо офіційний образ Python 3.10
FROM python:3.10

# Створюємо та переключаємося у робочу директорію /app
WORKDIR /app

# Копіюємо файли проєкту до контейнера
COPY . .

# Встановлюємо залежності Python за допомогою Poetry
RUN pip install poetry && \
    poetry config virtualenvs.create false && \
    poetry install --only main

# Задаємо команду для запуску застосунку
CMD ["python", "hw2.py"]
