PWD := `pwd`

run:
	go run main.go

dc_run:
	docker run -it --rm --network host --name yvv_kali --mount type=bind,source=$(PWD)/data,destination=/data yvv4docker/kali /bin/bash