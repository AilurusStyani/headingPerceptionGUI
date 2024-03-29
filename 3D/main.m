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

% Last Modified by GUIDE v2.5 19-Dec-2019 17:50:01

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

logFile = dir('log.mat');
if ~isempty(logFile)
    load(logFile(1).name);
    if exist('TRIALINFO','VAR')
        set(handles.degree,'Striing',num2str(TRIALINFO.heading));
        set(handles.moveTime,'String',num2str(TRIALINFO.time));
        set(handles.velocity,'String',num2str(TRIALINFO.velocity));
        set(handles.repeatNum,'String',num2str(TRIALINFO.repeatNum));
        set(handles.coherence,'String',num2str(TRIALINFO.coherence));
        set(handles.pupilAdaptionTime,'String',num2str(TRIALINFO.pupilAdaptionTime));
        set(handles.feedback,'Value',TRIALINFO.feedback);
        set(handles.choicePeriod,'String',num2str(TRIALINFO.choicePeriod));
        
        set(handles.lifeTime,'String',num2str(TRIALINFO.lifeTime));
        set(handles.deviation,'String',num2str(TRIALINFO.deviation));
        set(handles.choiceTopDown,'Value',TRIALINFO.choiceTopDown);
        set(handles.choiceLeftRight,'Value',TRIALINFO.choiceLeftRight);
        set(handles.dataPath,'String',num2str(TRIALINFO.dataPath));
        
        set(handles.eyelinkRecording,'Value',TRIALINFO.eyelinkRecording);
        
        if TRIALINFO.eyelinkRecording
            if TRIALINFO.eyelinkRecording
                set(handles.trialBreak,'Value',TRIALINFO.trialBreak);
                set(handles.checkWindow,'String',num2str(TRIALINFO.checkWindowDegree));
                set(handles.calibration,'Value',TRIALINFO.calibration);
                set(handles.calibrationInterval,'String',num2str(TRIALINFO.calibrationInterval));
                
                set(handles.fixationWindow,'String',num2str(TRIALINFO.fixationWindow));
                set(handles.fixationThreshold,'String',num2str(TRIALINFO.fixationThreshold));
            end
        end
    end
end

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

clear STARDATA
clear STARFIELD

global TRIALINFO;
global CAMERA;
global STARFIELD;
global STARDATA;
global SCREEN;
global FRUSTUM;

logFile = dir('log.mat');
if isempty(logFile)
    errordlg('Please input your screen parameters first.','Error','modal');
    return
else
    load(logFile.name);
end

subjectName = get(handles.subjectName,'String');
subjectName = strrep(subjectName,' ',''); % delete blank space

if isempty(subjectName)
    subjectName = 'test';
end

dataFileName = ['saccadicChoice_eye_' subjectName datestr(now,'yymmddHHMM')];
TRIALINFO.heading= str2num(get(handles.degree,'String')); % right: positive; left: negative

TRIALINFO.time = str2double(get(handles.moveTime,'String')); % currently, the real time during stimulus period was set time * 4/5
TRIALINFO.velocity = str2double(get(handles.velocity,'String'));%% m/s
TRIALINFO.repeatNum = str2double(get(handles.repeatNum,'String'));%% trial repeat nums
TRIALINFO.coherence = str2double(get(handles.coherence,'String'));
TRIALINFO.pupilAdaptionTime = str2double(get(handles.pupilAdaptionTime,'String'));
TRIALINFO.feedback = get(handles.feedback,'Value');

% set(handles.lifeTime,'String',num2str(TRIALINFO.lifeTime));
%         set(handles.deviation,'String',num2str(TRIALINFO.deviation));
%         set(handles.choiceTopDown,'Value',TRIALINFO.choiceTopDown);
%         set(handles.choiceLeftRight,'Value',TRIALINFO.choiceLeftRight);
%         set(handles.dataPath,'String',num2str(TRIALINFO.dataPath));
%         fixationWindow
        
TRIALINFO.eyelinkRecording = get(handles.eyelinkRecording,'Value');

if TRIALINFO.eyelinkRecording
    % for break options
    TRIALINFO.trialBreak = get(handles.trialBreak,'Value');
    TRIALINFO.checkWindowDegree = str2double(get(handles.checkWindow,'String'));
    
    % for calibration options
    TRIALINFO.calibration = get(handles.calibration,'Value');
    TRIALINFO.calibrationInterval = str2double(get(handles.calibrationInterval,'String')) * 60; % minutes to seconds
    
    % for eye-choice version, define the related threshold
    TRIALINFO.eyeChoiceWindowSize = 2;%% eyeWindow set + - 2°
    TRIALINFO.eyeChoiceTime = 0.2; %% chosen when fix on 0.2s = 200ms
    TRIALINFO.choicePeriod = str2double(get(handles.choicePeriod,'String')); % the duration for chosen, unit second
    
    TRIALINFO.fixationThreshold = str2double(get(handles.fixationThreshold,'String')); % how long to pass the fixation check? unit s
end

% set keyboard
KbName('UnifyKeyNames'); 
skipKey = KbName('space');
escape = KbName('f1');
leftKey = KbName('LeftArrow');
rightKey = KbName('RightArrow');
upArror = KbName('UpArrow');
cKey = KbName('c'); % force calibration

pageUp = KbName('pageup'); % increase binocular deviation
pageDown = KbName('pagedown'); % decrease binocular deviation

TRIALINFO.deviation = 1.2; % initial binocular deviation, cm
deviationAdjust = 0.2; % how fast to adjust the deviation by key pressing, cm

%% parameters
coordinateMuilty = 1; % convert cm to coordinate system for moving distance etc.
SCREEN.distance = 60*coordinateMuilty;% cm

if TRIALINFO.eyelinkRecording
    SCREEN.widthCM = 34.5*coordinateMuilty; % cm, need to measure in your own PC
    SCREEN.heightCM = 19.7*coordinateMuilty; % cm, need to measure in your own PC
else
    SCREEN.widthCM = 120*coordinateMuilty; % cm
    SCREEN.heightCM = 65*coordinateMuilty; % cm
end

