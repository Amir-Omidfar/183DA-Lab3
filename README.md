# 183DA-Lab3
# Lab 3

Lab overview:
***Objectives:
computational infrastructure necessary to command a simple 2 wheeled robot
Derive a mathematical inout-output model of the system dynamics 
Build on the model to sensor and actutor responses
Use this model in computational environment to to build a state estmiator 


***Deliverables:
Team : Git repository of your code along with all the docs 
  Clarity and compeleteness of your content
Individual : Submit a questionnaire indicatinf the contributions of each team member to the team results.

***System model:
two wheel robot with wheel radius : r=20mm
separated by distance w = 85 mm
tail  l = 70 mm
Measurements are not exact
Each wheel controlled separatedly by continous rotation servo and PWM to control angular velocity 
laser range sensors 
IMU: extrinsic positon sensing
***
# The output of the sensors will be a function of the positional state of the robot within its environment.
# Robot will be driven in a rect eniv consisting 4 walls bounding an open space. 


***Mathematical Setup:
State of Robot: 3DOF pose of the robot in 2D space (may need to include velocity)
control input --> PWM  (total of two input variables)
Sensors output --> distance from the wall in front and the wall to the side of the robot
IMU --> angle of robot with respect to magnetic north and angular rate measurements
(3 or 4 outputs with 2 inputs)
# Derive the appropriate sensor and actuator models and systems dynamics 
  Include the noise terms as well
  

# State Estimation:
***Any state estmiate algorithm can be used to calculate the state estmate from time series of PWM and senors meaurements --> EKF,UKF, particle filter and ...
Explain your algorithm and the reason you picked it 
Identify your Algorithm parameters and explain why you picked them 



# Experimentation:
***plan and test in simulation 
Run the test on real life robot
Use  https://git.uclalemur.com/mehtank/paperbot/ for control commands and comminucation scheme

