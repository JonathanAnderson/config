gdb_get_backtrace() {
	local exe=$1
	local core=$2

	gdb ${exe} \
		--core ${core} \
		--batch \
		--quiet \
		-ex "thread apply all bt full" \
		-ex "quit"
}
function most_useless_use_of_zsh {
   local lines columns colour a b p q i pnew
   ((columns=COLUMNS-1, lines=LINES-1, colour=0))
   for ((b=-1.5; b<=1.5; b+=3.0/lines)) do
       for ((a=-2.0; a<=1; a+=3.0/columns)) do
           for ((p=0.0, q=0.0, i=0; p*p+q*q < 4 && i < 32; i++)) do
               ((pnew=p*p-q*q+a, q=2*p*q+b, p=pnew))
           done
           ((colour=(i/4)%8))
            echo -n "\\e[4${colour}m "
        done
        echo
    done
}
rot13 () { tr "[a-m][n-z][A-M][N-Z]" "[n-z][a-m][N-Z][A-M]" }
body() {
	IFS= read -r header
	printf '%s\n' "$header"
	"$@"
}
skip() {
	IFS= read -r header
	"$@"
}

