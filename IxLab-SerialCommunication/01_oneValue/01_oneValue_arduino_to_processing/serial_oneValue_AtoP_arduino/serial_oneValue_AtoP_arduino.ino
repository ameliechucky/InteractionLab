// IMA NYU Shanghai
// Interaction Lab
// This code sends one value from Arduino to Processing 


void setup() {
  Serial.begin(9600);
}


void loop() {
  int sensorValue = analogRead(A0) / 4;
  Serial.write(sensorValue);

  // too fast communication might cause some latency in Processing
  // this delay resolves the issue.
  delay(10);
}
