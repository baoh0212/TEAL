ECHO Starting to compile manual...
chmod u+x script/copy_tex.sh
script/copy_tex.sh
python script/generate_user_manual.py
cd build
pdflatex -interaction=nonstopmode TEAL_user_manual.tex
cd ..
bibtex build/TEAL_user_manual
cd build
pdflatex -interaction=nonstopmode TEAL_user_manual.tex
pdflatex -interaction=nonstopmode TEAL_user_manual.tex
cd ..
cp -f build/TEAL_user_manual.pdf pdf/
ECHO User manual build complete.
ECHO Cleaning build
cd ..
rm -rf build
ECHO Done

