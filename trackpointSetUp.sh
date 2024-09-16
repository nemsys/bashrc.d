#!/bin/sh
# set trackpoint by manipulating directly files in
# /sys/devices/platform/i8042/serio1/serio2

#echo 'Trackpoint SetUp Start'
#echo '250' 	| sudo tee /sys/devices/platform/i8042/serio1/serio2/speed > /dev/null
#echo '250' 	| sudo tee /sys/devices/platform/i8042/serio1/serio2/resolution > /dev/null
#echo '4' 	| sudo tee /sys/devices/platform/i8042/serio1/serio2/inertia > /dev/null
#echo '20' 	| sudo tee /sys/devices/platform/i8042/serio1/serio2/ztime > /dev/null
#echo '4' 	| sudo tee /sys/devices/platform/i8042/serio1/serio2/thresh > /dev/null
#echo '8' 	| sudo tee /sys/devices/platform/i8042/serio1/serio2/upthresh > /dev/null
#echo '10' 	| sudo tee /sys/devices/platform/i8042/serio1/serio2/mindrag > /dev/null
#echo '250'  | sudo tee /sys/devices/platform/i8042/serio1/serio2/sensitivity > /dev/null
#echo '1'  | sudo tee /sys/devices/platform/i8042/serio1/serio2/press_to_select > /dev/null

# middle trackpoint button - disable paste on double click
xinput set-button-map 'TPPS/2 Elan TrackPoint' 1 0 3 4 5 6 7


# DOCS: https://www.x.org/wiki/Development/Documentation/PointerAcceleration/
# xinput --set-prop "TPPS/2 Elan TrackPoint" "Device Accel Profile" 3
# xinput --set-prop "TPPS/2 Elan TrackPoint" "Device Accel Constant Deceleration" 0.6
# xinput --set-prop "TPPS/2 Elan TrackPoint" "Device Accel Adaptive Deceleration" 1
# xinput --set-prop "TPPS/2 Elan TrackPoint" "Device Accel Velocity Scaling" 20

# xinput set-ptr-feedback "TPPS/2 Elan TrackPoint" 0 18 10
# xset mouse 3 0


# xinput --set-prop "TPPS/2 Elan TrackPoint" "libinput Accel Profile Enabled" 1, 0
xinput --set-prop "TPPS/2 Elan TrackPoint" "libinput Accel Speed" 0.5
# xinput --set-prop "TPPS/2 Elan TrackPoint" "libinput Accel Speed Default" 1.0

# check settings in /usr/share/libinput/local-overrides.quirks as well



# xinput list-props "TPPS/2 Elan TrackPoint"
# sudo xinput set-prop "TPPS/2 Elan TrackPoint" 330 3


# xinput get-button-map "TPPS/2 Elan TrackPoint"
#>>> 1 0 3 4 5 6 7

xinput set-button-map "TPPS/2 Elan TrackPoint" 1 3 3 4 5 6 7
