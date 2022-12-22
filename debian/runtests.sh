# Runs the tests - called with xvfb-run to provide a display

set -e
# Start the notification daemon
gtk-launch notification-daemon.desktop
sleep 1

# Test with the requested versions of Python
for VER in $PYTHONS
do
    python$VER test_notify2.py
done
