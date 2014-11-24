export DISPLAY=:99
Xvfb :99 -shmem -extension RANDR -screen 0 1366x768x16 &
x11vnc -passwd secret -display :99 -N -forever &
DISPLAY=:99 xterm &
DISPLAY=:99 openbox &
# selenium must be started by a non-root user otherwise chrome can't start
su - seleuser -c "start-selenium"