TRIALINFO.repetition = 15;
TRIALINFO.motionType = [1 2 3 4]; % 1: fixation; 2: normal pursuit; 3: simulated pursuit; 4:stabilized pursuit
% TRIALINFO.headingDegree = [-10 0 10] ; % degre
TRIALINFO.headingDegree = [-45 -30 -15 0 15 30 45]; % degree
TRIALINFO.headingSpeed = 50*coordinateMuilty; % cm/s
TRIALINFO.coherence = 100;
TRIALINFO.fixationSizeD = 0.25;  % degree

% fixation period (fixation point only)          --> 
% pause period (3D cloud appear, not moving)	--> 
% pre movement duration (heading only)          -->
% movement duration (heading with pursuit/fixation)
TRIALINFO.fixationPeriod = 0.5; % second
TRIALINFO.pausePeriod = 0.18; % second
TRIALINFO.preMoveDuration = 0.4; % second
TRIALINFO.moveDuration = 1; % second

TRIALINFO.fixationWindow = 2; % degree
TRIALINFO.pursuitWindow = 4; % degree

TRIALINFO.intertrialInterval = 1; % second

% for motion type 3
TRIALINFO.rotationDegree = [-10 10]; % °，the degree of the star' rotation
TRIALINFO.rotationSpeed = 10;  % °/s

% for motion type 2 and 4
TRIALINFO.fixMoveDirection = [1 3]; % only for motion type 2 and 4. 1: left to right; 2: constant at the center; 3: right to left;
TRIALINFO.fixationDegree = 4; % degree ± to center
TRIALINFO.fixationInitialDegree = 5; % degree ± to center
TRIALINFO.fixSpeed = TRIALINFO.rotationSpeed;

% parameters for the star field
STARFIELD.dimensionX = 400*coordinateMuilty;  % cm
STARFIELD.dimensionY = 400*coordinateMuilty;  % cm
STARFIELD.dimensionZ = 700*coordinateMuilty;  % cm
STARFIELD.starSize = 0.1;    % degree
STARFIELD.density = 1000/(100*coordinateMuilty)^3;    % convert num/m^3 to num/cm^3

STARFIELD.probability = TRIALINFO.coherence;

% parameters for the camera
CAMERA.elevation = 0*coordinateMuilty; % unit cm, average height of a human
CAMERA.distance = SCREEN.distance; % unit cm, distance from participant to the screen
CAMERA.sightDegreeVer = atand(SCREEN.heightCM * 0.5 / CAMERA.distance)*2; % degree of view field on vertical
CAMERA.sightDegreeHor = atand(SCREEN.widthCM * 0.5 / CAMERA.distance)*2; % degree of view field on horizon

% parameter for choice
choicePeriod = 2; % s

global GL;
if TRIALINFO.eyelinkRecording
    Screen('Preference', 'SkipSyncTests', 1); % for debug/test
else
    Screen('Preference', 'SkipSyncTests', 0); % for recording
end

AssertOpenGL;
InitializeMatlabOpenGL;

SCREEN.screenId = max(Screen('Screens'));
PsychImaging('PrepareConfiguration');

% Define background color:
whiteBackground = WhiteIndex(SCREEN.screenId);
blackBackground = BlackIndex(SCREEN.screenId);

% Open a double-buffered full-screen window on the main displays screen.
[win , winRect] = PsychImaging('OpenWindow', SCREEN.screenId, whiteBackground);
SCREEN.widthPix = winRect(3);
SCREEN.heightPix = winRect(4);
SCREEN.center = [SCREEN.widthPix/2, SCREEN.heightPix/2];

TRIALINFO.fixationSizeP = degree2pix(TRIALINFO.fixationSizeD/2);
TRIALINFO.fixationPosition{1} = [SCREEN.widthPix/2-degree2pix(TRIALINFO.fixationDegree,1),SCREEN.heightPix/2];
TRIALINFO.fixationPosition{2} = [SCREEN.widthPix/2,SCREEN.heightPix/2];
TRIALINFO.fixationPosition{3} = [SCREEN.widthPix/2+degree2pix(TRIALINFO.fixationDegree,1),SCREEN.heightPix/2];

SCREEN.refreshRate = Screen('NominalFrameRate', SCREEN.screenId);

%% the configuration of the Frustum
calculateFrustum(coordinateMuilty);

Screen('BeginOpenGL', win);
glViewport(0, 0, RectWidth(winRect), RectHeight(winRect));
glColorMask(GL.TRUE, GL.TRUE, GL.TRUE, GL.TRUE);
% glEnable(GL_BLEND);
% glEnable(GL_ALPHA_BLEND_CORRECTLY);
% glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
Screen('EndOpenGL', win);

%% trial conditions and order
[TRIALINFO.trialConditions,conditionIndex] = calculateConditions();
trialIndex = repmat(conditionIndex, TRIALINFO.repetition,1);
trialNum = size(trialIndex,1);
trialOrder = randperm(trialNum);

disp(['This block has  ' num2str(trialNum) ' trials']);

GenerateStarField();

% calculate for the position of fixation point
[fixX,fixY] = calculateFixation();

% initial Eyelink
timePredicted = (TRIALINFO.fixationPeriod + TRIALINFO.pausePeriod + TRIALINFO.preMoveDuration+TRIALINFO.moveDuration + ...
    TRIALINFO.intertrialInterval + choicePeriod) * TRIALINFO.repetition * length(TRIALINFO.motionType) * length(TRIALINFO.rotationDegree) * length(TRIALINFO.headingDegree);
disp(['This block will cost  ' num2str(timePredicted/60) ' minutes']);
calibrationInterval = 600; % unit second, it is better to re-calibration every 10-15 minutes
automaticCalibration = timePredicted > 1.3*calibrationInterval; % make automatic calibration (every 10 min in default) if the block takes more than 15 min.

if ~TRIALINFO.eyelinkRecording
    tempName = 'TEMP1'; % need temp name because Eyelink only know hows to save names with 8 chars or less. Will change name using matlab's moveFile later.
    dummymode=0;
    
    el=EyelinkInitDefaults(win);
