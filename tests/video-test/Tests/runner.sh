docker network create imedia-pilot

docker pull ignaciodomin/media-cce:dev
docker run --rm --network imedia-pilot \
 --volume tee:/workspace \
 --name media-cce \
 ignaciodomin/media-cce:dev \
 ${workspace.absolutePath}/config-cce.cfg

docker pull ignaciodomin/media-cpe:plane
docker run --rm --network imedia-pilot \
 --volume tee:/workspace \
 --name media-cpe \
 ignaciodomin/media-cpe:dev \
 ${workspace.absolutePath}/config-cpe.cfg


