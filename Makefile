DIST=public

default: build

build:
	hugo --destination=${DIST} --ignoreCache --cleanDestinationDir

draft:
	hugo --buildDrafts

server:
	hugo server --buildDrafts --buildFuture --bind 0.0.0.0

clean:
	rm -rf ${DIST}/