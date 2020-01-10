function [glX,glY,glZ]= CalculateConstentVelocityMovement(elevation,azimuth,distent,time,refreshRate)

    
v = (distent)/time;
step = 1.0/refreshRate;
frameNum = refreshRate*time + 1;
glX=zeros(frameNum,1);
glY=zeros(frameNum,1);
glZ=zeros(frameNum,1);
for i=1:frameNum-1
   disi = i*step*v;
   glY(i+1) = disi * sind(elevation);
   glZ(i+1) = disi * cosd(elevation) * cosd(azimuth);
   glX(i+1) = disi * cosd(elevation) * sind(azimuth);
end
 %% GeneratePredictedData(glX,glY,glZ);

