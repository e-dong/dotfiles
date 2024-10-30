#!//bin/bash
download_url="$(
  curl -sL https://github.com/moonlight-stream/moonlight-qt/releases/latest | \
  grep -oE "https://.*Moonlight.*\.AppImage"
)"

version="$(
  echo "${download_url}" | \
  sed -E 's|.*v([[:digit:]]+\.[[:digit:]]+\.[[:digit:]]+).*|\1|'
)"

echo "Getting latest release (${version}) from ${download_url} ..."


filename="Moonlight-${version}-x86_64.AppImage"
download_loc=~/Apps/Moonlight/${filename}
curl -Lo ${download_loc} ${download_url}

chmod u+x ${download_loc}
# Update symlink
ln -sf ${download_loc} ~/.local/bin/moonlight

