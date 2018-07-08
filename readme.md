# Building a simple C/C++ environment.

## Thanks

This repository was created with reference to [http://urin.github.io/posts/2013/simple-makefile-for-clang](http://urin.github.io/posts/2013/simple-makefile-for-clang)

### Overview

Please use it when you want to try C/C++ easily.  
You can easily use C/C++ by using this makefile, if you do not assume complex directory structure.

### Demo

```shell
$ pwd
/foo/bar/baz/hello
$ ls
init.sh  makefile
$ sh init.sh
$ ls
bin  include  init.sh  makefile  obj  src
$ vim ./src/hello.cc
$ cat ./src/hello.cc
#include <iostream>

int main()
{
    std::cout << "hello, world!" << std::endl;
    return 0;
}
$ make
$ ./bin/hello
hello, world!
```

### Description

If make executed in the following directory tree, the files are generated as follow.

```text
example
|-- init.sh
|-- makefile
|-- bin
|　　`-- example <- execute file
|-- include
|　　`-- example.h
|-- obj
|　　|-- example.d <- dependency file
|　　`-- example.o <- object file
'-- src
　　　`-- example.cc
```
