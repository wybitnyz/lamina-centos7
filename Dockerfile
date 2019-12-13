FROM centos:centos7

RUN yum install -y epel-release centos-release-scl && yum install -y \
	devtoolset-8-gcc \
	devtoolset-8-gcc-c++ \
	llvm-toolset-7-clang \ 
	ghc \
	vim \
	qt5-qtbase \
	qt5-qtbase-devel \
	cmake3 \
	make \
	gtest \
	gtest-devel \
	lcov && mkdir -p /root/lamina

WORKDIR /root/lamina

ENTRYPOINT [ "scl", "enable", "devtoolset-8", "--", "bash" ]
