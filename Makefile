PWD := `pwd`

run:
	go run main.go

dc_run:
	docker run -it --rm --network host --name yvv_kali --mount type=bind,source=$(PWD)/data,destination=/data yvv4docker/kali /bin/bash

proxy:
	docker run -it -p 8118:8118 -p 9050:9050 -d dperson/torproxy

ip_check:
	proxychains curl http://ipecho.net/plain