// The Nature of Code
import pbox2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

// Main application

//Apps
BikeProximity bikeProximity;
SensorData sensorData;
compassClass compass;
Shells shells;
bikeStackClass stackGame;

void setup() {
  size(960,720);
  
  sensorData = new SensorData(this);
  bikeProximity = new BikeProximity(this, sensorData);
  compass = new compassClass(sensorData, 150, 150, 300, 300);
  shells = new Shells(this, sensorData);
  stackGame = new bikeStackClass(this, sensorData);
}

void draw() {
  sensorData.update();                //update the sensors


  println( "STATE: " + sensorData.stateVal );
  
  switch( sensorData.stateVal ) {
  	case 1:
  		stackGame.display();
  		break;
  	case 2:
  		shells.display();
  		break;
  	case 3:
  		bikeProximity.display();
  		break;
  	case 4:
  		compass.display();
  		break;
  	default:
  		compass.display();
  		break;
  }

  shells.cleanup();
}
