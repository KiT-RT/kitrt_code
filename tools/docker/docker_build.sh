docker build . -t kit-rt:ML_tf
docker run -ti --rm -v $(pwd)/../..:/mnt kit-rt:ML_tf /bin/bash
