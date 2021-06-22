build:
	docker build -t cadlabsorg/jupyter-lab-environment:latest .

run:
	docker run -it --rm -p 8888:8888 -v "${PWD}":/home/jovyan/work cadlabsorg/jupyter-lab-environment:latest

push:
	docker tag cadlabsorg/jupyter-lab-environment:latest cadlabsorg/jupyter-lab-environment:"${DOCKER_TAG}"
	docker push cadlabsorg/jupyter-lab-environment:"${DOCKER_TAG}"

login:
	docker login -u cadlabsorg -p ${CADLABS_DOCKERHUB_PASSWORD}
