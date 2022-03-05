#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/select.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <arpa/inet.h>
#include <algorithm>
#include <string>

using namespace std;

int main(){
	int port = 8080;
	char buff[1024];
	fd_set listenSet;
	FD_ZERO(&listenSet);
	int sock = socket(PF_INET, SOCK_STREAM, 0);
	if(socket < 0)
	{
		std::cout << "create socket error" << std::endl;
		exit(1);
	}
	struct sockaddr_in serverAddr;
	serverAddr.sin_family = AF_INET;
	serverAddr.sin_addr.s_addr = INADDR_ANY;
	serverAddr.sin_port = htons(port);
	
	if(bind(sock, (struct sockaddr*)&serverAddr, sizeof(serverAddr)) < 0){
		std::cout << "bind error" << std::endl;
		exit(1);
	}
	
	if(listen(sock, 5) == 1){
		std::cout << "listen error" << std::endl;
		exit(1);
	}
	FD_SET(sock, &listenSet);
	int maxFd = sock;
	
	struct sockaddr_in clientAddr;
	socklen_t sockLen = sizeof(clientAddr);
	fd_set temp;
	FD_ZERO(&temp);
	while(1){
		temp = listenSet;
		int status = select(maxFd + 1, &temp, nullptr, nullptr, nullptr);
		if(status < 0)
		{
			std::cout << "select error" << std::endl;
		}
		else if(status > 0){
			for(int i = 0; i < maxFd + 1; ++i){
				if(FD_ISSET(i, &temp)){
					if(i == sock){
						//监听描述符
						int clientFd = accept(sock, (struct sockaddr*)&clientAddr, &sockLen);
						if(clientFd < 0){
							std::cout << "accept error" << std::endl;
							exit(1);
						}
						maxFd = max(maxFd, clientFd);
						FD_SET(clientFd, &listenSet);
					}
					else{
						//通信描述符
						int n = read(i, buff, sizeof(buff));
						if(n < 0){
							std::cout << "socket " << i << " 接收数据出错" << std::endl;
						}
						else if(n == 0){
							std::cout << "socket " << i << " 接收数据为0, 断开连接" << std::endl;
							close(i);
							FD_CLR(i, &listenSet);
						}
						else{
							std::cout << "socket " << i << " 成功接收数据， 数据： " << std::string(buff) << std::endl;
						}
					}
				}

			}
		}
		else{
			std::cout << "select return 0" << std::endl;
		}
	}
	close(sock);
					
	return 0;
}

