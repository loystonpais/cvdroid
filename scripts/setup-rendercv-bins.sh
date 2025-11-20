set -e

setup-typst() {
  [ -z "$ARCH" ] && (echo "arch needs to be set"; exit 1)

  version="${TYPSTVERSION:-v0.14.0}"

  mkdir -p "rendercv-embed/${ARCH}"

  rm -f "rendercv-embed/${ARCH}/typst"

  curl -L https://github.com/typst/typst/releases/download/${version}/typst-${ARCH}-unknown-linux-musl.tar.xz | tar -xvJf - \
    -C "rendercv-embed/${ARCH}" --strip-components=1 --wildcards "**/typst"

  chmod +x "rendercv-embed/${ARCH}/typst"
}

setup-fonts() {
  echo hi
}

setup-rendercv() {
  echo hi
}

[ "$NOTYPST" = 1 ] || setup-typst
[ "$NOFONTS" = 1 ] || setup-fonts
[ "$NORENDERCV" = 1 ] || setup-rendercv