#! /bin/bash
domin = `echo $2 | cut -f3 -d'/'`;
others= `echo $2 | cut -f4 -d'/'`;
case "$dommin" in
	"github.com")
	url="https://hub.fastgit.xyz/"$others;
	echo "download from github mirror $url"
	/usr/bin/curl -gqb "" fLC - --retry 3 --retry-delay 3 -o $1 $url;
	;;
	*)
	url = $2;
	/usr/bin/axel -n 15 -a -o $1 $url;
	;;
esac

