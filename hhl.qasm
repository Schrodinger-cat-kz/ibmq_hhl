OPENQASM 2.0;
    
include "qelib1.inc";
    
    

qreg q[4];
    
creg c[4];
    
    

u3(pi,0,0) q[3];
    
barrier q[0],q[1],q[2],q[3];
    
h q[1];
    
h q[2];
    
barrier q[0],q[1],q[2],q[3];
   
cu3(-pi/2,-pi/2,pi/2) q[2],q[3];
    
u1(3*pi/4) q[2];
    
cx q[1],q[3];
    
barrier q[0],q[1],q[2],q[3];
    
swap q[1],q[2];
    
h q[2];
    
cu1(-pi/2) q[1],q[2];
    
h q[1];
    
barrier q[0],q[1],q[2],q[3];
    
swap q[1],q[2];
    
barrier q[0],q[1],q[2],q[3];
    
cu3(pi/16,0,0) q[1],q[0];
    
cu3(pi/32,0,0) q[2],q[0];
    
barrier q[0],q[1],q[2],q[3];
    
swap q[1],q[2];
    
barrier q[0],q[1],q[2],q[3];
    
h q[1];
    
cu1(pi/2) q[1],q[2];
    
h q[2];
    
swap q[1],q[2];
    
barrier q[0],q[1],q[2],q[3];
    
cx q[1],q[3];
    
u1(-3*pi/4) q[2];
    
cu3(-pi/2,pi/2,-pi/2) q[2],q[3];
    
barrier q[0],q[1],q[2],q[3];
    
h q[1];
    
h q[2];
    
barrier q[0],q[1],q[2],q[3];
    
measure q[0] -> c[0];