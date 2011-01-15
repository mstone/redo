redo-always

HAS_PANDOC=`which pandoc || true`

if [ -f "$HAS_PANDOC" ] && [ -x "$HAS_PANDOC" ]; then
	echo "'$HAS_PANDOC' -s -r markdown -w man -o \"\$3\" \"\$1.md\"" > $3
else
	echo 'echo Skipping: "$1.1" >&2' > $3
fi

redo-stamp < $3
