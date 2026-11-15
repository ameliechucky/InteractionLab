/*interactionLab Fall 2026!
¡¡¡ stop p5.js before sending this code to arduino !!!
*/
unsigned long lastRead = 0;
unsigned long period = 100;

int buttonVal = 0;
int p_buttonVal = 0;

void setup() {
  //set the baudrate to 57600
  Serial.begin(57600);
  //INPUT_PULLUP will use resistors in your arduino
  //but they are connected differently
  //so when the buttos is triggered it will show 0
  //and when it's not, it will show 1
  pinMode(2, INPUT_PULLUP);
}

void loop() {
  //read values every 100 milliseconds only
  unsigned long now = millis();
  if (now - lastRead > period) {
    lastRead = now;
    buttonVal = digitalRead(2);
    //send values only when there is a change
    if (p_buttonVal != buttonVal) {
      Serial.println(buttonVal);
    }
  }

  p_buttonVal = buttonVal;
}
