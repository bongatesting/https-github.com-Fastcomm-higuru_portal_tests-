# socket_echo_client.py
import socket
import sys
import time
import json
import pickle
import time
import random


def send_data(socket, data):
    print("S:", data)
    socket.sendall(data.encode("utf-8"))
    receive(socket)


def receive(socket):
    data = sock.recv(1024)
    print("R:", data.decode("utf-8"))
    try:
        data_json = json.loads(data.decode("utf-8"))
        message = '{"outputs":{"' + \
            data_json['k'] + '":' + data_json['v'] + '}}'
        time.sleep(2)
        send_data(socket, message)
    except:
        pass


# '105.247.9.165'
# ---------------------------------------
# HOST = 'thingcola.hellothing.com'
# thingcola_p = '35.177.141.223'
# thingcola_s = '35.177.241.26'
HOST = 'thingcola-stage.hellothing.com'
# HOST = '127.0.0.1'
PORT = 30001
# ---------------------------------------


# Create a TCP/IP socket
sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

# Connect the socket to the port where the server is listening
server_address = (HOST, PORT)

print('connecting to {} port {}'.format(*server_address))
sock.connect(server_address)

message = '{"id":"868446030645978"}'
#message = '{"id":"YX8NB8"}'
send_data(sock, message)

message = {
    #"temp": random.randrange(0, 100)
    "temp": 35
}

message = json.dumps(message)
send_data(sock, message)


sock.close()
