#!/system/bin/sh

# Wait for touchscreen to be ready
sleep 1

# Try to detect which touch controller is present
if [ -d /sys/class/touchscreen/himax_ts ]; then
    echo "Initializing Himax touchscreen"
    echo 1 > /sys/class/touchscreen/himax_ts/reset
    sleep 0.1
    echo 0 > /sys/class/touchscreen/himax_ts/reset
    sleep 0.5
elif [ -d /sys/class/touchscreen/chipone-tddi ]; then
    echo "Initializing Chipone touchscreen" 
    echo 1 > /sys/class/touchscreen/chipone-tddi/reset
    sleep 0.1
    echo 0 > /sys/class/touchscreen/chipone-tddi/reset
    sleep 0.5
elif [ -d /sys/class/touchscreen/icn85xx ]; then
    echo "Initializing ICN85xx touchscreen"
    echo 1 > /sys/class/touchscreen/icn85xx/reset
    sleep 0.1
    echo 0 > /sys/class/touchscreen/icn85xx/reset
    sleep 0.5
fi

# Check if input devices are created
if [ -e /dev/input/event2 ]; then
    echo "Touchscreen initialized successfully"
else
    echo "Touchscreen initialization failed"
fi