%     el.backgroundcolour = backgroundColor;
%     el.foregroundcolour = BlackIndex(el.window);
%     el.msgfontcolour    = BlackIndex(el.window);
%     el.imgtitlecolour   = BlackIndex(el.window);
    
    if ~EyelinkInit(dummymode)
        fprintf('Eyelink Init aborted.\n');
        cleanup;  % cleanup function
        Eyelink('ShutDown');
        Screen('CloseAll');
        return
    end
    
    triali = Eyelink('Openfile', tempName);
    if triali~=0
        fprintf('Cannot create EDF file ''%s'' ', fileName);
        cleanup;
        Eyelink('ShutDown');
        Screen('CloseAll');
        return
    end
    
    %   SET UP TRACKER CONFIGURATION
    Eyelink('command', 'calibration_type = HV9');
    %	set parser (conservative saccade thresholds)
    Eyelink('command', 'saccade_velocity_threshold = 35');
    Eyelink('command', 'saccade_acceleration_threshold = 9500');
    Eyelink('command', 'link_sample_data  = LEFT,RIGHT,GAZE,AREA');
    Eyelink('command', 'online_dcorr_refposn = %1d, %1d', SCREEN.center(1), SCREEN.center(2));
    Eyelink('command', 'online_dcorr_maxangle = %1d', 30.0);
    % you must call this function to apply the changes from above
    EyelinkUpdateDefaults(el);
    
    % Calibrate the eye tracker
    EyelinkDoTrackerSetup(el);
    
    % do a final check of calibration using driftcorrection
    EyelinkDoDriftCorrection(el);
    
    Eyelink('StartRecording');
    
    Eyelink('message', 'SYNCTIME');	 	 % zero-plot time for EDFVIEW
    eye_used = Eyelink('EyeAvailable'); % get eye that's tracked
    if eye_used == el.BINOCULAR % if both eyes are tracked
        eye_used = el.LEFTEYE; % use left eye
    end
    errorCheck=Eyelink('checkrecording'); 		% Check recording status */
    if(errorCheck~=0)
        fprintf('Eyelink checked wrong status.\n');
        cleanup;  % cleanup function
        Eyelink('ShutDown');
        Screen('CloseAll');
    end
    
    calibrateCkeck = tic;
    WaitSecs(1); % wait a little bit, in case the key press during calibration influence the following keyboard check
end

