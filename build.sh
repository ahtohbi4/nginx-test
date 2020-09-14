docker build \
  -t nginx-test \
  -f Dockerfile .

docker run \
  --rm \
  -p 3000:80 \
  nginx-test
