#!/system/bin/sh

LOG_FILE=/tmp/touch_debug.log

echo "=== Touch Debug Info ===" > $LOG_FILE
echo "Date: $(date)" >> $LOG_FILE
echo "" >> $LOG_FILE

echo "Input devices:" >> $LOG_FILE
ls -la /dev/input/ >> $LOG_FILE
echo "" >> $LOG_FILE

echo "Touchscreen sysfs:" >> $LOG_FILE
ls -la /sys/class/touchscreen/ >> $LOG_FILE
echo "" >> $LOG_FILE

echo "I2C devices:" >> $LOG_FILE
cat /sys/class/i2c-dev/*/name >> $LOG_FILE 2>/dev/null
echo "" >> $LOG_FILE

echo "Kernel messages:" >> $LOG_FILE
dmesg | grep -i "touch\|input\|himax\|chipone" >> $LOG_FILE#!/system/bin/sh

LOG_FILE=/tmp/touch_debug.log

echo "=== Touch Debug Info ===" > $LOG_FILE
echo "Date: $(date)" >> $LOG_FILE
echo "" >> $LOG_FILE

echo "Input devices:" >> $LOG_FILE
ls -la /dev/input/ >> $LOG_FILE
echo "" >> $LOG_FILE

echo "Touchscreen sysfs:" >> $LOG_FILE
ls -la /sys/class/touchscreen/ >> $LOG_FILE
echo "" >> $LOG_FILE

echo "I2C devices:" >> $LOG_FILE
cat /sys/class/i2c-dev/*/name >> $LOG_FILE 2>/dev/null
echo "" >> $LOG_FILE

echo "Kernel messages:" >> $LOG_FILE
dmesg | grep -i "touch\|input\|himax\|chipone" >> $LOG_FILE