trialStTime = zeros(trialNum,1);
blockSt = tic;
triali = 1;
retryFlag = 0;
choice = zeros(trialNum,1); % 0: no choice; 1: choice left; 2: choice right
choiceTime = zeros(trialNum,1);
Conditions = cell(trialNum,1);
while triali <= trialNum
    SetMouse(0,0);
    [ ~, ~, keyCode] = KbCheck;
    if keyCode(escape)
        break;
    end
    
    if ~TRIALINFO.eyelinkRecording
        % auto-calibration, force calibration is coded on fixation check period
        if automaticCalibration
            if toc(calibrateCkeck) >= calibrationInterval
                EyelinkDoTrackerSetup(el);
                Eyelink('StartRecording');
                Eyelink('message', 'Calibrate Finished');
                errorCheck=Eyelink('checkrecording'); 		% Check recording status */
                if(errorCheck~=0)
                    fprintf('Eyelink checked wrong status.\n');
                    cleanup;  % cleanup function
                    Eyelink('ShutDown');
                    Screen('CloseAll');
                end
                calibrateCkeck = tic;
                WaitSecs(1); % wait a little bit, in case the key press during calibration influence the following keyboard check
            end
        end
    end
    
    motionTypeI = trialIndex(trialOrder(triali),1);
    
    % White during the inter-trial intervals
    Screen('FillRect', win ,whiteBackground,[0 0 SCREEN.widthPix SCREEN.heightPix]);
    Screen('Flip', win,0,0);
    trialInterval = tic;
    
    % calculate for pre-movement
    [pglX,pglY,pglZ,pfX,pfY,pfZ] = calculatePreMove();
    
    % calculate for movement
    [glX,glY,glZ,fX,fY,fZ,thetay2] = calculateMovement(motionTypeI,trialIndex(trialOrder(triali),:),pglX(end),pglY(end),pglZ(end));
    
    % calculate for binocular 3D
    [pglXl,pglYl,pglZl,pfXl,pfYl,pfZl,pglXr,pglYr,pglZr,pfXr,pfYr,pfZr] = calculateCameraPosition(pglX,pglY,pglZ,pfX,pfY,pfZ);
    [pXl,pYl,pZl,fXl,fYl,fZl,pXr,pYr,pZr,fXr,fYr,fZr] = calculateCameraPosition(glX,glY,glZ,fX,fY,fZ);
            
    % fixationType 1: L to R, 2: stay at center, 3: R to L
    if motionTypeI == 1
        fixationType = 2;
    elseif motionTypeI == 3
        fixationType = 2;
    else
        fixationType = TRIALINFO.trialConditions{trialIndex(trialOrder(triali),1)}(trialIndex(trialOrder(triali),2),4);
    end
    
    % wait for trial interval
    WaitSecs(TRIALINFO.intertrialInterval-toc(trialInterval)); % ITI
    
    Screen('FillRect', win ,blackBackground,[0 0 SCREEN.widthPix SCREEN.heightPix]);
    Screen('BlendFunction', win, GL_ONE, GL_ZERO);
    drawFixation(TRIALINFO.fixationPosition{fixationType},TRIALINFO.fixationSizeP,win);
    Screen('Flip', win); % T(-2)
    
    if ~TRIALINFO.eyelinkRecording
        % fixation check
        escFlag = fixationCheck(TRIALINFO.fixationPosition{fixationType},degree2pix(TRIALINFO.fixationWindow),TRIALINFO.fixationPeriod,escape,skipKey,cKey,el);
        Eyelink('message', ['Moving Start ' num2str(triali)]);
        trialStTime(triali) = toc(blockSt);
    else
        trialStTime(triali) = toc(blockSt);
        escFlag = 0;
    end
    
    if escFlag
        break;
    end
    
    % for pre-movement
    for f=1:length(pglX)
        
        if(mod(f,1)==0)
            modifyStarField();
        end
        
        % adjust binocular test16
        [ ~, ~, keyCode] = KbCheck;
        if keyCode(pageUp)
            TRIALINFO.deviation = TRIALINFO.deviation + deviationAdjust;
            disp(['binocular deviation: ' num2str(TRIALINFO.deviation)]);
            calculateFrustum(coordinateMuilty);
            [pglXl,pglYl,pglZl,pfXl,pfYl,pfZl,pglXr,pglYr,pglZr,pfXr,pfYr,pfZr] = calculateCameraPosition(pglX,pglY,pglZ,pfX,pfY,pfZ);
            [pXl,pYl,pZl,fXl,fYl,fZl,pXr,pYr,pZr,fXr,fYr,fZr] = calculateCameraPosition(glX,glY,glZ,fX,fY,fZ);
        elseif keyCode(pageDown)
            if TRIALINFO.deviation > deviationAdjust
                TRIALINFO.deviation = TRIALINFO.deviation - deviationAdjust;
                disp(['binocular deviation: ' num2str(TRIALINFO.deviation)]);
                calculateFrustum(coordinateMuilty);
                [pglXl,pglYl,pglZl,pfXl,pfYl,pfZl,pglXr,pglYr,pglZr,pfXr,pfYr,pfZr] = calculateCameraPosition(pglX,pglY,pglZ,pfX,pfY,pfZ);
                [pXl,pYl,pZl,fXl,fYl,fZl,pXr,pYr,pZr,fXr,fYr,fZr] = calculateCameraPosition(glX,glY,glZ,fX,fY,fZ);
            end
        end
        
       %% draw for left eye
        Screen('BeginOpenGL', win);
        glColorMask(GL.TRUE, GL.FALSE, GL.FALSE, GL.FALSE);
        glMatrixMode(GL.PROJECTION);
        glLoadIdentity;
        glFrustum( FRUSTUM.sinisterLeft,FRUSTUM.sinisterRight, FRUSTUM.bottom, FRUSTUM.top, FRUSTUM.clipNear, FRUSTUM.clipFar);
        glMatrixMode(GL.MODELVIEW);
        glLoadIdentity;
        gluLookAt(pglXl(f),pglYl(f),pglZl(f),pglXl(f)+pfXl(f),pglYl(f)+pfYl(f),pglZl(f)+pfZl(f),0.0,1.0,0.0);
        glClearColor(0,0,0,0);
        glColor3f(1,1,0);
        
        % draw the fixation point and 3d dots
        DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
        
        %% draw for right eye
        glColorMask(GL.FALSE, GL.TRUE, GL.FALSE, GL.FALSE);
        glMatrixMode(GL.PROJECTION);
        glLoadIdentity;
        glFrustum( FRUSTUM.dexterLeft,FRUSTUM.dexterRight, FRUSTUM.bottom, FRUSTUM.top, FRUSTUM.clipNear, FRUSTUM.clipFar);
        glMatrixMode(GL.MODELVIEW);
        glLoadIdentity;
        gluLookAt(pglXr(f),pglYr(f),pglZr(f),pglXr(f)+pfXr(f),pglYr(f)+pfYr(f),pglZr(f)+pfZr(f),0.0,1.0,0.0);
        glClearColor(0,0,0,0);
        glColor3f(1,1,0);
        
        
        % draw the fixation point and 3d dots for right eye
        DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
        Screen('EndOpenGL', win);
        
        drawFixation(TRIALINFO.fixationPosition{fixationType},TRIALINFO.fixationSizeP,win);
       %% check for eye pursuit
        if ~TRIALINFO.eyelinkRecording
            retryFlag = pursuitCheck(TRIALINFO.fixationPosition{fixationType},degree2pix(TRIALINFO.pursuitWindow),win);
        end
        if retryFlag
            break
        end
        Screen('Flip', win, 0, 0);
        if f==1
            WaitSecs(TRIALINFO.pausePeriod);
        end
    end
        
    if ~retryFlag
        % for trial movement
        if ~TRIALINFO.eyelinkRecording
            
            % extract current eye position
            evt = Eyelink( 'NewestFloatSample');
            eyeUsed = Eyelink('EyeAvailable'); % get eye that's tracked
            if eyeUsed ~= -1 % do we know which eye to use yet?
                px =evt.gx(eyeUsed+1); % +1 as we're accessing MATLAB array
                py = evt.gy(eyeUsed+1);
                % frameStartTime(i) = evt.time;
            end
            eyePO = [px,py];
        else
            eyePO = [fixX{fixationType}(1),fixY{fixationType}(1)];
        end
        
        % define origin face direction for motion type 4
        if motionTypeI ==4
            faceDirectionL = [fXl(1);fYl(1);fZl(1)];
            faceDirectionR = [fXr(1);fYr(1);fZr(1)];
        end
        
        for f=1:length(glX)
            if(mod(f,1)==0)
                modifyStarField();
            end
            
            % adjust binocular test16
            [ ~, ~, keyCode] = KbCheck;
            if keyCode(pageUp)
                TRIALINFO.deviation = TRIALINFO.deviation + deviationAdjust;
                disp(['binocular deviation: ' num2str(TRIALINFO.deviation)]);
                calculateFrustum(coordinateMuilty)
                [pXl,pYl,pZl,fXl,fYl,fZl,pXr,pYr,pZr,fXr,fYr,fZr] = calculateCameraPosition(glX,glY,glZ,fX,fY,fZ);
            elseif keyCode(pageDown)
                if TRIALINFO.deviation > deviationAdjust
                    TRIALINFO.deviation = TRIALINFO.deviation - deviationAdjust;
                    disp(['binocular deviation: ' num2str(TRIALINFO.deviation)]);
                    calculateFrustum(coordinateMuilty)
                    [pXl,pYl,pZl,fXl,fYl,fZl,pXr,pYr,pZr,fXr,fYr,fZr] = calculateCameraPosition(glX,glY,glZ,fX,fY,fZ);
                end
            end
            
           %% draw for left eye
            Screen('BeginOpenGL', win);
            glColorMask(GL.TRUE, GL.FALSE, GL.FALSE, GL.FALSE);
            glMatrixMode(GL.PROJECTION);
            glLoadIdentity;
            glFrustum( FRUSTUM.sinisterLeft,FRUSTUM.sinisterRight, FRUSTUM.bottom, FRUSTUM.top, FRUSTUM.clipNear, FRUSTUM.clipFar);
            glMatrixMode(GL.MODELVIEW);
            glLoadIdentity;
            
            if motionTypeI ~= 4
                gluLookAt(pXl(f),pYl(f),pZl(f),pXl(f)+fXl(f),pYl(f)+fYl(f),pZl(f)+fZl(f),0.0,1.0,0.0);
            elseif motionTypeI == 4
                if ~TRIALINFO.eyelinkRecording
                    eyePT = tic;
                    eyePIndex = nan(10,2);
                    for k = 1:11
                        if toc(eyePT) < 0.010 && isnan(eyePIndex(end,1)) && (k<11) % 10ms
                            if Eyelink( 'NewFloatSampleAvailable')>0
                                % get the sample in the form of an event structure                                
                                evt = Eyelink( 'NewestFloatSample');
                                eyeUsed = Eyelink('EyeAvailable'); % get eye that's tracked
                                if eyeUsed ~= -1 % do we know which eye to use yet?
                                    px =evt.gx(eyeUsed+1); % +1 as we're accessing MATLAB array
                                    py = evt.gy(eyeUsed+1);
                                    % frameStartTime(i) = evt.time;
                                end
                                WaitSecs(0.001);
                            end
                            eyePIndex(k,:) = [px,py];
                            disp(['Sample position ' num2str(eyePO)])
                        else
                            % calculate mean position
                            eyePNew = nanmean(eyePIndex,1);
                            if ~isnan(eyePNew)
                                eyeO2C = eyePO - SCREEN.center;
                                eyeN2C = eyePNew - SCREEN.center;
                                
                                % calculate for rotation on
                                eyeRD = (pix2degree(eyeN2C) - pix2degree(eyeO2C));
                                faceDirectionL = roty(eyeRD(1)) * (rotx(eyeRD(2))*faceDirectionL);
                                faceDirectionR = roty(eyeRD(1)) * (rotx(eyeRD(2))*faceDirectionR);
                                eyePO = eyePNew;
                            end
                            break
                        end
                    end
                else
                    eyePNew = [fixX{fixationType}(f),fixY{fixationType}(f)];
                    eyeO2C = eyePO - SCREEN.center;
                    eyeN2C = eyePNew - SCREEN.center;
                    
                    % calculate for rotation on
                    eyeRD = (pix2degree(eyeN2C) - pix2degree(eyeO2C));
                    faceDirectionL = roty(eyeRD(1)) * (rotx(eyeRD(2))*faceDirectionL);
                    faceDirectionR = roty(eyeRD(1)) * (rotx(eyeRD(2))*faceDirectionR);
                    eyePO = eyePNew;
                end
                gluLookAt(pXl(f),pYl(f),pZl(f),pXl(f)+faceDirectionL(1),pYl(f)+faceDirectionL(2),pZl(f)+faceDirectionL(3),0.0,1.0,0.0);
            end
            
            glClearColor(0,0,0,0);
            glColor3f(1,1,0);
            
            % draw the fixation point
            DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
            
          %% draw for right eye
            glColorMask(GL.FALSE, GL.TRUE, GL.FALSE, GL.FALSE);
            glMatrixMode(GL.PROJECTION);
            glLoadIdentity;
            glFrustum( FRUSTUM.dexterLeft,FRUSTUM.dexterRight, FRUSTUM.bottom, FRUSTUM.top, FRUSTUM.clipNear, FRUSTUM.clipFar);
            glMatrixMode(GL.MODELVIEW);
            glLoadIdentity;
            
            if motionTypeI ~= 4
                gluLookAt(pXr(f),pYr(f),pZr(f),pXr(f)+fXr(f),pYr(f)+fYr(f),pZr(f)+fZr(f),0.0,1.0,0.0);
            elseif motionTypeI == 4
                gluLookAt(pXr(f),pYr(f),pZr(f),pXr(f)+faceDirectionR(1),pYr(f)+faceDirectionR(2),pZr(f)+faceDirectionR(3),0.0,1.0,0.0);
            end
            
            glClearColor(0,0,0,0);
            glColor3f(1,1,0);
            DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
            Screen('EndOpenGL', win);
            
            % draw the fixation point
            drawFixation([fixX{fixationType}(f),fixY{fixationType}(f)],TRIALINFO.fixationSizeP,win);
            
            % check for eye pursuit
            if ~TRIALINFO.eyelinkRecording
                retryFlag = pursuitCheck([fixX{fixationType}(f),fixY{fixationType}(f)],degree2pix(TRIALINFO.pursuitWindow),win);
            else
                % simulate eye movement
