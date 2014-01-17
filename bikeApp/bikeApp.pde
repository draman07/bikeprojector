
// Main application

//Apps
BikeProximity bikeProximity;
SensorData sensorData;
compassClass compass;

void setup() {
  size(960,720);
  
  sensorData = new SensorData(this);
  bikeProximity = new BikeProximity(this, sensorData);
  compass = new compassClass(sensorData, 10,10, 30, 30);
  
}

void draw() {
  sensorData.update();                //update the sensors
  bikeProximity.display();            //show the bikeProximity
  compass.display();
  
}
