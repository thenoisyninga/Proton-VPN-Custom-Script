if [[ $1 == '-r' ]]
then
	protonvpn-cli status;
	protonvpn-cli disconnect;
	protonvpn-cli connect -r;
else
	if [[ $1 == '-f' ]]
	then
		protonvpn-cli status;
		protonvpn-cli disconnect;
		protonvpn-cli connect -f;
	else
		if [[ $1 == '-d' ]]
		then
			protonvpn-cli disconnect; protonvpn-cli ks --off;
		else
			echo "Incorrect option specified";
		fi
	fi
fi