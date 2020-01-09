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

% Last Modified by GUIDE v2.5 06-Jan-2020 14:54:03

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
    try
        load(logFile(1).name);
        if exist('TRIALINFO','VAR')
            set(handles.degree,'String',num2str(TRIALINFO.degree));
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
                    
                    set(handles.handle,'Value',TRIALINFO.handle);
                    set(handles.gazePosition,'Value',TRIALINFO.gazePosition);
                end
            end
        end
    catch
        error('Some problems occured when loading parameters.')
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
    log = load(logFile.name);
end

subjectName = get(handles.subjectName,'String');
subjectName = strrep(subjectName,' ',''); % delete blank space
subjectName = strrep(subjectName,'_','');

if isempty(subjectName)
    subjectName = 'test';
end

fileName = ['headingPerception_' subjectName '_' datestr(now,'yymmddHHMM')];
curDir = pwd;
TRIALINFO.degree= str2num(get(handles.degree,'String')); % right: positive; left: negative
TRIALINFO.pupilAdaptionTime = str2double(get(handles.pupilAdaptionTime,'String'));
TRIALINFO.lifeTime = str2double(get(handles.lifeTime,'String'));
TRIALINFO.velocity = str2num(get(handles.velocity,'String'));%% m/s
TRIALINFO.coherence = str2double(get(handles.coherence,'String'));
TRIALINFO.time = str2num(get(handles.moveTime,'String')); % need to notice the FPS
TRIALINFO.deviation = str2double(get(handles.deviation,'String')); % initial binocular deviation, cm
deviationAdjust = 0.2; % how fast to adjust the deviation by key pressing, cm
TRIALINFO.repetition = str2double(get(handles.repeatNum,'String'));%% trial repeat nums
TRIALINFO.choicePeriod = str2double(get(handles.choicePeriod,'String'));
SCREEN.distance = str2double(get(handles.distance,'String'));% cm

TRIALINFO.choiceLeftRight = get(handles.choiceLeftRight,'Value');
TRIALINFO.choiceTopDown = get(handles.choiceTopDown,'Value');

TRIALINFO.feedback = get(handles.feedback,'Value');
TRIALINFO.eyelinkRecording = get(handles.eyelinkRecording,'Value');

if TRIALINFO.eyelinkRecording
    % eye-choice version, define the related threshold
    TRIALINFO.fixationWindow = str2double(get(handles.fixationWindow,'String'));%% eyeWindow set + - 2бу
    TRIALINFO.fixationThreshold = str2double(get(handles.fixationThreshold,'String')); %% chosen when fix on 0.2s = 200ms
    
    % break options
    TRIALINFO.trialBreak = get(handles.trialBreak,'Value');
    TRIALINFO.checkWindowDegree = str2double(get(handles.checkWindow,'String'));
    
    % auto-calibration options
    TRIALINFO.calibration = get(handles.calibration,'Value');
    TRIALINFO.calibrationInterval = str2double(get(handles.calibrationInterval,'String')) * 60; % minutes to seconds
    
    % choicing method
    TRIALINFO.handle = get(handles.handle,'Value');
    TRIALINFO.gazePosition = get(handles.gazePosition,'Value');
else
    TRIALINFO.trialBreak = 0;
    TRIALINFO.calibration = 0;
    TRIALINFO.handle = 1;
    TRIALINFO.gazePosition = 0;
end

dataPath = get(handles.dataPath,'String');
if ~isempty(dataPath)
    try
        mkdir(dataPath);
    catch
        dataPath = fullfile(pwd,'data');
        mkdir(dataPath);
    end
else
    dataPath = fullfile(pwd,'data');
    mkdir(dataPath);
end
TRIALINFO.dataPath = dataPath;

save('log.mat','TRIALINFO','SCREEN');

% set keyboard
KbName('UnifyKeyNames'); 
skipKey = KbName('space'); % force skip the fixation, for debug only
escape = KbName('f1');
leftKey = KbName('LeftArrow');
rightKey = KbName('RightArrow');
upArror = KbName('UpArrow');
cKey = KbName('c'); % force calibration

pageUp = KbName('pageup'); % increase binocular deviation
pageDown = KbName('pagedown'); % decrease binocular deviation

%% parameters
fixationSizeD = 0.25;  % degree
TRIALINFO.fixationPeriod = 0.5; % second

TRIALINFO.intertrialInterval = 1; % second

FRUSTUM.clipNear = 50; % cm
FRUSTUM.clipFar = 100; % cm

% parameters for the star field
STARFIELD.dimensionX = 400;  % cm
STARFIELD.dimensionY = 400;  % cm
STARFIELD.dimensionZ = 700;  % cm
STARFIELD.starSize = 0.1;    % degree
STARFIELD.density = 1000/100^3;    % convert num/m^3 to num/cm^3

STARFIELD.probability = TRIALINFO.coherence;

