#!/bin/bash
TIZEN_CERT_DIR="/usr/local/share/tizencerts"

container_id="$(
  docker run -itd \
    -v ${HOME}/Apps/tizencertificates/certificates:${TIZEN_CERT_DIR} \
    ghcr.io/ndriqimlahu/moonlight-tizen:master
  )"
echo $container_id

docker exec ${container_id} \
  tizen security-profiles add \
    -A \
    --name mysamsung_profile \
    --author ${TIZEN_CERT_DIR}/author.p12 \
    --dist ${TIZEN_CERT_DIR}/distributor.p12 \
    --password '' \
    --dist-password ''

docker exec ${container_id} \
  bash -c "sed -i 's|/usr/local/share/tizencerts/author.pwd||' /home/moonlight/tizen-studio-data/profile/profiles.xml"

docker exec ${container_id} \
  bash -c "sed -i 's|/usr/local/share/tizencerts/distributor.pwd||' /home/moonlight/tizen-studio-data/profile/profiles.xml"

docker exec ${container_id} \
  unzip -d moonlight Moonlight.wgt -x *signature*.xml

docker exec -it ${container_id} \
  bash -c 'cd ~/moonlight && tizen package -t wgt -s mysamsung_profile -- .'

docker exec -it ${container_id} \
  sdb connect samsung

docker exec -it ${container_id} \
  bash -c 'tizen install -n Moonlight.wgt -- ~/moonlight'

docker rm -f ${container_id}
