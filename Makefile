all: tcpconn

uninstall: remove

tcpconn: tcpconn.c
	$(CC) -Wall -g tcpconn.c -o tcpconn $(CFLAGS)

install:
	install -m 4755 ./tcpconn /usr/bin/tcpconn
	install -m 4755 ./tcpconn.sh /usr/bin/tcpconn.sh
	install -m 4755 ./tcpconn.awk /usr/bin/tcpconn.awk

remove:
	rm -f /usr/bin/tcpconn

clean:
	rm -f ./tcpconn
