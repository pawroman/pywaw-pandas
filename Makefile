all:
	make -C src

clean:
	make -C src clean
	rm -rf out

serve:
	make -C src serve