% parameters for the camera
CAMERA.elevation = 0; % unit cm
CAMERA.distance = SCREEN.distance; % unit cm, distance from participant to the screen
CAMERA.sightDegreeVer = atand(SCREEN.heightCM * 0.5 / CAMERA.distance)*2; % degree of view field on vertical
CAMERA.sightDegreeHor = atand(SCREEN.widthCM * 0.5 / CAMERA.distance)*2; % degree of view field on horizon


timePredicted = (TRIALINFO.fixationPeriod +TRIALINFO.moveDuration + TRIALINFO.intertrialInterval...
    + TRIALINFO.choicePeriod) * TRIALINFO.repetition * length(TRIALINFO.degree) * length(TRIALINFO.time)...
    * length(TRIALINFO.velocity);
    
disp(['This block will cost  ' num2str(timePredicted/60) ' minutes.']);
disp('Press any key to terminate the mission or it will start in 2 seconds.')
tic;
while toc<2
    [ keyDown, ~, ~] = KbCheck;
    if keyDown % press any key to terminate the mission
        return;
    end
end


global GL;
if TRIALINFO.eyelinkRecording
    Screen('Preference', 'SkipSyncTests', 0); % for recording
else
    Screen('Preference', 'SkipSyncTests', 1); % for debug/test
end

AssertOpenGL;
InitializeMatlabOpenGL;

screenIndex = (Screen('Screens'));
if length(screenIndex) > 1
    SCREEN.screenId = max(screenIndex)-1;
else
    SCREEN.screenId = max(screenIndex);
end

PsychImaging('PrepareConfiguration');

% Define background color:
whiteBackground = WhiteIndex(SCREEN.screenId);
blackBackground = BlackIndex(SCREEN.screenId);
grayBackground  = GrayIndex(SCREEN.screenId);

% Open a double-buffered full-screen window on the main displays screen.
[win , winRect] = PsychImaging('OpenWindow', SCREEN.screenId);
SCREEN.widthPix = winRect(3);
SCREEN.heightPix = winRect(4);
SCREEN.centre = [SCREEN.widthPix/2, SCREEN.heightPix/2];

[width, height] = Screen('DisplaySize', SCREEN.screenId);
SCREEN.widthCM = width/10; % mm to cm
SCREEN.heightCM = height/10; % mm to cm

TRIALINFO.fixationSizeP = degree2pix(TRIALINFO.fixationSizeD/2);
TRIALINFO.fixationPosition = [SCREEN.widthPix/2,SCREEN.heightPix/2];

SCREEN.refreshRate = Screen('NominalFrameRate', SCREEN.screenId);

tarDistance = degree2pix(3);
tarShift = degree2pix(0.3);
targetSize = degree2pix(0.25);
TRIALINFO.fixationSize = degree2pix(fixationSizeD);

if TRIALINFO.choiceLeftRight
    tar1Location = [SCREEN.centre(1)-tarDistance SCREEN.centre(2)];
    tar2Location = [SCREEN.centre(1)+tarDistance SCREEN.centre(2)];
end
if TRIALINFO.choiceTopDown
    tar1Location = [SCREEN.centre(1)-tarShift SCREEN.centre(2)-tarDistance];
    tar2Location = [SCREEN.centre(1)+tarShift SCREEN.centre(2)+tarDistance];
end

fixationPosition = [SCREEN.widthPix/2-TRIALINFO.fixationSize, SCREEN.heightPix/2-TRIALINFO.fixationSize,...
    SCREEN.widthPix/2+TRIALINFO.fixationSize, SCREEN.heightPix/2+TRIALINFO.fixationSize];
tar1Position = [tar1Location(1)-targetSize, tar1Location(2)-targetSize,...
    tar1Location(1)+targetSize, tar1Location(2)+targetSize];
tar2Position = [tar2Location(1)-targetSize, tar2Location(2)-targetSize,...
    tar2Location(1)+targetSize, tar2Location(2)+targetSize];

%% the configuration of the Frustum
calculateFrustum();

Screen('BeginOpenGL', win);
glViewport(0, 0, RectWidth(winRect), RectHeight(winRect));
glColorMask(GL.TRUE, GL.TRUE, GL.TRUE, GL.TRUE);
% glEnable(GL_BLEND);
% glEnable(GL_ALPHA_BLEND_CORRECTLY);
% glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
Screen('EndOpenGL', win);

%% trial conditions and order
calculateConditions();
trialIndex = repmat(TRIALINFO.conditions, TRIALINFO.repetition,1);
trialNum = size(trialIndex,1);
trialOrder = randperm(trialNum);

disp(['This block has  ' num2str(trialNum) ' trials']);

