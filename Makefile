BIN:=bin
TARGET:=$(BIN)/pibrot.out
CC:=mpicc
LDFLAGS:=-L$(SDKSTAGE)/opt/vc/lib/ -lGLESv2 -lEGL -lopenmaxil -lbcm_host -lvcos -lvchiq_arm -lpthread -lrt -L../libs/ilclient -L../libs/vgfont -lm
INCLUDES:=-I$(SDKSTAGE)/opt/vc/include/ -I$(SDKSTAGE)/opt/vc/include/interface/vcos/pthreads -I$(SDKSTAGE)/opt/vc/include/interface/vmcs_host/linux -I./ -I../libs/ilclient -I../libs/vgfont
CCFLAGS:=-DRASPI -mfloat-abi=hard -mfpu=vfp -ffast-math -O3
SOURCES:=ogl_utils.c rectangle_gl.c renderer.c communication.c egl_utils.c image_gl.c lodepng.c cursor_gl.c start_menu_gl.c exit_menu_gl.c fractal.c multi_tex.c

pibrot:	$(SOURCES) | $(BIN)
	$(CC) $(CCFLAGS) $(INCLUDES) $^ $(LDFLAGS) -o $(TARGET)

$(BIN):
	mkdir $@

clean:
	rm -rf $(BIN)
	rm -f *.o

run:
	./run.sh

.PHONY: clean run
