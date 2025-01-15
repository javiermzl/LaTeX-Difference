#pip install --editable .

cd flatex
flatex ../new/main.tex ../new/new.tex
flatex ../old/main.tex ../old/old.tex
cd ..

latexdiff old/old.tex new/new.tex > diff.tex
mv diff.tex new/

echo '' > new/new.tex
echo '' > old/old.tex