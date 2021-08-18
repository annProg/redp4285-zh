COVER ?= 30
DEVICE ?= pc
DEBUG ?=
HIGHLIGHT ?= --highlight-style=tango
CJK ?= -V CJKmainfont:思源宋体 -V CJKoptions:BoldFont=Source\ Han\ Serif\ SC\ Heavy,ItalicFont=FandolKai,SmallCapsFont=思源黑体
MAINFONT ?= -V mainfont:Source\ Serif\ Pro
SANSFONT ?= -V sansfont:Source\ Sans\ Pro
CODEFONT ?= -V monofont:Source\ Code\ Pro

all: ctexbook elegantbook epub

ctexbook:
	panbook book -V cover:$(COVER) -V device:$(DEVICE) $(DEBUG) $(HIGHLIGHT) $(CJK) $(MAINFONT) $(SANSFONT) $(CODEFONT)
elegantbook:
	panbook book --style=elegantbook -V cover:images/cover.jpg -V logo:images/logo.png -V device:$(DEVICE) $(DEBUG) $(HIGHLIGHT) $(CJK) $(MAINFONT) $(SANSFONT) $(CODEFONT)
epub:
	panbook book --style=epub $(DEBUG) $(HIGHLIGHT)
	ls -l build/
clean:
	panbook clean	