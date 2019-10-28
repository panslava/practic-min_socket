FROM python:3

COPY ./main.py .

EXPOSE 65432
CMD ["python", "main.py"]
