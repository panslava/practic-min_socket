FROM python:3

COPY ./main.py .

EXPOSE 9091
CMD ["python", "main.py"]