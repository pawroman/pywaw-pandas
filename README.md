# PyWaw #35 slides

http://pywaw.org/35/

## "Czego nauczyłem się pracując z pandas"

Available at / dostępne na: http://pawroman.github.io/pywaw-pandas/

## How to build / jak zbudować ze źródła

Build requirements / wymagania:

* IPython + notebook >= 2.0
* pandoc

More on requirements / więcej informacji o wymaganiach:

* http://ipython.org/ipython-doc/stable/install/install.html#dependencies-for-the-ipython-html-notebook 
* http://ipython.org/ipython-doc/stable/install/install.html#pandoc

Static HTML / statyczny HTML -- `out/index.html`:

    make

inotify-based rebuild + HTTP server:

    make serve
