
// -------------------------------------------------------------------------------------------------
// GRBL Sheild Control Library
// This library allows control of the GRBL shield without using the GRBL firmware
//
// A project of HackPittsburgh (http://www.hackpittsburgh.org)
//
// Copyright (c) 2011 Matt Stultz (matt@hackpittsburgh.org)
// Licensed under the MIT license: http://creativecommons.org/licenses/MIT
// -------------------------------------------------------------------------------------------------


// Define Step Pins
#define STEP_X_PIN 2
#define STEP_Y_PIN 3
#define STEP_Z_PIN 4

// Define Direction Pins
#define DIR_X_PIN 5
#define DIR_Y_PIN 6
#define DIR_Z_PIN 7

// Variable for setting the period between steps in miliseconds.
int SPEED;

// Initialize the GRBL shield
void InitGRBL ()
{
  pinMode(STEP_X_PIN, OUTPUT);
  pinMode(STEP_Y_PIN, OUTPUT);
  pinMode(STEP_Z_PIN, OUTPUT);
  
  pinMode(DIR_X_PIN, OUTPUT);
  pinMode(DIR_Y_PIN, OUTPUT);
  pinMode(DIR_Z_PIN, OUTPUT);
  
}

// Set Speed in steps/second
void SetSpeed (int StepsPerSecond)
{
  SPEED =  1000 / StepsPerSecond;
}

// Step the X axis
void Move_X (int steps)
{ 
 if (steps < 0)
 {
     digitalWrite(DIR_X_PIN, LOW);
     
     steps = steps * -1;
 }
 else
 {
   digitalWrite(DIR_X_PIN, HIGH);
 }
 
 for (x=0; x < steps; x++)
 {
   digitalWrite(STEP_X_PIN,HIGH);
   delay(20);
   digitalWrite(STEP_X_PIN,LOW);
   delay(SPEED - 20);
 }
}

// Step the Y axis
void Move_Y (int steps)
{ 
 if (steps < 0)
 {
     digitalWrite(DIR_Y_PIN, LOW);
     
     steps = steps * -1;
 }
 else
 {
   digitalWrite(DIR_Y_PIN, HIGH);
 }
 
 for (x=0; x < steps; x++)
 {
   digitalWrite(STEP_Y_PIN,HIGH);
   delay(20);
   digitalWrite(STEP_Y_PIN,LOW);
   delay(SPEED - 20);
 }
}

// Step the Z axis
void Move_Z (int steps)
{ 
 if (steps < 0)
 {
     digitalWrite(DIR_Z_PIN, LOW);
     
     steps = steps * -1;
 }
 else
 {
   digitalWrite(DIR_Z_PIN, HIGH);
 }
 
 for (x=0; x < steps; x++)
 {
   digitalWrite(STEP_Z_PIN,HIGH);
   delay(20);
   digitalWrite(STEP_Z_PIN,LOW);
   delay(SPEED - 20);
 }
}

// Move all Axes




// Find largest change
int MaxMoves(int X, int Y, int Z)
{
  return max(x,max(Y,Z));
  
//  if (X>Y)
//  {
//    if (X>Z)
//    {
//      return X;
//    }
//    else
//    {
//      return Z;
//    }
//  }
//  Else
//  {
//    if (Y>Z)
//    {
//      return Y;
//    }
//    else
//    {
//      return Z;
//    }
//  }
}
