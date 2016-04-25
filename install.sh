#!/bin/bash

rpm_install(){
	cd $1
	cat packages.order | 
	while read pkg
	do
	   	echo "Installing $pkg"
	   	rpm -ih $pkg
	done
	cd -
}

rpm_install .