%                 drawFixation(eyePNew,TRIALINFO.fixationSizeP,win);
            end
            
            if retryFlag
                break
            end
            Screen('Flip', win, 0, 0);
        end
    end
    
    if ~retryFlag
        % starting choice
        if ~TRIALINFO.eyelinkRecording
            Eyelink('message', ['Start choice ' num2str(triali)]);
        end
        choice(triali) = 0;
        startChoice = tic;
        [~, ~, ~] = DrawFormattedText(win, 'What''s your heading direction?','center',SCREEN.center(2)/2,[200 200 200]);
        Screen('TextBackgroundColor',win, [0 0 0 0]);
        Screen('DrawingFinished',win);
        Screen('Flip',win,0,0);
        while toc(startChoice) <= choicePeriod
            [ ~, ~, keyCode ] = KbCheck;
            if keyCode(leftKey)
                choice(triali) = 1;
                choiceTime(triali) = toc(startChoice);
            elseif keyCode(rightKey)
                choice(triali) = 2;
                choiceTime(triali) = toc(startChoice);
            end
            if choice(triali)
                break
            end
        end
        if choice(triali)
            sound(sin(2*pi*25*(1:3000)/200)); % response cue
            if ~TRIALINFO.eyelinkRecording
                Eyelink('message', ['Decision made ' num2str(triali)]);
            end
        else
            sound(sin(2*pi*25*(1:3000)/600)); % missing cue
            if ~TRIALINFO.eyelinkRecording
                Eyelink('message', ['Missing ' num2str(triali)]);
            end
        end
    end
    
    if retryFlag || ~choice(triali)
        if ~TRIALINFO.eyelinkRecording
            Eyelink('message', ['Trial repeat ' num2str(triali)]);
        end
        trialOrder = [trialOrder, trialOrder(triali)];
        trialOrder(triali) = [];
    else
        Conditions{triali} = TRIALINFO.trialConditions{trialIndex(trialOrder(triali),1)}(trialIndex(trialOrder(triali),2),:);
        if ~TRIALINFO.eyelinkRecording
            Eyelink('message', ['Trial complete ' num2str(triali)]);
        end
        triali = triali + 1;
    end
    
