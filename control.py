import socket
import sys
import time
from prompt_toolkit import prompt
from prompt_toolkit.application import run_in_terminal
from prompt_toolkit.key_binding import KeyBindings    


class MySocket:
    """demonstration class only
      - coded for clarity, not efficiency
    """

    def __init__(self, sock=None):
        if sock is None:
            self.sock = socket.socket(
                            socket.AF_INET, socket.SOCK_STREAM)
        else:
            self.sock = sock

    def connect(self, host, port):
        self.sock.connect((host, port))

    def mysend(self, msg):
        totalsent = 0
        MSGLEN = len(msg)
        while totalsent < MSGLEN:
            sent = self.sock.send(msg[totalsent:])
            if sent == 0:
                raise RuntimeError("socket connection broken")
            totalsent = totalsent + sent

    def myreceive(self):
        chunks = []
        bytes_recd = 0
        while bytes_recd < MSGLEN:
            chunk = self.sock.recv(min(MSGLEN - bytes_recd, 2048))
            if chunk == b'':
                raise RuntimeError("socket connection broken")
            chunks.append(chunk)
            bytes_recd = bytes_recd + len(chunk)
        return b''.join(chunks)

def generateCommands(baseCommand):
    d = dict()
    d['forwardCommand'] = baseCommand
    d['backwardCommand'] = baseCommand.replace('F', 'B')
    d['leftCommand'] = baseCommand.replace('F', 'L')
    d['rightCommand'] = baseCommand.replace('F', 'R')
    return d

myIP = input('enter ip address ')
myPort = input('enter port number ')
myCommandStructure = input('enter base forward command ')
myIoT = input('enter IoT start command ')
d = generateCommands(myCommandStructure)
print(d)

sock = MySocket()

sock.connect('10.155.13.2',4096)

sock.mysend( bytes('hello world', 'utf-8'))
  
bindings = KeyBindings()

@bindings.add('w')
def _(event):
    " Say 'hello' when `c-t` is pressed. "
    def print_hello():
        print('forward')
        sock.mysend(bytes(d['forwardCommand'], 'utf-8'))
        time.sleep(0.25)
    run_in_terminal(print_hello)

@bindings.add('a')
def _(event):
    " Say 'hello' when `c-t` is pressed. "
    def print_hello():
        print('left')
        sock.mysend(bytes(d['leftCommand'], 'utf-8'))
        time.sleep(0.25)
    run_in_terminal(print_hello)
	
@bindings.add('s')
def _(event):
    " Say 'hello' when `c-t` is pressed. "
    def print_hello():
        print('backward')
        sock.mysend(bytes(d['rightCommand'], 'utf-8'))
        time.sleep(0.25)
    run_in_terminal(print_hello)

@bindings.add('d')
def _(event):
    " Say 'hello' when `c-t` is pressed. "
    def print_hello():
        print('right')
        sock.mysend(bytes(d['backwardCommand'], 'utf-8'))
        time.sleep(0.25)
    run_in_terminal(print_hello)

@bindings.add(' ')
def _(event):
    " Say 'hello' when `c-t` is pressed. "
    def print_hello():
        print('right')
        sock.mysend(bytes(myIoT, 'utf-8'))
        time.sleep(0.25)
    run_in_terminal(print_hello)

@bindings.add('c-x')
def _(event):
    " Exit when `c-x` is pressed. "
    event.app.exit()

text = prompt('> ', key_bindings=bindings)
print('You said: %s' % text)
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    