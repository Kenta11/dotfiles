SRCS = \
{{_expr_:join(map(split(glob('*.c'),"\n"),'"\t".substitute(v:val,"\\","/","g")')," \\\n")}}

OBJS = $(subst .c,.o,$(SRCS))

CFLAGS = -Wall -Wextra
LIBS = 
TARGET = {{_expr_:expand('%:p:h:t')}}

.PHONY: debug
debug: CFLAGS += -O0 -g
debug: all

.PHONY: release
release: CFLAGS += -O2
release: all

.SUFFIXES: .c .o

all : $(TARGET)

$(TARGET) : $(OBJS)
	gcc -o $@ $(OBJS) $(LIBS)

.c.o :
	gcc -c $(CFLAGS) -I. $< -o $@

.PHONY: run
run: $(TARGET)
	./$(TARGET)

clean :
	rm -f *.o $(TARGET)
