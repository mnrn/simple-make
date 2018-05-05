#################################################################################
# @brief       makefile template
# @reference   thanks to http://urin.github.io/posts/2013/simple-makefile-for-clang
# @date        first edit   : 2016/02/16
# @date        last updated : 2018/05/05
#################################################################################



CC      = clang++

CFLAGS  = -g -MMD -MP -std=c++1z
WARNS   = -Weverything -Wno-c++98-compat -Wno-c++98-compat-pedantic -Werror

LDFLAGS = 
LIBS    = 
INC     = -I./include
TARGET  = ./bin/$(shell basename `readlink -f .`)

SRCDIR  = ./src
ifeq "$(strip $(SRCDIR))" ""
	SRCDIR = .
endif
SRCS    = $(wildcard $(SRCDIR)/*.cpp)

OBJDIR  = ./obj
ifeq "$(strip $(OBJDIR))" ""
	OBJDIR = .
endif
OBJS    = $(addprefix $(OBJDIR)/, $(notdir $(SRCS:.cpp=.o)))

DEPENDS = $(OBJS:.o=.d)


$(TARGET): $(OBJS) $(LIBS)
	$(CC) -o $@ $^ $(LDFLAGS)

$(OBJDIR)/%.o: $(SRCDIR)/%.cpp
	-mkdir -p $(OBJDIR)
	$(CC) -o $@ -c $< $(INC) $(CFLAGS) $(WARNS)

all: clean $(TARGET)

clean:
	rm -f $(TARGET) $(OBJS) $(DEPENDS)

-include $(DEPENDS)

