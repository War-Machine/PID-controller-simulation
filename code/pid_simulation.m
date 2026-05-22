clc;
clear;
close all;

num = [1];
den = [1 10 20];

system = tf(num, den);

Kp = 300;
Ki = 10;
Kd = 50;

controller = pid(Kp, Ki, Kd);

closed_loop = feedback(controller * system, 1);

step(closed_loop);

title('PID Controller Step Response');
grid on;
