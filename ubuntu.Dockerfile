FROM ubuntu:22.04

RUN apt update && apt install -y cmake python3-pip zip


WORKDIR /install

RUN pip3 install conan~=1.59
RUN wget https://raw.githubusercontent.com/reduct-storage/reduct-storage/main/conanfile.txt

RUN conan install . --build=missing -s compiler.libcxx=libstdc++11 -s build_type=Release