ArduinoBounceCounter
====================

Simple sketch to show the number of times a switch bounces when operated

There seems to be a good selection of debounce libraries that eliminate the 
effect of switch bounce, but none that SHOW you if the arduino is receiving
bounce signals from a switch.

I wanted to see the amount of bounce comming from a rotary encoder, i was surprised!
You might be too.

This is written for the Arduino Due and uses pin 50, for Arduino Uno etc 
you will need to change the pin to an interrupt capable pin (2 or 3 I think)

see http://arduino.cc/en for more info

nick fox
