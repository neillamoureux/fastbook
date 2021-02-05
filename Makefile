SHELL = /bin/sh

help:
	@echo -n -e "To setup container run 'make build' and then open a shell with to run 'make shell'\n"\
	"\n"\
	"container\tBuild the docker container\n"\
	"\t\tCACHE=0 Ignore docker cache when building container\n"\
	"shell\t\tRun a shell in the container\n"\

container: DOCKER_OPTS = $(if $(filter $(CACHE),0),--no-cache,)
container:
	./scripts/build.sh $(DOCKER_OPTS)

shell:
	./scripts/shell.sh
