#!/bin/bash
#
# This script downloads the MINST database
# and packages it in a .go file.
#
# You shouldn't need to run this script,
# since the .go file is in the repository.
#

rm -rf data
mkdir data
curl http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz >data/train-images-idx3-ubyte.gz
curl http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz >data/train-labels-idx1-ubyte.gz
curl http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz >data/t10k-images-idx3-ubyte.gz
curl http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz >data/t10k-labels-idx1-ubyte.gz
go-bindata -pkg mnist -o bindata.go -nocompress data/
rm -rf data
