#!/bin/bash

# $ markdown2html.sh README.markdown
# $ markdown2html.sh "READ ME.markdown"
# this little idea is from here I think, https://github.com/dsanson/Pandoc-Droplets-and-Services 
#for file in "$@"
#do
#    output=${file%%.*}.html
#    pandoc -t html -o "$output" "$file"
#done
# the rest is based on that, pretty much, that parts that work
### for your interest
SAYDEBUG=
#SAYDEBUG=1

DEBUG=0
#DEBUG=1

if [ $DEBUG -gt 0 ]; then echo "DUMP1: COLORSCHEME [$COLORSCHEME]; $ 1 [$1] $ @ [$@]"; fi
#############  DEBUG EXIT ##########
#echo "###### FOR DEBUGGING WE EXIT1 HERE"; exit 1;

PROGNAME="$(basename "$0")"
function errorexit() {
  echo "$PROGNAME: $@"
  exit 1
}
# when only one scheme was supported
#if [[ "$1" == "-h" ]] || [[ "$1" == "--help" ]] ; then
#  echo "USAGE: $PROGNAME aMarkdownFile.md"
#fi


## COLORS ZENBURN AND DEFULT ONLY ARE SUPPORTED
function usage {
  echo "USAGE:   $PROGNAME [options] FILE"
  echo "DEFAULT: $PROGNAME aMarkdownFile.md"
  echo "HELP:    $PROGNAME -h | --help   (so --haddock is -a not -h)"
  echo "colors: -t|--tango -a|--haddock -z|--zenburn -e|--espresso -k|--kate (pygments is default)"
  echo "EXAMPLE: $PROGNAME -z|--zenburn aMarkdownFile.md"
  echo "EXAMPLE: $PROGNAME -a|--haddock aMarkdownFile.md"
  echo "NOTE: --haddock is -a NOT -h because -h is help"
}

# OPTIONAL COLORSCHEME?
unset COLORSCHEME
COLORSCHEME=
# Examine args some
if [ $# -eq 0 ] || [ $# -gt 2 ]   ; then
	#usage
	errorexit "ERROR: either none or too many filename args, try -h or --help"
	exit 1  # bad args
else
  case "$1" in
    --usage | -u ) usage ; exit 1 ;; # help 
    --help | -h ) usage ; exit 1 ;; # help 
    --version | -v ) usage ; exit 1 ;; # help 
  #echo "colors: --tango --haddock --zenburn --espresso --kate (pygments is default)"
    --tango | -t )    shift
                      COLORSCHEME="tango" ;;  # other than default colorscheme 
    # NOTE "-A" IS SHORT FOR "--HADDOCK" SINCE "-H" IS TAKEN FOR "--HELP"
    --haddock | -a )  shift
                      COLORSCHEME="haddock" ;;  # other than default colorscheme 
    --zenburn | -z )  shift
                      COLORSCHEME="zenburn" ;;  # other than default colorscheme 
    --espresso | -e ) shift
                      COLORSCHEME="espresso" ;;  # other than default colorscheme 
    --kate | -k )     shift
                      COLORSCHEME="kate" ;;  # other than default colorscheme 
    ## this is default any way, no param required
    --pygments | -p ) shift
                      COLORSCHEME="pygments" ;;  # other than default colorscheme 
    -*) usage ; exit 2 ;; # bad args
    *) if [ $DEBUG -gt 0 ]; then echo "probably ok to proceed"; fi ;;
  esac
fi

if [ $DEBUG -gt 0 ]; then echo "DUMP2: COLORSCHEME [$COLORSCHEME]; $ 1 [$1] $ @ [$@]"; fi 
#############  DEBUG EXIT ##########
#echo "###### FOR DEBUGGING WE EXIT2 HERE"; exit 1;

## OPTIONAL COLORSCHEME?
#unset COLORSCHEME
#COLORSCHEME=
#case "$1" in
#   --zenburn | -z )  shift
#                     COLORSCHEME="zenburn" ;;  # other than default colorscheme 
#esac

if [ $DEBUG -gt 0 ]; then echo "DUMP3: COLORSCHEME [$COLORSCHEME]; $ 1 [$1] $ @ [$@]"; fi 
#############  DEBUG EXIT ##########
#echo "###### FOR DEBUGGING WE EXIT3 HERE"; exit 1;

# EXAMINE FILENAME PARAM
#HTMLFNAME=
#if [ -f "${1}" ] ; then
#		case $1 in
#				*.markdown)   ;;
#				*.md)   ;;
#				*.mkd)  ;;
#				*.mdown)  ;;
#				*)        errorexit "'$1' not a typical markdown extension." ;;
#		esac
#else
#    errorexit "'$1' is not a valid file. Exiting."
#fi
####
unset HTMLFNAME
HTMLFNAME=
		if [ -f "${1}" ] ; then
				case $1 in
						*.markdown)   HTMLFNAME="$(basename -s .markdown "$1").html"   ;;
						*.md)       	HTMLFNAME="$(basename -s .md "$1").html"   ;;
						*.mkd)       	HTMLFNAME="$(basename -s .mkd "$1").html"   ;;
						*.mdown)   HTMLFNAME="$(basename -s .mdown "$1").html"   ;;
				*)        errorexit "'$1' not a typical markdown extension." ;;
		esac
