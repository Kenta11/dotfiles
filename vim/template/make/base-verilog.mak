SRCS = \
{{_expr_:join(map(split(glob('*.v'),"\n"),'"\t".substitute(v:val,"\\","/","g")')," \\\n")}}

TARGET = main
WAVE = wave.vcd

.SUFFIXES: .v .vcd

all: $(WAVE)

$(WAVE): $(TARGET)
	vvp $<

$(TARGET): $(SRCS)
	iverilog -o $@ $(SRCS)

clean:
	rm -f $(TARGET) $(WAVE)
