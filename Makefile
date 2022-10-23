TARGET ?= "module"

GFLAGS = -S gtkwave.tcl
GTKWAVE_OSX = /Applications/gtkwave.app/Contents/Resources/bin/gtkwave

all: clean
	iverilog -g2012 -Wall -Wno-timescale -o ./$(TARGET).vvp ./$(TARGET).tb.v
	vvp ./$(TARGET).vvp
	gtkwave $(GFLAGS) *.vcd 2>/dev/null || $(GTKWAVE_OSX) $(GFLAGS) *.vcd 2>/dev/null

clean:
	rm -f ./*.vcd
	rm -f ./*.vvp