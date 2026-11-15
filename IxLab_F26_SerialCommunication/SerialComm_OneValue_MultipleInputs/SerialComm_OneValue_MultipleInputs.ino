/*interactionLab Fall 2026!
¡¡¡ stop p5.js before sending this code to arduino !!!
*/
unsigned long lastRead = 0;
unsigned long period = 100;

//store values from inputs
int buttonVal1 = 0;
int buttonVal2 = 0;
//store the previous values
int p_buttonVal1 = 0;
int p_buttonVal2 = 0;
//send to p5
int send = 0;

void setup() {
  //set the baudrate to 57600
  Serial.begin(57600);
  //INPUT_PULLUP will use resistors in your arduino
  //but they are connected differently
  //so when the button is triggered it will show 0
  //and when it's not, it will show 1
  pinMode(2, INPUT_PULLUP);
  pinMode(3, INPUT_PULLUP);
}

void loop() {
  //read values every 100 milliseconds only
  unsigned long now = millis();
  if (now - lastRead > period) {
    lastRead = now;
    buttonVal1 = digitalRead(2);
    buttonVal2 = digitalRead(3);
    //send values only when there is a change
    if (p_buttonVal1 != buttonVal1 || p_buttonVal2 != buttonVal2) {
      if(buttonVal1 == 0){
        send = 1; //first button will send "1"
      } else if(buttonVal2 == 0){
        send = 2; //second button will send "2"
      }else{
        send = 0; //nothing pressed will send "0"
      }
      //send to p5
      Serial.println(send);
    }
  }
  //record the last value
  p_buttonVal1 = buttonVal1;
  p_buttonVal2 = buttonVal2;
}