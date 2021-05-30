#!/bin/bash

BuildProjectAndInstall(){
	cd $1 
	mkdir -p build
	cd build
	cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=$(pwd)/../../install -G Ninja ..
	ninja install
	return 0
}
export -f BuildProjectAndInstall

find ./remoteProjects/ -mindepth 2 -maxdepth 2 -iname cmakelists.txt | sed 's/cmakelists.txt//gI' | xargs -n1 -I@ bash -c "BuildProjectAndInstall @"