FROM alpine:3.16

RUN apk --no-cache add gcc g++ cmake make python3 py3-pip wget pythonispython3 perl linux-headers

WORKDIR /install

RUN pip3 install conan==1.51.1
RUN wget https://raw.githubusercontent.com/reduct-storage/reduct-storage/main/conanfile.txt

RUN conan install . --build=* --settings=compiler.libcxx=libstdc++11