else
    errorexit "'$1' is not a valid file. Exiting."
fi

if [ $DEBUG -gt 0 ]; then echo "DUMP4: COLORSCHEME [$COLORSCHEME]; $ 1 [$1]; $ @ [$@]; HTMLFNAME [$HTMLFNAME]"; fi 
#############  DEBUG EXIT ##########
#echo "###### FOR DEBUGGING WE EXIT4 HERE"; exit 1;


# this totally needs improvement
# we do only 1 file here, WORKS with filename with spaces (put quotes on cmd line)
file="${1}"
LOCATION=$(dirname "${1}")
cd "$LOCATION"
#output=${file%%.*}.html
# if we screw up obtaining name, try again
if [ -z "$HTMLFNAME" ] ; then
    output=${file%%.*}.html
else
    output="$HTMLFNAME"
fi

############### DEBUG FILE DETECTION ##########
# (testing is [ -f ] or [[ -f ]] is better) output=${file%%.*}.html
############### DEBUG FILE DETECTION ##########

# this totally needs improvement
if [ -f "$output" ] ; then
  if [[ $SAYDEBUG -gt 0 ]] ; then say "Oops! H T M L file already exists."; fi
  errorexit "$output file already exists. Will not overwrite. Exiting."
fi

if [ $DEBUG -gt 0 ]; then echo "DUMP5: COLORSCHEME [$COLORSCHEME]; $ 1 [$1]; $ @ [$@]; HTMLFNAME [$HTMLFNAME]; file [$file]; LOCATION [$LOCATION]; output [$output];"; fi 
#############  DEBUG EXIT ##########
#echo "###### FOR DEBUGGING WE EXIT5 HERE"; exit 1;



# tango, haddock, zenburn, espresso, kate, pygments (default)


if [[ "$COLORSCHEME" ]] && [[ "$COLORSCHEME" == "tango" ]] ; then
    if [ $DEBUG -gt 0 ]; then echo "using COLORSCHEME [$COLORSCHEME]"; fi

    ### TANGO-LIGHT - SUCKS
    #/usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md.css" --highlight-style=tango -t html5 -o "$output" "$file"
    ### TANGO-DARK
    /usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md-zenburn.css" --highlight-style=tango -t html5 -o "$output" "$file"

elif [[ "$COLORSCHEME" ]] && [[ "$COLORSCHEME" == "haddock" ]] ; then
    if [ $DEBUG -gt 0 ]; then echo "using COLORSCHEME [$COLORSCHEME]"; fi

    ### HADDOCK-LIGHT NOT-BAD
    /usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md.css" --highlight-style=haddock -t html5 -o "$output" "$file"
    ### HADDOCK-DARK (ok, but use light for now)
    #/usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md-zenburn.css" --highlight-style=haddock -t html5 -o "$output" "$file"

elif [[ "$COLORSCHEME" ]] && [[ "$COLORSCHEME" == "zenburn" ]] ; then
    if [ $DEBUG -gt 0 ]; then echo "using COLORSCHEME [$COLORSCHEME]"; fi

    # ZENBURN
    /usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md-zenburn.css" --highlight-style=zenburn -t html5 -o "$output" "$file"

elif [[ "$COLORSCHEME" ]] && [[ "$COLORSCHEME" == "espresso" ]] ; then
    if [ $DEBUG -gt 0 ]; then echo "using COLORSCHEME [$COLORSCHEME]"; fi

    ### ESPRESSO on LIGHT BG - SUCKS
    #/usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md.css" --highlight-style=espresso -t html5 -o "$output" "$file"
    ### ESPRESSO on DARK BG
    /usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md-zenburn.css" --highlight-style=espresso -t html5 -o "$output" "$file"

elif [[ "$COLORSCHEME" ]] && [[ "$COLORSCHEME" == "kate" ]] ; then
    if [ $DEBUG -gt 0 ]; then echo "using COLORSCHEME [$COLORSCHEME]"; fi

    ### KATE-LIGHT - LAME
    #/usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md.css" --highlight-style=kate -t html5 -o "$output" "$file"
    ### KATE-DARK
    /usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md-zenburn.css" --highlight-style=kate -t html5 -o "$output" "$file"

else
    ### PYGMENTS - DEFAULT
    if [ $DEBUG -gt 0 ]; then echo "default COLORSCHEME [$COLORSCHEME]"; fi
    # PYGMENTS
    /usr/local/bin/pandoc --standalone --include-in-header="$HOME/.pandoc/pandoc4md.css" --highlight-style=pygments -t html5 -o "$output" "$file"
fi

