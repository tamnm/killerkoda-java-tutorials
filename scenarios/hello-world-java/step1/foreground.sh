echo waiting for environment setup to finish
while [ ! -f /tmp/env-setup-complete ]; do sleep 1; done
echo DONE