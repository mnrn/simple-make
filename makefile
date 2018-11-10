#################################################################################
# @brief       makefile template
# @reference   thanks to http://urin.github.io/posts/2013/simple-makefile-for-clang
# @date        first edit   : 2016/02/16
# @date        last updated : 2018/05/05
#################################################################################



CC      = clang++

CFLAGS  = -g -MMD -MP -std=c++17
WARNS   = -Weverything -Wno-c++98-compat -Wno-c++98-compat-pedantic -Werror

LDFLAGS = 
LIBS    = 
INCS    = -I./include
TARGET  = ./bin/$(shell basename `readlink -f .`)

SRCDIR  = ./src
SRCS    = $(wildcard $(SRCDIR)/*.cc)

OBJDIR  = ./obj
OBJS = $(addprefix $(OBJDIR)/, $(notdir $(SRCS:.cc=.o)))
DEPS = $(OBJS:.o=.d)


$(TARGET): $(OBJS) $(LIBS)
	$(CC) -o $@ $^ $(LDFLAGS)

$(OBJDIR)/%.o: $(SRCDIR)/%.cc
	$(CC) -o $@ -c $< $(INCS) $(CFLAGS) $(WARNS)

all: clean $(TARGET)

clean:
	rm -f $(TARGET) $(OBJS) $(DEPS)

-include $(DEPS)

