# GNU Make workspace makefile autogenerated by Premake

ifndef config
  config=debug
endif

ifndef verbose
  SILENT = @
endif

ifeq ($(config),debug)
  openglad_config = debug
endif
ifeq ($(config),release)
  openglad_config = release
endif

PROJECTS := openglad

.PHONY: all clean help $(PROJECTS) 

all: $(PROJECTS)

openglad:
ifneq (,$(openglad_config))
	@echo "==== Building openglad ($(openglad_config)) ===="
	@${MAKE} --no-print-directory -C . -f openglad.make config=$(openglad_config)
endif

clean:
	@${MAKE} --no-print-directory -C . -f openglad.make clean

help:
	@echo "Usage: make [config=name] [target]"
	@echo ""
	@echo "CONFIGURATIONS:"
	@echo "  debug"
	@echo "  release"
	@echo ""
	@echo "TARGETS:"
	@echo "   all (default)"
	@echo "   clean"
	@echo "   openglad"
	@echo ""
	@echo "For more information, see http://industriousone.com/premake/quick-start"