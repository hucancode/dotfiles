#!/bin/sh
# scripts by adi1090x

## Get status
get_status() {
	if [[ "$(mpc status)" == *"[playing]"* ]]; then
		echo ""
	else
		echo ""
	fi
}

## Get song
get_song() {
	song=`mpc -f "[[%artist% - ]%title%]|[%file%]" current`
	if [[ -z "$song" ]]; then
		echo "Offline"
	else
		echo "$song" | awk '{gsub("[(][^)]*[)]","")}1'
	fi	
}

## Get time
get_time() {
	time=`mpc status | grep "%)" | awk '{print $4}' | tr -d '(%)'`
	if [[ -z "$time" ]]; then
		echo "0"
	else
		echo "$time"
	fi	
}
get_ctime() {
	ctime=`mpc status | grep "#" | awk '{print $3}' | sed 's|/.*||g'`
	if [[ -z "$ctime" ]]; then
		echo "0:00"
	else
		echo "$ctime"
	fi	
}
get_ttime() {
	ttime=`mpc -f %time% current`
	if [[ -z "$ttime" ]]; then
		echo "0:00"
	else
		echo "$ttime"
	fi	
}

## Execute accordingly
if [[ "$1" == "--song" ]]; then
    get_song
    mpc idleloop | while read -r _; do
    	get_song
    done
elif [[ "$1" == "--status" ]]; then
    get_status
    mpc idleloop | while read -r _; do
    	get_status
    done
elif [[ "$1" == "--time" ]]; then
	get_time
elif [[ "$1" == "--ctime" ]]; then
	get_ctime
elif [[ "$1" == "--ttime" ]]; then
	get_ttime
elif [[ "$1" == "--toggle" ]]; then
	mpc -q toggle
elif [[ "$1" == "--next" ]]; then
	{ mpc -q next; }
elif [[ "$1" == "--prev" ]]; then
	{ mpc -q prev; }
fi
