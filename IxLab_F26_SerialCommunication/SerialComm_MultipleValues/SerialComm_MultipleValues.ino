/*interactionLab Fall 2026!
¡¡¡ stop p5.js before sending this code to arduino !!!
*/
const int numSensors = 3;  //change this according to your project
int sensorValues[numSensors]; //array to store sensor values
int p_sensorValues[numSensors]; //array to store previous sensor values

unsigned long lastRead = 0;
unsigned long period = 100;

void setup() {
  Serial.begin(57600);
  //all values will be 0 at the beginning
  for (int i = 0; i < numSensors; i++) {
    sensorValues[i] = 0;
    p_sensorValues[i] = 0;
  }

  //change this according to your project
  pinMode(2, INPUT_PULLUP);
  pinMode(3, INPUT_PULLUP);
}

void loop() {
  //read the values every 100 milliseconds only
  unsigned long now = millis();
  if (now - lastRead > period) {
    lastRead = now;
    //change this according to your project
    sensorValues[0] = analogRead(A0);
    sensorValues[1] = digitalRead(2);
    sensorValues[2] = digitalRead(3);
  }
  //only print if at least one sensor value changed
  if (checkSensors()) {
    for (int i = 0; i < numSensors; i++) {
      Serial.print(sensorValues[i]);
      if (i != (numSensors - 1)) {
        Serial.print(","); //add a comma to separate them
      } else {
        Serial.println();  // add linefeed after sending the last sensor value
      }
    }
  }
  //record the last reading from every sensor
  for (int i = 0; i < numSensors; i++) {
    p_sensorValues[i] = sensorValues[i];
  }
}
//this function will check if any sensor value changed
bool checkSensors() {
  for (int i = 0; i < numSensors; i++) {
    if (sensorValues[i] != p_sensorValues[i]) {
      return true;
      break;
    } else if (i == numSensors - 1) {
      return false;
    }
  }
}
