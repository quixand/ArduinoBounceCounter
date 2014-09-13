/* 
switchBounceCounter

This curcuit counts the number of bounces a switch generates without any software or hardware debounce
output via serial

*/

// pin input from bouncing switch
const int bouncingSwitch =  50;
// counter for number of bounces
long bounceCounter = 0;

void setup() {

	pinMode(bouncingSwitch, INPUT); 

	attachInterrupt(bouncingSwitch, incrementBounceCounter, CHANGE);

	Serial.begin(9600);  // output
	Serial.println("Begin switchBounceCounter");
}

void loop()
{
	Serial.println("bounce count: ");
	Serial.println(bounceCounter);
	delay(1000); // wait for PIR to stabalise
}

// bounce interrupt
void incrementBounceCounter(){
	bounceCounter++;
}