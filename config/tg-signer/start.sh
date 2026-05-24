#!/bin/sh

TASKS=$(tg-signer list)

tg-signer webgui --host 0.0.0.0 --port 8080 &


tg-signer run sign100
