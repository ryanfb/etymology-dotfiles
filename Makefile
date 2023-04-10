DOTPNGS = $(subst .dot,.png,$(wildcard *.dot))

%.png : %.dot
	dot -Tpng $< > $@

all: $(DOTPNGS)

clean:
	rm -fv $(DOTPNGS)