% initial Eyelink
if TRIALINFO.eyelinkRecording
    tempName = 'TEMP1'; % need temp name because Eyelink only know hows to save names with 8 chars or less. Will change name using matlab's moveFile later.
    dummymode=0;
    
    el=EyelinkInitDefaults(win);
    el.backgroundcolour = BlackIndex(el.window);
    el.foregroundcolour = GrayIndex(el.window);
    el.msgfontcolour    = WhiteIndex(el.window);
    el.imgtitlecolour   = WhiteIndex(el.window);
    el.calibrationtargetcolour = GrayIndex(el.window);
    
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
    Eyelink('command', 'online_dcorr_refposn = %1d, %1d', SCREEN.centre(1), SCREEN.centre(2));
    Eyelink('command', 'online_dcorr_maxangle = %1d', 30.0);
    
    % you must call this function to apply the changes from above
    EyelinkUpdateDefaults(el);
    
    % Calibrate the eye tracker
    EyelinkDoTrackerSetup(el);
    
    % do a final check of calibration using driftcorrection
    EyelinkDoDriftCorrection(el);
    
    Eyelink('StartRecording');
    
    Eyelink('message', 'SYNCTIME');	 	 % zero-plot time for EDFVIEW
%     eye_used = Eyelink('EyeAvailable'); % get eye that's tracked
%     if eye_used == el.BINOCULAR % if both eyes are tracked
%         eye_used = el.LEFTEYE; % use left eye
%     end
    errorCheck=Eyelink('checkrecording'); 		% Check recording status */
    if(errorCheck~=0)
        fprintf('Eyelink checked wrong status.\n');
        cleanup;  % cleanup function
        Eyelink('ShutDown');
        Screen('CloseAll');
    end
    
    calibrateCkeck = tic;
    % wait a little bit, in case the key press during calibration influence the following keyboard check
    while 1
        [ keyDown, ~, ~] = KbCheck;
        if ~keyDown
            break
        end
    end
end

Screen('FillRect', win ,blackBackground,[0 0 SCREEN.widthPix SCREEN.heightPix]);
Screen('Flip', win,0,0);
% pupil adapting
pupilAdapt = tic;
paI = 0;
while toc(pupilAdapt) <= TRIALINFO.pupilAdaptionTime
    if mod(paI,TRIALINFO.lifeTime) == 0
        modifyStarField();
    end
    
    Screen('BeginOpenGL', win);
    
    % left eye
    glColorMask(GL.TRUE, GL.FALSE, GL.FALSE, GL.FALSE);
    glMatrixMode(GL.PROJECTION);
    glLoadIdentity;
    glFrustum( FRUSTUM.sinisterLeft,FRUSTUM.sinisterRight, FRUSTUM.bottom, FRUSTUM.top, FRUSTUM.clipNear, FRUSTUM.clipFar);
    glMatrixMode(GL.MODELVIEW);
    glLoadIdentity;
    gluLookAt(0-TRIALINFO.deviation,0,0, 0,0,-SCREEN.distance,  0,1,0)
    glClearColor(0,0,0,0);
    glColor3f(1.0,1.0,0.0);
    DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
    
    % right eye
    glColorMask(GL.FALSE, GL.TRUE, GL.FALSE, GL.FALSE);
    glMatrixMode(GL.PROJECTION);
    glLoadIdentity;
    glFrustum( FRUSTUM.dexterLeft,FRUSTUM.dexterRight, FRUSTUM.bottom, FRUSTUM.top, FRUSTUM.clipNear, FRUSTUM.clipFar);
    glMatrixMode(GL.MODELVIEW);
    glLoadIdentity;
    gluLookAt(0+TRIALINFO.deviation,0,0, 0,0,-SCREEN.distance,  0,1,0)
    glClearColor(0,0,0,0);
    glColor3f(1.0,1.0,0.0);
    DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
    
    Screen('EndOpenGL', win);
    
    Screen('Flip', win, 0, 0);
    paI = paI+1;
end
blockSt = tic;
triali = 1;
retryFlag = 0;
choice = zeros(trialNum,1); % 0: no choice; 1: choice left; 2: choice right
while triali <= trialNum
    SetMouse(0,0);
    [ ~, ~, keyCode] = KbCheck;
    if keyCode(escape)
        break;
    end
    
    if TRIALINFO.eyelinkRecording
        % auto-calibration, force calibration is coded on fixation check period
        if TRIALINFO.calibration
            if toc(calibrateCkeck) >= TRIALINFO.calibrationInterval
                EyelinkDoTrackerSetup(el);
                EyelinkDoDriftCorrection(el);
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
                % wait a little bit, in case the key press during calibration influence the following keyboard check
                while 1
                    [ keyDown, ~, ~] = KbCheck;
                    if ~keyDown
                        break
                    end
                end
            end
        end
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
cd(curDir);




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



% --- Executes on button press in handle.
function handle_Callback(hObject, eventdata, handles)
% hObject    handle to handle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of handle



function distance_Callback(hObject, eventdata, handles)
% hObject    handle to distance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of distance as text
%        str2double(get(hObject,'String')) returns contents of distance as a double


% --- Executes during object creation, after setting all properties.
function distance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to distance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
