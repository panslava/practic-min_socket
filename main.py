import socket
import logging

# add filemode="w" to overwrite
logging.basicConfig(filename="/var/log/server.log", level=logging.INFO)

s = socket.socket()
s.bind(('', 65432))
s.listen()
conn, addr = s.accept()

print('Connected by', addr)

while True:
    data = conn.recv(1024)
    if not data:
        break
    conn.send('OK:'.encode('UTF-8') + data)
    logging.info(data)
conn.close()
