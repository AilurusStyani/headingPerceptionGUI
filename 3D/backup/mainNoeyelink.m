function varargout = main(varargin)
% MAIN MATLAB code for main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before main_OpeningFcn gets called.  An
%      unrecognized property subjectName or invalid value makes property application
%      stop.  All inputs are passed to main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help main

% Last Modified by GUIDE v2.5 28-Mar-2019 14:59:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @main_OpeningFcn, ...
                   'gui_OutputFcn',  @main_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before main is made visible.
function main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to main (see VARARGIN)

% Choose default command line output for main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function subjectName_Callback(hObject, eventdata, handles)
% hObject    handle to subjectName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of subjectName as text
%        str2double(get(hObject,'String')) returns contents of subjectName as a double


% --- Executes during object creation, after setting all properties.
function subjectName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to subjectName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function repeatNum_Callback(hObject, eventdata, handles)
% hObject    handle to repeatNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of repeatNum as text
%        str2double(get(hObject,'String')) returns contents of repeatNum as a double


% --- Executes during object creation, after setting all properties.
function repeatNum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to repeatNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function coherence_Callback(hObject, eventdata, handles)
% hObject    handle to coherence (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of coherence as text
%        str2double(get(hObject,'String')) returns contents of coherence as a double


% --- Executes during object creation, after setting all properties.
function coherence_CreateFcn(hObject, eventdata, handles)
% hObject    handle to coherence (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function velocity_Callback(hObject, eventdata, handles)
% hObject    handle to velocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of velocity as text
%        str2double(get(hObject,'String')) returns contents of velocity as a double


% --- Executes during object creation, after setting all properties.
function velocity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to velocity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function moveTime_Callback(hObject, eventdata, handles)
% hObject    handle to moveTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of moveTime as text
%        str2double(get(hObject,'String')) returns contents of moveTime as a double


% --- Executes during object creation, after setting all properties.
function moveTime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to moveTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function choicePeriod_Callback(hObject, eventdata, handles)
% hObject    handle to moveTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of moveTime as text
%        str2double(get(hObject,'String')) returns contents of moveTime as a double


% --- Executes during object creation, after setting all properties.
function choicePeriod_CreateFcn(hObject, eventdata, handles)
% hObject    handle to moveTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function pupilAdaptionTime_Callback(hObject, eventdata, handles)
% hObject    handle to pupilAdaptionTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pupilAdaptionTime as text
%        str2double(get(hObject,'String')) returns contents of pupilAdaptionTime as a double


% --- Executes during object creation, after setting all properties.
function pupilAdaptionTime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pupilAdaptionTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function degree_Callback(hObject, eventdata, handles)
% hObject    handle to degree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of degree as text
%        str2double(get(hObject,'String')) returns contents of degree as a double


% --- Executes during object creation, after setting all properties.
function degree_CreateFcn(hObject, eventdata, handles)
% hObject    handle to degree (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fixationThreshold_Callback(hObject, eventdata, handles)
% hObject    handle to fixationThreshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fixationThreshold as text
%        str2double(get(hObject,'String')) returns contents of fixationThreshold as a double


% --- Executes during object creation, after setting all properties.
function fixationThreshold_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fixationThreshold (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in start.
function start_Callback(hObject, eventdata, handles)
% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% code by BYC for Shanghai Senior High School, last edited in March 2019
clear STARDATA
global MOVE
global SCREEN

clc
% datafilename = 'eyedatas';
subjectName = get(handles.subjectName,'String');
subjectName = strrep(subjectName,' ',''); % delete blank space

if isempty(subjectName)
    subjectName = 'test';
end

dataFileName = ['saccadicChoice_eye_' subjectName datestr(now,'yymmddHHMM')];
% MOVE.heading= [0 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180];
MOVE.heading= str2num(get(handles.degree,'String')) + 90; % define heading degree: 0 to 180 for left to right. 90 is straight ahead

%MOVE.headingPC = [0 180]; % positive control
%MOVE.repeatPC = 7; % repeat number for each positive control

MOVE.time = str2double(get(handles.moveTime,'String')); % currently, the real time during stimulus period was set time * 4/5
MOVE.velocity = str2double(get(handles.velocity,'String'));%% m/s
MOVE.repeatNum = str2double(get(handles.repeatNum,'String'));%% trial repeat nums
MOVE.coherence = str2double(get(handles.coherence,'String'));
pupilAdaptionTime = str2double(get(handles.pupilAdaptionTime,'String'));
feedback = get(handles.feedback,'Value');

% for break options
trialBreak = get(handles.trialBreak,'Value');
checkWindowDegree = str2double(get(handles.checkWindow,'String'));

% for calibration options
calibration = get(handles.calibration,'Value');
calibrationInterval = str2double(get(handles.calibrationInterval,'String')) * 60; % minutes to seconds

% for eye-choice version, define the related threshold
eyeChoiceWindowSize = 1;%% eyeWindow set + - 2°
eyeChoiceTime = 0.2; %% chosen when fix on 0.2s = 200ms
choicePeriod = str2double(get(handles.choicePeriod,'String')); % the duration for chosen, unit second

fixationThreshold = str2double(get(handles.fixationThreshold,'String')); % how long to pass the fixation check? unit s
SCREEN.width = 37.5; % cm
SCREEN.height = 30.7; % cm
SCREEN.distance = 60; % cm


% make folder for saving files
curdir = pwd;
dataPath = get(handles.dataPath,'String');
if isempty(dataPath)
    saveDir = [curdir '\data\'];
else
    saveDir = dataPath;
end
mkdir(saveDir);

%%% add by ly 20180905;

headingN = length(MOVE.heading);
timeN = length(MOVE.time);
MOVE.group = zeros(2,headingN*timeN);
trialN = headingN * timeN * MOVE.repeatNum;
k=1;
for i =1:  headingN
    for j = 1:timeN
        MOVE.group(1,k) =MOVE.heading(i);
        MOVE.group(2,k) =MOVE.time(j);
        k =k+1;
    end
end

groupInit = repmat(MOVE.group,1,MOVE.repeatNum);

% %% reverse for different repeat numbers for each condition
% % MOVE.groupPC = zeros(2,length(MOVE.headingPC)*timeN);
% % k=1;
% % for i = 1:length(MOVE.headingPC)
% %     for j = 1:timeN
% %         MOVE.groupPC(1,k) =MOVE.headingPC(i);
% %         MOVE.groupPC(2,k) =MOVE.time(j);
% %         k=k+1;
% %     end
% % end
% % groupInitPC = repmat(MOVE.groupPC,1,MOVE.repeatPC);
% % 
% % groupInit = [groupInit,groupInitPC];

order = randperm(trialN);
%%% add by ly 20180905

MOVE.eyeSeparation = 0;
MOVE.camera2screenDist = SCREEN.distance;

% GL data structure needed for all OpenGL demos:
global GL;
% Is the script running in OpenGL Psychtoolbox? Abort, if not.
AssertOpenGL;
global STARFIELD;
% the size of the star field
STARFIELD.dimensionX = 75;
STARFIELD.dimensionY = 75;
STARFIELD.dimensionZ = 80;
% the size of the star
STARFIELD.StarSize = 0.15;
% the density of the star field
STARFIELD.Density = 0.01;
% the coherence of the star field
STARFIELD.Probability = MOVE.coherence;
% set star's life time
STARFIELD.lifeTime = str2double(get(handles.lifeTime,'string'));

global STARDATA; %% save the coordinates of the stars

% Restrict KbCheck to checking of ESCAPE key:
KbName('UnifyKeynames');
leftKey=KbName('LeftArrow');
rightKey=KbName('RightArrow');
upKey = KbName('UpArrow');
escape = KbName('ESCAPE');
cKey = KbName('c');

%%% add by ly 20180905
tempName = 'TEMP1'; % need temp name because Eyelink only know hows to save names with 8 chars or less. Will change name using matlab's moveFile later.
dummymode=0;
%%% add by ly 20180905

% Find the screen to use for display:
screenId=max(Screen('Screens'));

% Setup Psychtoolbox for OpenGL 3D rendering support and initialize the
% mogl OpenGL for Matlab wrapper:
InitializeMatlabOpenGL;

PsychImaging('PrepareConfiguration');
% Screen('Preference', 'SkipSyncTests', 1); % if something wrong, try this line

% Open a double-buffered full-screen window on the main displays screen.
[win, winRect] = PsychImaging('OpenWindow', screenId, 0, [], [], [], 0, 0);
screenCentre= [winRect(3) winRect(4)]/2;
SCREEN.widthPixel = winRect(3);
SCREEN.heightPixel = winRect(4);

% Get current monitor refreshing rate
refreshRate=Screen('NominalFrameRate', screenId);

pixel2deg = MOVE.camera2screenDist*tand(1)*winRect(3)/SCREEN.width;
targetSize = floor(0.25*pixel2deg);
tarDistance = floor(3*pixel2deg); % this is for vertical, if for horizon: floor(7*pixcel2deg);
tarShift = floor(0.3*pixel2deg);

eyeChoiceWindowSizePixel = floor(eyeChoiceWindowSize*pixel2deg);

if get(handles.choiceLeftRight,'Value')
    % % for targets in horizon
    tar1Location = [screenCentre(1)-tarDistance screenCentre(2)];
    tar2Location = [screenCentre(1)+tarDistance screenCentre(2)];
end

if get(handles.choiceTopDown,'Value')
    % for targets in vertical
    tar1Location = [screenCentre(1)-tarShift screenCentre(2)-tarDistance];
    tar2Location = [screenCentre(1)+tarShift screenCentre(2)+tarDistance];
end


%%%% add by ly 20180905

% el=EyelinkInitDefaults(win);
% 
% if ~EyelinkInit(dummymode)
%     fprintf('Eyelink Init aborted.\n');
%     cleanup;  % cleanup function
%     Eyelink('ShutDown');
%     Screen('CloseAll');
%     return
% end
% 
% i = Eyelink('Openfile', tempName);
% if i~=0
%     fprintf('Cannot create EDF file ''%s'' ', dataFileName);
%     cleanup;
%     Eyelink('ShutDown');
%     Screen('CloseAll');
%     return
% end
% 
% %   SET UP TRACKER CONFIGURATION
% Eyelink('command', 'calibration_type = HV9');
% %	set parser (conservative saccade thresholds)
% Eyelink('command', 'saccade_velocity_threshold = 35');
% Eyelink('command', 'saccade_acceleration_threshold = 9500');
% Eyelink('command', 'link_sample_data  = LEFT,RIGHT,GAZE,AREA');
% Eyelink('command', 'online_dcorr_refposn = %1d, %1d', screenCentre(1), screenCentre(2));
% Eyelink('command', 'online_dcorr_maxangle = %1d', 30.0);
% % you must call this function to apply the changes from above
% EyelinkUpdateDefaults(el);
% 
% % Calibrate the eye tracker
% EyelinkDoTrackerSetup(el);
% 
% % do a final check of calibration using driftcorrection
% EyelinkDoDriftCorrection(el);

% set the marks for fixation and choice targets
fixationPosition = [SCREEN.widthPixel/2-6 SCREEN.heightPixel/2-6 SCREEN.widthPixel/2+6 SCREEN.heightPixel/2+6];
tar1Position = [tar1Location(1)-targetSize tar1Location(2)-targetSize tar1Location(1)+targetSize tar1Location(2)+targetSize];
tar2Position = [tar2Location(1)-targetSize tar2Location(2)-targetSize tar2Location(1)+targetSize tar2Location(2)+targetSize];

head=zeros(1,trialN); %%%每个TRIAL的方位角
choice = zeros(1,trialN);%%%每个TRIAL的选择的方位角

%%% add by ly 20180905
time=zeros(1,trialN);
distance= zeros(1,trialN);
frameStartTime = zeros(1,trialN);
frameEndTime = zeros(1,trialN);
trialEndTime = zeros(1,trialN);

%%% add by ly 20180905

clipNear = 10;
clipFar = 90;

screenH = 58.29;
screenW = 58.29;

top = (clipNear / MOVE.camera2screenDist) * (screenH / 2.0);
bottom = (clipNear / MOVE.camera2screenDist) * (-screenH / 2.0);
right_lefteye = (clipNear / MOVE.camera2screenDist) * (screenW / 2.0 + MOVE.eyeSeparation/2.0);
left_lefteye = (clipNear / MOVE.camera2screenDist) * (-screenW / 2.0 + MOVE.eyeSeparation/2.0);

right_righteye = (clipNear / MOVE.camera2screenDist) * (screenW / 2.0 - MOVE.eyeSeparation/2.0);
left_righteye = (clipNear / MOVE.camera2screenDist) * (-screenW / 2.0 - MOVE.eyeSeparation/2.0);

Screen('BeginOpenGL', win);
% Set viewport properly:
glViewport(0, 0, RectWidth(winRect), RectHeight(winRect));
glColorMask(GL.TRUE, GL.TRUE, GL.TRUE, GL.TRUE);

Screen('EndOpenGL', win);
WaitSecs(1);

% Eyelink('StartRecording');
% eye_used = Eyelink('EyeAvailable'); % get eye that's tracked
% if eye_used == el.BINOCULAR % if both eyes are tracked
%     eye_used = el.LEFT_EYE; % use left eye
% end
% Eyelink('message', 'SYNCTIME');	 	 % zero-plot time for EDFVIEW
% error=Eyelink('checkrecording'); 		% Check recording status */
% if(error~=0)
%     fprintf('Eyelink checked wrong status.\n');
%     cleanup;  % cleanup function
%     Eyelink('ShutDown');
%     Screen('CloseAll');
% end

calibrateCkeck = tic;

pupilAdapt = tic;

while toc(pupilAdapt) <= pupilAdaptionTime
    modifyStarField();
    Screen('BeginOpenGL', win);
    glColorMask(GL.TRUE, GL.TRUE, GL.FALSE, GL.FALSE);
    glMatrixMode(GL.PROJECTION);
    glLoadIdentity;

    glFrustum( left_righteye,right_righteye, bottom, top, clipNear, clipFar);

    % Setup modelview matrix: This defines the position, orientation and
    % looking direction of the virtual camera:
    glMatrixMode(GL.MODELVIEW);
    glLoadIdentity;
    gluLookAt(MOVE.eyeSeparation/2.0+1, 0.0-1, MOVE.camera2screenDist-1,MOVE.eyeSeparation/2.0+1,......
        0.0-1, MOVE.camera2screenDist-1-1.0,0.0,1.0,0.0);
    % Set background clear color to 'black' (R,G,B,A)=(0,0,0,0):
    glClearColor(0,0,0,0);
    %%% draw the fixation point
    glColor3f(1.0,1.0,0.0);
    Screen('EndOpenGL', win);
    Screen('FillOval', win, [0 255 255 255], fixationPosition);
    DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
    % Show'em:
    Screen('Flip', win, 0, 0);
    WaitSecs(STARFIELD.lifeTime/refreshRate);
end

i=1;
while i <= trialN

    % make calibrate and validate every several minutes
    if calibration
        if toc(calibrateCkeck) >= calibrationInterval
            EyelinkDoTrackerSetup(el);
        end
    end
    
    %%% add by ly 20180905
    orderi = order(i);
    groupi =groupInit(:,orderi);
    headi = groupi(1);
    disp(['Moving direction ' num2str(headi)]);
    timei = groupi(2);
    distancei = MOVE.velocity * timei;
    head(i)=headi;
    time(i)=timei;
    distance(i)= distancei;
    %%% add by ly 20180905
    %%%%[Lateral,Surge,Heave]= CalculateConstentVelocityMovement(0,headi,0.13,2.0);
    [Lateral,Surge,Heave]= CalculateConstentVelocityMovement(0,headi,distancei,timei,refreshRate);

%     Eyelink('message', ['fixation onset ' num2str(i)]);
%     fixation_check(screenCentre,eyeChoiceWindowSizePixel,fixationThreshold,eye_used,escape,win,fixationPosition,cKey);
    
    [ ~, ~, keyCode ] = KbCheck;
    if keyCode(escape) % long press escape to break the block
        break;
    end
    if keyCode(cKey) % press c to calibrate
        EyelinkDoTrackerSetup(el);
    end
        
    
%     Eyelink('message', ['fixation done ' num2str(i)]);
    Screen('BlendFunction', win, GL_ONE, GL_ZERO);
    framesNum = length(Heave);
    
    breakFlag = 0; % 0 continue, 1 trial break
    tempTest = tic;
    for frames=1:framesNum
        Heavei = Heave(frames)*100;
        Surgei = Surge(frames)*100;
        Laterali = Lateral(frames)*100;
        if(mod(frames,STARFIELD.lifeTime)==0)
            modifyStarField();
        end
        

        Screen('BeginOpenGL', win);
% % %         glColorMask(GL.FALSE, GL.TRUE, GL.FALSE, GL.FALSE);
        glColorMask(GL.TRUE, GL.TRUE, GL.FALSE, GL.FALSE);
        glMatrixMode(GL.PROJECTION);
        glLoadIdentity;
        
        glFrustum( left_righteye,right_righteye, bottom, top, clipNear, clipFar);
        
        % Setup modelview matrix: This defines the position, orientation and
        % looking direction of the virtual camera:
        glMatrixMode(GL.MODELVIEW);
        glLoadIdentity;
        gluLookAt(MOVE.eyeSeparation/2.0+Laterali, 0.0-Heavei, MOVE.camera2screenDist-Surgei,MOVE.eyeSeparation/2.0+Laterali,......
            0.0-Heavei, MOVE.camera2screenDist-Surgei-1.0,0.0,1.0,0.0);
        % Set background clear color to 'black' (R,G,B,A)=(0,0,0,0):
        glClearColor(0,0,0,0);
        %%% draw the fixation point
        glColor3f(1.0,1.0,0.0);
        Screen('EndOpenGL', win);
        Screen('FillOval', win, [0 255 255 255], fixationPosition);
        DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
        % Show'em:
        Screen('Flip', win, 0, 0);
        if(frames ==1)
%             Eyelink('message', ['stimulus onset ' num2str(i)]);
        end
        
%         if trialBreak
%             if Eyelink( 'NewFloatSampleAvailable')>0
%                 % get the sample in the form of an event structure
%                 evt = Eyelink( 'NewestFloatSample');
%                 if eye_used ~= -1 % do we know which eye to use yet?
%                     px =evt.gx(eye_used+1); % +1 as we're accessing MATLAB array
%                     py = evt.gy(eye_used+1);
%                     frameStartTime(i) = evt.time;
%                 end
%                 %                         eyePoint = [px-5 py-5 px+5 py+5];
%             end
%             breakFlag = breakcheck(px,py,screenCentre,checkWindowDegree*pixcel2deg);
%         end
        
        if(frames ==framesNum)
%             if Eyelink( 'NewFloatSampleAvailable')>0
%                 % get the sample in the form of an event structure
%                 evt = Eyelink( 'NewestFloatSample');
%                 if eye_used ~= -1 % do we know which eye to use yet?
%                     %                                                     px =evt.gx(eye_used+1); % +1 as we're accessing MATLAB array
%                     %                                                     py = evt.gy(eye_used+1);
%                     frameEndTime(i) = evt.time;
%                 end
%                 %                         eyePoint = [px-5 py-5 px+5 py+5];
%             end
%             Eyelink('message', ['stimulus term ' num2str(i)]);
        end
        
        if breakFlag
            break
        end
    end
    toc(tempTest)
    % check for break
    if breakFlag
        order(i) = [];
        order = cat(2,order,orderi);
%         Eyelink('message',['trial break ' num2str(i)]);
        continue
    end
    
    %% choice by eyes (left: 1    right: 2    abort: 0)
    %% you must choice in 2 seconds
    choice(i) = 0;
%     Eyelink('message', ['start choice ' num2str(i)]);

    
    for l= 1: (choicePeriod*refreshRate)
        
        if(mod(l,STARFIELD.lifeTime)==0)
            modifyStarField();
        end
        
        DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
%         glColor3f(0,0,0);
        Screen('FillOval', win, [255 0 0 255], tar1Position);
        Screen('FillOval', win, [255 0 0 255], tar2Position);
        Screen('Flip', win, 0, 0);
        
        if(choice(i) > 0)
            break;
        end
%         if Eyelink( 'NewFloatSampleAvailable')>0
%             % get the sample in the form of an event structure
%             evt = Eyelink( 'NewestFloatSample');
%             if eye_used ~= -1 % do we know which eye to use yet?
%                 px =evt.gx(eye_used+1); % +1 as we're accessing MATLAB array
%                 py = evt.gy(eye_used+1);
%             end
%             %                         eyePoint = [px-5 py-5 px+5 py+5];
%         end
        
        % random seed for feedback text
        randomSeed = 0;
        
%         if ((px<(tar1Location(1)+eyeChoiceWindowSizePixel))&&(px>(tar1Location(1)-eyeChoiceWindowSizePixel))&&(py<(tar1Location(2)+eyeChoiceWindowSizePixel))&&(py>(tar1Location(2)-eyeChoiceWindowSizePixel)))
%             fixLeft = tic;
%             while toc(fixLeft) < eyeChoiceTime
%                 if Eyelink( 'NewFloatSampleAvailable')>0
%                     % get the sample in the form of an event structure
%                     evt = Eyelink( 'NewestFloatSample');
%                     if eye_used ~= -1 % do we know which eye to use yet?
%                         px =evt.gx(eye_used+1); % +1 as we're accessing MATLAB array
%                         py = evt.gy(eye_used+1);
%                     end
%                 end
%                 Screen('FillOval', win, [255 0 0 255], tar1Position);
%                 Screen('FillOval', win, [255 0 0 255], tar2Position);
%                 modifyStarField();
%                 DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
% %                 Screen('FillOval', win, [255 255 0 255], [px-50 py-50 px+50 py+50]);
%                  Screen('Flip', win);
%                  
%                 if ((px>(tar1Location(1)+eyeChoiceWindowSizePixel))||(px<(tar1Location(1)-eyeChoiceWindowSizePixel))||(py>(tar1Location(2)+eyeChoiceWindowSizePixel))||(py<(tar1Location(2)-eyeChoiceWindowSizePixel)))
%                     choice(i) = 0; 
%                     break;
%                 else
%                     choice(i) = 1;
%                     Eyelink('message', ['decision made ' num2str(i) ' as ' num2str(choice(i))]);
%                     while choicePeriod - toc(fixLeft)>0
%                         if feedback == 1
%                             randomSeed = drawChoiceInfo(win,choice(i),headi,tar1Position,tar2Position,screenCentre,randomSeed);
%                         else
%                             Screen('FillOval', win, [255 255 0 255], tar1Position);
%                             Screen('FillOval', win, [255 0 0 255], tar2Position);
%                         end
%                     modifyStarField();
%                     DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
%                     Screen('Flip', win);
%                     end
%                     break
%                 end
%             end
%         elseif ((px<(tar2Location(1)+eyeChoiceWindowSizePixel))&&(px>(tar2Location(1)-eyeChoiceWindowSizePixel))&&(py<(tar2Location(2)+eyeChoiceWindowSizePixel))&&(py>(tar2Location(2)-eyeChoiceWindowSizePixel)))
%             fixRight = tic;
%             if choice(i) > 0
%                 break
%             end
%             while toc(fixRight) < eyeChoiceTime
%                 if Eyelink( 'NewFloatSampleAvailable')>0
%                     % get the sample in the form of an event structure
%                     evt = Eyelink( 'NewestFloatSample');
%                     if eye_used ~= -1 % do we know which eye to use yet?
%                         px =evt.gx(eye_used+1); % +1 as we're accessing MATLAB array
%                         py = evt.gy(eye_used+1);
%                     end
%                 end
%                 Screen('FillOval', win, [255 0 0 255], tar1Position);
%                 Screen('FillOval', win, [255 0 0 255], tar2Position);
%                 modifyStarField();
%                 DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
% %                 Screen('FillOval', win, [255 255 0 255], [px-50 py-50 px+50 py+50]);
%                 Screen('Flip', win);
%                 if ((px>tar2Location(1)+eyeChoiceWindowSizePixel)||(px<tar2Location(1)-eyeChoiceWindowSizePixel)||(py>tar2Location(2)+eyeChoiceWindowSizePixel)||(py<tar2Location(2)-eyeChoiceWindowSizePixel))
%                     choice(i) = 0;
%                     break;
%                 else
%                     choice(i) = 2;
%                     Eyelink('message', ['decision made ' num2str(i) ' as ' num2str(choice(i))]);
%                     while choicePeriod - toc(fixRight) > 0
%                         if feedback == 1
%                             randomSeed = drawChoiceInfo(win,choice(i),headi,tar1Position,tar2Position,screenCentre,randomSeed);
%                         else
%                             Screen('FillOval', win, [255 0 0 255], tar1Position);
%                             Screen('FillOval', win, [255 255 0 255], tar2Position);
%                         end 
%                         modifyStarField();
%                         DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
%                         Screen('Flip', win);
%                     end
%                     break
%                 end
%             end
%         end  
    end
    
    if choice(i)~=0
%         Eyelink('message', ['trial end ' num2str(i)]);
        i=i+1;
    else
        order(i) = [];
        order = cat(2,order,orderi);
%         Eyelink('message',['trial break ' num2str(i)]);
    end
        
%     if Eyelink( 'NewFloatSampleAvailable')>0
%         % get the sample in the form of an event structure
%         evt = Eyelink( 'NewestFloatSample');
%         if eye_used ~= -1 % do we know which eye to use yet?
%             trialEndTime(i) = evt.time;
%         end
%     end
%     [ ~, ~, keyCode ] = KbCheck;
%     if keyCode(escape)
%         break;
%     end
%     if keyCode(cKey) % press c to calibrate
%         EyelinkDoTrackerSetup(el);
%     end
end

Screen('Flip', win);

% Eyelink('StopRecording');
% Eyelink('CloseFile');
% try
%     fprintf('Receiving data file ''%s''\n',dataFileName);
%     status=Eyelink('ReceiveFile',tempName ,saveDir,1);
%     if status > 0
%         fprintf('ReceiveFile status %d\n ', status);
%     end
%     if exist(dataFileName, 'file')==2
%         fprintf('Data file ''%s'' can be found in '' %s\n',dataFileName, pwd);
%     end
% catch
%     fprintf('Problem receiving data file ''%s''\n',dataFileName);
% end
% 
% cd (saveDir);
% save([saveDir '\' dataFileName]);
% movefile([saveDir,'\',tempName,'.edf'],[saveDir,'\',dataFileName,'.edf']);

%% save the real and the choiced heading
save([saveDir dataFileName],'head','time','distance','choice','frameStartTime','frameEndTime','trialEndTime');
%close the eye tracker.
% Eyelink('ShutDown');
Screen('CloseAll');
cd(curdir);



% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over start.
function start_ButtonDownFcn(hObject, eventdata, handles)


            

% hObject    handle to start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function dataPath_Callback(hObject, eventdata, handles)
% hObject    handle to dataPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dataPath as text
%        str2double(get(hObject,'String')) returns contents of dataPath as a double


% --- Executes during object creation, after setting all properties.
function dataPath_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dataPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in feedback.
function feedback_Callback(hObject, eventdata, handles)
% hObject    handle to feedback (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of feedback



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function text11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in trialBreak.
function trialBreak_Callback(hObject, eventdata, handles)
% hObject    handle to trialBreak (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of trialBreak



function checkWindow_Callback(hObject, eventdata, handles)
% hObject    handle to checkWindow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of checkWindow as text
%        str2double(get(hObject,'String')) returns contents of checkWindow as a double


% --- Executes during object creation, after setting all properties.
function checkWindow_CreateFcn(hObject, eventdata, handles)
% hObject    handle to checkWindow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lifeTime_Callback(hObject, eventdata, handles)
% hObject    handle to lifeTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lifeTime as text
%        str2double(get(hObject,'String')) returns contents of lifeTime as a double


% --- Executes during object creation, after setting all properties.
function lifeTime_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lifeTime (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calibration.
function calibration_Callback(hObject, eventdata, handles)
% hObject    handle to calibration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of calibration



function calibrationInterval_Callback(hObject, eventdata, handles)
% hObject    handle to calibrationInterval (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of calibrationInterval as text
%        str2double(get(hObject,'String')) returns contents of calibrationInterval as a double


% --- Executes during object creation, after setting all properties.
function calibrationInterval_CreateFcn(hObject, eventdata, handles)
% hObject    handle to calibrationInterval (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
