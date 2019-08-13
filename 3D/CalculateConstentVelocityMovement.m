function [glX,glY,glZ]= CalculateConstentVelocityMovement(elevation,azimuth,distent,time,refreshRate)

    
v = (distent)/time;
step = 1.0/refreshRate;
frameNum = refreshRate*time + 1;
glX=zeros(frameNum,1);
glY=zeros(frameNum,1);
glZ=zeros(frameNum,1);
elevation = elevation*0.017453292519943;
azimuth = azimuth*0.017453292519943;
for i=1:frameNum-1
   disi = i*step*v;
   glZ(i+1) = disi * sin(elevation);
   glY(i+1) = disi * cos(elevation) * sin(azimuth);
   glX(i+1) = disi * cos(elevation) * cos(azimuth);
end
 %% GeneratePredictedData(glX,glY,glZ);