end

Screen('Flip', win);

if ~TRIALINFO.eyelinkRecording
    Eyelink('StopRecording');
    Eyelink('CloseFile');
    try
        fprintf('Receiving data file ''%s''\n',fileName);
        status=Eyelink('ReceiveFile',tempName ,saveDir,1);
        if status > 0
            fprintf('ReceiveFile status %d\n ', status);
        end
        if exist(fileName, 'file')==2
            fprintf('Data file ''%s'' can be found in '' %s\n',fileName, pwd);
        end
    catch
        fprintf('Problem receiving data file ''%s''\n',fileName);
    end
    
    cd (saveDir);
    save(fullfile(saveDir,fileName));
    movefile([saveDir,'\',tempName,'.edf'],[saveDir,'\',fileName,'.edf']);
    
    % shut down the eyelink
    Eyelink('ShutDown');
end

%% save the real and the choiced heading
save(fullfile(saveDir,fileName),'TRIALINFO','Conditions','SCREEN','CAMERA','choice','choiceTime');
Screen('CloseAll');
cd(curdir);

clear TRIALINFO CAMERA STARFIELD STARDATA SCREEN FRUSTUM;

%%%%%%%%%%%%%%%%%%%%%%%%%%%% previous code
% code by BYC for Shanghai Senior High School, last edited in March 2019
clear STARDATA
% global MOVE
% global SCREEN

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

eyelinkRecording = get(handles.eyelinkRecording,'Value');

if ~eyelinkRecording
    % for break options
    trialBreak = get(handles.trialBreak,'Value');
    checkWindowDegree = str2double(get(handles.checkWindow,'String'));
    
    % for calibration options
    calibration = get(handles.calibration,'Value');
    calibrationInterval = str2double(get(handles.calibrationInterval,'String')) * 60; % minutes to seconds
    
    % for eye-choice version, define the related threshold
    eyeChoiceWindowSize = 2;%% eyeWindow set + - 2°
    eyeChoiceTime = 0.2; %% chosen when fix on 0.2s = 200ms
    choicePeriod = str2double(get(handles.choicePeriod,'String')); % the duration for chosen, unit second
    
    fixationThreshold = str2double(get(handles.fixationThreshold,'String')); % how long to pass the fixation check? unit s
end

if eyelinkRecording
    % for recording
    SCREEN.width = 37.5; % cm
    SCREEN.height = 30.7; % cm
    SCREEN.distance = 60; % cm
else
    % for test & debug
    SCREEN.width = 37.5; % cm
    SCREEN.height = 30.7; % cm
    SCREEN.distance = 60; % cm
end


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
% global STARFIELD;
% the size of the star field
STARFIELD.dimensionX = 60;
STARFIELD.dimensionY = 60;
STARFIELD.dimensionZ = 60;
% the size of the star
STARFIELD.StarSize = 0.15;
% the density of the star field
STARFIELD.Density = 0.01;
% the coherence of the star field
STARFIELD.Probability = MOVE.coherence;
% set star's life time
STARFIELD.lifeTime = str2double(get(handles.lifeTime,'string'));

% global STARDATA; %% save the coordinates of the stars

% Restrict KbCheck to checking of ESCAPE key:
KbName('UnifyKeynames');
leftKey=KbName('LeftArrow');
rightKey=KbName('RightArrow');
upKey = KbName('UpArrow');
escape = KbName('f1');
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
tarShift = floor(0.3*pixel2deg); % target shift on horizon if located on vertical.



if get(handles.choiceLeftRight,'Value')
    % % for targets in horizon
    tar1Location = [screenCentre(1)-tarDistance screenCentre(2)];
    tar2Location = [screenCentre(1)+tarDistance screenCentre(2)];
end

if get(handles.choiceTopDown,'Value')
    % for targets in vertical
    tar1Location = [screenCentre(1)+tarShift screenCentre(2)-tarDistance];
    tar2Location = [screenCentre(1)-tarShift screenCentre(2)+tarDistance];
end


%%%% add by ly 20180905

el=EyelinkInitDefaults(win);
el.backgroundcolour = BlackIndex(el.window);
el.foregroundcolour = WhiteIndex(el.window);
el.msgfontcolour    = WhiteIndex(el.window);
el.imgtitlecolour   = GrayIndex(el.window);

if ~EyelinkInit(dummymode)
    fprintf('Eyelink Init aborted.\n');
    cleanup;  % cleanup function
    Eyelink('ShutDown');
    Screen('CloseAll');
    return
end

i = Eyelink('Openfile', tempName);
if i~=0
    fprintf('Cannot create EDF file ''%s'' ', dataFileName);
    cleanup;
    Eyelink('ShutDown');
    Screen('CloseAll');
    return
end

%   SET UP TRACKER CONFIGURATION
Eyelink('command', 'calibration_type = HV9');
%	set parser (conservative saccade thresholds)
Eyelink('command', 'saccade_velocity_threshold = 35');
Eyelink('command', 'saccade_acceleration_threshold = 9500');
Eyelink('command', 'link_sample_data  = LEFT,RIGHT,GAZE,AREA');
Eyelink('command', 'online_dcorr_refposn = %1d, %1d', screenCentre(1), screenCentre(2));
Eyelink('command', 'online_dcorr_maxangle = %1d', 30.0);
% you must call this function to apply the changes from above
EyelinkUpdateDefaults(el);

% Calibrate the eye tracker
EyelinkDoTrackerSetup(el);

% do a final check of calibration using driftcorrection
EyelinkDoDriftCorrection(el);

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

Eyelink('StartRecording');
eye_used = Eyelink('EyeAvailable'); % get eye that's tracked
if eye_used == el.BINOCULAR % if both eyes are tracked
    eye_used = el.LEFT_EYE; % use left eye
end
Eyelink('message', 'SYNCTIME');	 	 % zero-plot time for EDFVIEW
error=Eyelink('checkrecording'); 		% Check recording status */
if(error~=0)
    fprintf('Eyelink checked wrong status.\n');
    cleanup;  % cleanup function
    Eyelink('ShutDown');
    Screen('CloseAll');
end

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
    
    if eyelinkRecording
        % make calibrate and validate every several minutes
        if calibration
            if toc(calibrateCkeck) >= calibrationInterval
                EyelinkDoTrackerSetup(el);
                Eyelink('StartRecording');
                Eyelink('message', 'Auto-calibration');
                eye_used = Eyelink('EyeAvailable'); % get eye that's tracked
                if eye_used == el.BINOCULAR % if both eyes are tracked
                    eye_used = el.LEFT_EYE; % use left eye
                end
                Eyelink('message', 'SYNCTIME');	 	 % zero-plot time for EDFVIEW
                error=Eyelink('checkrecording'); 		% Check recording status */
                if(error~=0)
                    fprintf('Eyelink checked wrong status.\n');
                    cleanup;  % cleanup function
                    Eyelink('ShutDown');
                    Screen('CloseAll');
                end
            end
        end
        
        eyeChoiceWindowSizePixel = floor(eyeChoiceWindowSize*pixel2deg);
        Eyelink('message', ['fixation onset ' num2str(i)]);
        fixation_check(screenCentre,eyeChoiceWindowSizePixel,fixationThreshold,eye_used,escape,win,fixationPosition,cKey,refreshRate,el);
        if keyCode(cKey) % press c to calibrate
            EyelinkDoTrackerSetup(el);
            Eyelink('StartRecording');
            eye_used = Eyelink('EyeAvailable'); % get eye that's tracked
            if eye_used == el.BINOCULAR % if both eyes are tracked
                eye_used = el.LEFT_EYE; % use left eye
            end
            Eyelink('message', 'SYNCTIME');	 	 % zero-plot time for EDFVIEW
            error=Eyelink('checkrecording'); 		% Check recording status */
            if(error~=0)
                fprintf('Eyelink checked wrong status.\n');
                cleanup;  % cleanup function
                Eyelink('ShutDown');
                Screen('CloseAll');
            end
            Eyelink('message', 'Force calibration');
        end
        Eyelink('message', ['fixation done ' num2str(i)]);
    end
    
    [ ~, ~, keyCode ] = KbCheck;
    if keyCode(escape) % long press escape to break the block
        break;
    end
    
    Screen('BlendFunction', win, GL_ONE, GL_ZERO);
    framesNum = length(Heave);
    
    breakFlag = 0; % 0 continue, 1 trial break
    
    for frames=1:framesNum
        Heavei = Heave(frames)*100;
        Surgei = Surge(frames)*100;
        Laterali = Lateral(frames)*100;
        if(mod(frames,STARFIELD.lifeTime)==0)
            modifyStarField();
        end
        
        Screen('BeginOpenGL', win);
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
        
        if eyelinkRecording
            if(frames ==1)
                Eyelink('message', ['stimulus onset ' num2str(i)]);
            end
            
            if trialBreak
                if Eyelink( 'NewFloatSampleAvailable')>0
                    % get the sample in the form of an event structure
                    evt = Eyelink( 'NewestFloatSample');
                    if eye_used ~= -1 % do we know which eye to use yet?
                        px =evt.gx(eye_used+1); % +1 as we're accessing MATLAB array
                        py = evt.gy(eye_used+1);
                        frameStartTime(i) = evt.time;
                    end
                    %                         eyePoint = [px-5 py-5 px+5 py+5];
                end
                breakFlag = breakcheck(px,py,screenCentre,checkWindowDegree*pixel2deg);
            end
            
            if(frames ==framesNum)
                if Eyelink( 'NewFloatSampleAvailable')>0
                    % get the sample in the form of an event structure
                    evt = Eyelink( 'NewestFloatSample');
                    if eye_used ~= -1 % do we know which eye to use yet?
                        %                                                     px =evt.gx(eye_used+1); % +1 as we're accessing MATLAB array
                        %                                                     py = evt.gy(eye_used+1);
                        frameEndTime(i) = evt.time;
                    end
                    %                         eyePoint = [px-5 py-5 px+5 py+5];
                end
                Eyelink('message', ['stimulus term ' num2str(i)]);
            end
        end
        
        if breakFlag
            break
        end
    end
    
    % check for break
    if breakFlag
        order(i) = [];
        order = cat(2,order,orderi);
        if eyelinkRecording
            Eyelink('message',['trial break ' num2str(i)]);
        end
        continue
    end
    
    %% choice by eyes (left: 1    right: 2    abort: 0)
    %% you must choice in 2 seconds
    choice(i) = 0;
    
    if eyelinkRecording
        Eyelink('message', ['start choice ' num2str(i)]);
    end

    
    for l= 1: (choicePeriod*refreshRate)
        
        if mod(l,STARFIELD.lifeTime)==0
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
        % random seed for feedback text
        randomSeed = 0;
        
        if eyelinkRecording
            if Eyelink( 'NewFloatSampleAvailable')>0
                % get the sample in the form of an event structure
                evt = Eyelink( 'NewestFloatSample');
                if eye_used ~= -1 % do we know which eye to use yet?
                    px =evt.gx(eye_used+1); % +1 as we're accessing MATLAB array
                    py = evt.gy(eye_used+1);
                end
                %                         eyePoint = [px-5 py-5 px+5 py+5];
            end
            
            if ((px<(tar1Location(1)+eyeChoiceWindowSizePixel))&&(px>(tar1Location(1)-eyeChoiceWindowSizePixel))&&(py<(tar1Location(2)+eyeChoiceWindowSizePixel))&&(py>(tar1Location(2)-eyeChoiceWindowSizePixel)))
                fixLeft = tic;
                while toc(fixLeft) < eyeChoiceTime
                    if Eyelink( 'NewFloatSampleAvailable')>0
                        % get the sample in the form of an event structure
                        evt = Eyelink( 'NewestFloatSample');
                        if eye_used ~= -1 % do we know which eye to use yet?
                            px =evt.gx(eye_used+1); % +1 as we're accessing MATLAB array
                            py = evt.gy(eye_used+1);
                        end
                    end
                    Screen('FillOval', win, [255 0 0 255], tar1Position);
                    Screen('FillOval', win, [255 0 0 255], tar2Position);
                    modifyStarField();
                    DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
                    %                 Screen('FillOval', win, [255 255 0 255], [px-50 py-50 px+50 py+50]);
                    Screen('Flip', win);
                    
                    if ((px>(tar1Location(1)+eyeChoiceWindowSizePixel))||(px<(tar1Location(1)-eyeChoiceWindowSizePixel))||(py>(tar1Location(2)+eyeChoiceWindowSizePixel))||(py<(tar1Location(2)-eyeChoiceWindowSizePixel)))
                        choice(i) = 0;
                        break;
                    else
                        choice(i) = 1;
                        Eyelink('message', ['decision made ' num2str(i) ' as ' num2str(choice(i))]);
                        while choicePeriod - toc(fixLeft)>0
                            if feedback == 1
                                randomSeed = drawChoiceInfo(win,choice(i),headi,tar1Position,tar2Position,screenCentre,randomSeed);
                            else
                                Screen('FillOval', win, [255 255 0 255], tar1Position);
                                Screen('FillOval', win, [255 0 0 255], tar2Position);
                            end
                            modifyStarField();
                            DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
                            Screen('Flip', win);
                        end
                        break
                    end
                end
            elseif ((px<(tar2Location(1)+eyeChoiceWindowSizePixel))&&(px>(tar2Location(1)-eyeChoiceWindowSizePixel))&&(py<(tar2Location(2)+eyeChoiceWindowSizePixel))&&(py>(tar2Location(2)-eyeChoiceWindowSizePixel)))
                fixRight = tic;
                if choice(i) > 0
                    break
                end
                while toc(fixRight) < eyeChoiceTime
                    if Eyelink( 'NewFloatSampleAvailable')>0
                        % get the sample in the form of an event structure
                        evt = Eyelink( 'NewestFloatSample');
                        if eye_used ~= -1 % do we know which eye to use yet?
                            px =evt.gx(eye_used+1); % +1 as we're accessing MATLAB array
                            py = evt.gy(eye_used+1);
                        end
                    end
                    Screen('FillOval', win, [255 0 0 255], tar1Position);
                    Screen('FillOval', win, [255 0 0 255], tar2Position);
                    modifyStarField();
                    DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
                    %                 Screen('FillOval', win, [255 255 0 255], [px-50 py-50 px+50 py+50]);
                    Screen('Flip', win);
                    if ((px>tar2Location(1)+eyeChoiceWindowSizePixel)||(px<tar2Location(1)-eyeChoiceWindowSizePixel)||(py>tar2Location(2)+eyeChoiceWindowSizePixel)||(py<tar2Location(2)-eyeChoiceWindowSizePixel))
                        choice(i) = 0;
                        break;
                    else
                        choice(i) = 2;
                        Eyelink('message', ['decision made ' num2str(i) ' as ' num2str(choice(i))]);
                        while choicePeriod - toc(fixRight) > 0
                            if feedback == 1
                                randomSeed = drawChoiceInfo(win,choice(i),headi,tar1Position,tar2Position,screenCentre,randomSeed);
                            else
                                Screen('FillOval', win, [255 0 0 255], tar1Position);
                                Screen('FillOval', win, [255 255 0 255], tar2Position);
                            end
                            modifyStarField();
                            DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
                            Screen('Flip', win);
                        end
                        break
                    end
                end
            end
        else
            % keyboard choice
        end
    end
    
    if choice(i)~=0
        if eyelinkRecording
            Eyelink('message', ['trial end ' num2str(i)]);
        end
        i=i+1;
    else
        order(i) = [];
        order = cat(2,order,orderi);
        if eyelinkRecording
            Eyelink('message',['trial break ' num2str(i)]);
        end
    end
        
    if Eyelink( 'NewFloatSampleAvailable')>0
        % get the sample in the form of an event structure
        evt = Eyelink( 'NewestFloatSample');
        if eye_used ~= -1 % do we know which eye to use yet?
            trialEndTime(i) = evt.time;
        end
    end
    [ ~, ~, keyCode ] = KbCheck;
    if keyCode(escape)
        break;
    end
end

Screen('Flip', win);
if eyelinkRecording
    Eyelink('StopRecording');
    Eyelink('CloseFile');
    try
        fprintf('Receiving data file ''%s''\n',dataFileName);
        status=Eyelink('ReceiveFile',tempName ,saveDir,1);
        if status > 0
            fprintf('ReceiveFile status %d\n ', status);
        end
        if exist(dataFileName, 'file')==2
            fprintf('Data file ''%s'' can be found in '' %s\n',dataFileName, pwd);
        end
    catch
        fprintf('Problem receiving data file ''%s''\n',dataFileName);
    end
    
    cd (saveDir);
    save([saveDir '\' dataFileName]);
    movefile([saveDir,'\',tempName,'.edf'],[saveDir,'\',dataFileName,'.edf']);
end
%% save the real and the choiced heading
save([saveDir dataFileName],'head','time','distance','choice');
%close the eye tracker.
Eyelink('ShutDown');
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


% --- Executes when uibuttongroup1 is resized.
function uibuttongroup1_SizeChangedFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroup1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in eyelinkRecording.
function eyelinkRecording_Callback(hObject, eventdata, handles)
% hObject    handle to eyelinkRecording (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of eyelinkRecording



function deviation_Callback(hObject, eventdata, handles)
% hObject    handle to test16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of test16 as text
%        str2double(get(hObject,'String')) returns contents of test16 as a double

% --- Executes during object creation, after setting all properties.
function deviation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fixationWindow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function test16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to test16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function fixationWindow_Callback(hObject, eventdata, handles)
% hObject    handle to fixationWindow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of fixationWindow as text
%        str2double(get(hObject,'String')) returns contents of fixationWindow as a double


% --- Executes during object creation, after setting all properties.
function fixationWindow_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fixationWindow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
screenPar();
