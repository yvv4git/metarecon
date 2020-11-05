run:
	go run main.go

dc_run:
	docker run -it --rm --network host -v data:/data/ yvv4docker/kali /bin/bash