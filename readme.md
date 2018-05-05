# Building a simple C/C++ environment.

### Thanks
This repository was created with reference to [http://urin.github.io/posts/2013/simple-makefile-for-clang](http://urin.github.io/posts/2013/simple-makefile-for-clang)


### Overview
Please use it when you want to try C/C++ easily.<br>
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
$ vim ./src/hello.cpp
$ cat ./src/hello.cpp
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
|　　'-- example <- (TARGET) execute file
|-- include
|　　'-- example.h
|-- obj
|　　|-- example.d <- (DEPS) depend file 
|　　'-- example.o <- (OBJS) object file
'-- src
　　　'-- example.cpp
```

If you can read Japanese and need more details, please see [http://urin.github.io/posts/2013/simple-makefile-for-clang](http://urin.github.io/posts/2013/simple-makefile-for-clang)
