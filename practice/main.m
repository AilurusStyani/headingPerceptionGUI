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

% Last Modified by GUIDE v2.5 10-Jan-2020 10:38:41

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

% code by BYC for Shanghai High School, last edited in March 2019

% 设置全局变量，以便function直接调用
global MOVE
global SCREEN

clc % 清空命令行窗口
clear STARDATA

subjectName = get(handles.subjectName,'String'); % 获取被试姓名
subjectName = strrep(subjectName,' ',''); % 删除可能输入的空格，生成文件名时不必要的空格会导致bug

% 如果没有输入被试名字，默认为test
if isempty(subjectName)
    subjectName = 'test';
end

% 生成最后保存的文件名，用datastr获取当前时间
fileName = ['eye_' subjectName datestr(now,'yymmddHHMM')];

% 获取输入的参数，注意str2double和str2num的各自的特点
MOVE.heading = str2num(get(handles.degree,'String')); % define heading degree: - for left, + for right. 0 is straight ahead
MOVE.time = str2num(get(handles.moveTime,'String')); % second
MOVE.velocity = str2num(get(handles.velocity,'String')); % m/s
MOVE.repeatNum = str2double(get(handles.repeatNum,'String')); % trial repeat nums
MOVE.coherence = str2double(get(handles.coherence,'String'));
pupilAdaptionTime = str2double(get(handles.pupilAdaptionTime,'String'));
feedback = get(handles.feedback,'Value');
choicePeriod = str2double(get(handles.choicePeriod,'String')); % s
clock = get(handles.clock,'Value');
clockR = 30;

eyelinkRecording = get(handles.eyelinkRecording,'Value'); % 1 for eyelink mode, 0 for debug/test mode
TRIALINFO.calibrationInterval = 10*60; % second

% 或许数据储存路径
dataPath = get(handles.dataPath,'String');

% 如果没有输入储存路径，默认在当前文件夹下生成一个叫data的新文件夹
if isempty(dataPath)
    curdir = pwd;
    saveDir = [curdir '\data\'];
else
    saveDir = dataPath;
end

% 生成储存数据的文件夹，已有同名文件夹不受影响
mkdir(saveDir);

%%%%%%%%%%%%%%%%%%%%%%%%

% 生成每种condition的参数索引，第一行为heading角度，第二行为运动时间，例如角度为h1 h2, 时间为t1 t2
rowHeading = sort(repmat(MOVE.heading,1,length(MOVE.time))); % 生成从小到大的有序重复序列，例如[ h1 h1 h2 h2 h3 h3]
rowTime = repmat(MOVE.time,1,length(MOVE.heading));% 生成保留排序的序列，例如[t1 t2 t1 t2 t1 t2]
% 把两个参数合并，即为所有情况各一次，如
% [h1 h1 h2 h2;
%  t1 t2 t1 t2]
MOVE.group = [rowHeading; rowTime]; 

% 以下为用for循环做同类实现：
% headingN = length(MOVE.heading);
% timeN = length(MOVE.time);
% MOVE.group = zeros(2,headingN*timeN);
% trialN = headingN * timeN * MOVE.repeatNum;
% k=1;
% for i =1:  headingN
%     for j = 1:timeN
%         MOVE.group(1,k) =MOVE.heading(i);
%         MOVE.group(2,k) =MOVE.time(j);
%         k =k+1;
%     end
% end
%%%%%%%%%%%%%%%%%%%%%%%%%


% 根据repetition数量生成所有trial的condition
groupInit = repmat(MOVE.group,1,MOVE.repeatNum);

% 获取总的trial个数
trialN = size(groupInit,2);

% 打乱每个condition的顺序
order = randperm(trialN);

MOVE.eyeSeparation = 0; % 预留为双眼视察的瞳距，当前脚本没有使用
MOVE.camera2screenDist = str2double(get(handles.screenDistance,'String'));

% GL data structure needed for all OpenGL demos:
global GL;
% Is the script running in OpenGL Psychtoolbox? Abort, if not.
AssertOpenGL;
global STARFIELD;
% the size of the star field
STARFIELD.dimensionX = 60;
STARFIELD.dimensionY = 60;
STARFIELD.dimensionZ = 100;
% the size of the star
STARFIELD.StarSize = 0.15;
% the density of the star field
STARFIELD.Density = 1000/100^3;
% the coherence of the star field
STARFIELD.Probability = MOVE.coherence;
% set star's life time
STARFIELD.lifeTime = str2double(get(handles.lifeTime,'string'));

global STARDATA; %% save the coordinates of the stars

% 设定快捷键:
KbName('UnifyKeynames');
leftKey=KbName('LeftArrow');
rightKey=KbName('RightArrow');
escape = KbName('escape');

% Find the screen to use for display:
screenIndex = (Screen('Screens'));
if length(screenIndex) > 1
    screenId = max(screenIndex)-1;
else
    screenId = max(screenIndex);
end

% Setup Psychtoolbox for OpenGL 3D rendering support and initialize the
% mogl OpenGL for Matlab wrapper:
InitializeMatlabOpenGL;

PsychImaging('PrepareConfiguration');

Screen('Preference', 'SkipSyncTests', 1); % if something wrong, try this line

% Open a double-buffered full-screen window on the main displays screen.
[win, winRect] = PsychImaging('OpenWindow', screenId, 0, [], [], [], 0, 0);
SCREEN.center= [winRect(3) winRect(4)]/2;
SCREEN.widthPixel = winRect(3);
SCREEN.heightPixel = winRect(4);

[width, height] = Screen('DisplaySize', screenId);
SCREEN.width = width/10; % mm to cm
SCREEN.height = height/10; % mm to cm

% Get current monitor refreshing rate
refreshRate=Screen('NominalFrameRate', screenId);

% 估算每度大概有多少像素
pixel2deg = MOVE.camera2screenDist*tand(1)*winRect(3)/SCREEN.width;

targetSize = floor(0.25*pixel2deg);
tarDistance = floor(3*pixel2deg); % this is for vertical, if for horizon: floor(7*pixcel2deg);
tarShift = floor(0.3*pixel2deg); % target shift on horizon if located on vertical.

% 如果选项点左右排布，设置两个点的坐标
if get(handles.choiceLeftRight,'Value')
    tar1Location = [SCREEN.center(1)-tarDistance SCREEN.center(2)];
    tar2Location = [SCREEN.center(1)+tarDistance SCREEN.center(2)];
end

% 如果选项点上下排布，设置两个点的坐标
if get(handles.choiceTopDown,'Value')
    tar1Location = [SCREEN.center(1)-tarShift SCREEN.center(2)-tarDistance];
    tar2Location = [SCREEN.center(1)+tarShift SCREEN.center(2)+tarDistance];
end

% 设定fixation point和选项点的大小，及四个角的坐标，用于画出这几个点
fixationPosition = [SCREEN.widthPixel/2-6 SCREEN.heightPixel/2-6 SCREEN.widthPixel/2+6 SCREEN.heightPixel/2+6];
tar1Position = [tar1Location(1)-targetSize tar1Location(2)-targetSize tar1Location(1)+targetSize tar1Location(2)+targetSize];
tar2Position = [tar2Location(1)-targetSize tar2Location(2)-targetSize tar2Location(1)+targetSize tar2Location(2)+targetSize];

% 用于记录当前trial的方位角, 由于trial会有break和abort，所以不能直接记录生成的参数
head=zeros(1,trialN); 

% 每个trial的选择
choice = zeros(1,trialN);

% 类似的记录每个trial的其他参数，包括运动时间及距离、运动开始及结束时间、完成选择以后trial结束时间
time=zeros(1,trialN);
distance= zeros(1,trialN);
frameStartTime = zeros(1,trialN);
frameEndTime = zeros(1,trialN);
choiceTime = zeros(1,trialN);
trialEndTime = zeros(1,trialN);
clockTime = zeros(1,trialN);

%% 设定camera相关参数
clipNear = 10; % camera的近平面距离，比近平面更近的图像不会显示
clipFar = 90; % camera的远平面距离，比远平面更远的图像不会显示

top = (clipNear / MOVE.camera2screenDist) * (SCREEN.height / 2.0); % 计算camera的顶平面
bottom = (clipNear / MOVE.camera2screenDist) * (-SCREEN.height / 2.0); % 计算camera的底平面

right_monocular = (clipNear / MOVE.camera2screenDist) * SCREEN.width / 2.0; % 计算camera的右平面
left_monocular = (clipNear / MOVE.camera2screenDist) * -SCREEN.width / 2.0; % 计算camera的左平面

Screen('BeginOpenGL', win);
% Set viewport properly:
glViewport(0, 0, RectWidth(winRect), RectHeight(winRect));
glColorMask(GL.TRUE, GL.TRUE, GL.TRUE, GL.TRUE);
glMatrixMode(GL.PROJECTION);
glLoadIdentity;

% 调用camera参数设置屏幕
glFrustum( left_monocular,right_monocular, bottom, top, clipNear, clipFar);

Screen('EndOpenGL', win);
WaitSecs(1);

% initial Eyelink
if eyelinkRecording
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
    
    trial = Eyelink('Openfile', tempName);
    if trial~=0
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

%% 开始瞳孔亮度适应
HideCursor(screenId);

% 计算星域
modifyStarField();

pupilAdapt = tic; % 获取当前时间
pupilAdaptI = 0;
while toc(pupilAdapt) <= pupilAdaptionTime
    [ ~, ~, keyCode] = KbCheck;
    if keyCode(escape)
        break;
    end
    
    if mod(pupilAdaptI,STARFIELD.lifeTime)==0
        % 根据设定的lifetime，每一定帧数后重新计算星域位置
        modifyStarField();
    end
    
    Screen('BeginOpenGL', win);
    glColorMask(GL.TRUE, GL.TRUE, GL.FALSE, GL.FALSE);

    % Setup modelview matrix: This defines the position, orientation and
    % looking direction of the virtual camera:
    glMatrixMode(GL.MODELVIEW);
    glLoadIdentity;
    gluLookAt(MOVE.eyeSeparation/2.0+1, 0.0-1, MOVE.camera2screenDist-1,MOVE.eyeSeparation/2.0+1,......
        0.0-1, MOVE.camera2screenDist-1-1.0,0.0,1.0,0.0);
    % Set background clear color to 'black' (R,G,B,A)=(0,0,0,0):
    glClearColor(0,0,0,0);
    % draw the fixation point
    glColor3f(1.0,1.0,0.0);
    Screen('EndOpenGL', win);
    Screen('FillOval', win, [0 255 255 255], fixationPosition);
    
    % 画出设定的星域
    DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
    
    if clock
        drawClock(0,SCREEN.center,clockR);
    end
    % Show'em:
    Screen('Flip', win);
    
    pupilAdaptI = pupilAdaptI+1;
end

i=1;
escFlag = 0;
while i <= trialN
    
    [ ~, ~, keyCode] = KbCheck;
    if keyCode(escape)
        break;
    end
    
    if eyelinkRecording
        % auto-calibration, force calibration is coded on fixation check period
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
    
    % 获取每个trial的参数
    orderi = order(i);
    groupi =groupInit(:,orderi);
    headi = groupi(1);
    disp(['Moving direction ' num2str(headi)]);
    timei = groupi(2);
    distancei = MOVE.velocity * timei;
    head(i)=headi;
    time(i)=timei;
    distance(i)= distancei;
    
    % 计算每一帧的位移
    [cameraX,cameraY,cameraZ]= CalculateConstentVelocityMovement(0,headi,distancei,timei,refreshRate);

    [ ~, ~, keyCode ] = KbCheck;
    if keyCode(escape) % long press escape to break the block
        break;
    end
        
    Screen('BlendFunction', win, GL_ONE, GL_ZERO);
    framesNum = length(cameraY);
    
    % 从第一帧开始投影
    for frames=1:framesNum
        cameraXi = cameraX(frames)*100;
        cameraYi = cameraY(frames)*100;
        cameraZi = cameraZ(frames)*100;
        
        % 一定时间刷新星域
        if(mod(frames,STARFIELD.lifeTime)==0)
            modifyStarField();
        end
        

        Screen('BeginOpenGL', win);
        glColorMask(GL.TRUE, GL.TRUE, GL.FALSE, GL.FALSE);
%         glMatrixMode(GL.PROJECTION);
%         glLoadIdentity;
%         
%         % 调用camera参数
%         glFrustum( left_monocular,right_monocular, bottom, top, clipNear, clipFar);
        
        % Setup modelview matrix: This defines the position, orientation and
        % looking direction of the virtual camera:
        glMatrixMode(GL.MODELVIEW);
        glLoadIdentity;
        gluLookAt(cameraXi, 0.0-cameraYi, MOVE.camera2screenDist-cameraZi,cameraXi,...
            0.0-cameraYi, MOVE.camera2screenDist-cameraZi-1.0,0.0,1.0,0.0);
        % Set background clear color to 'black' (R,G,B,A)=(0,0,0,0):
        glClearColor(0,0,0,0);
        % draw the fixation point
        glColor3f(1.0,1.0,0.0);
        Screen('EndOpenGL', win);
        Screen('FillOval', win, [0 255 255 255], fixationPosition);
        DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
        
        if clock
            drawClock(frames/framesNum,SCREEN.center,clockR);
        end
    
        % Show'em:
        Screen('Flip', win);
        
        if(frames ==1)
            frameStartTime(i) = toc(pupilAdapt); % 记录每个trial刺激开始时间
            if eyelinkRecording
                Eyelink('message', ['Moving Start ' num2str(i)]);
            end
        end

        if(frames ==framesNum)
            frameEndTime(i) = toc(pupilAdapt); % 记录每个trial刺激结束时间
        end
        
    end

    %% choice by keyboard (left: 1    right: 2    abort: 0)
    choice(i) = 0;
    
    % 记录开始选择的时间
    startChoice = tic;
    startChoicei = 1;
    if eyelinkRecording
        Eyelink('message', ['Start choice ' num2str(i)]);
    end
    
    while toc(startChoice) <= choicePeriod
        
        % 每隔一定帧重画星域
        if mod(startChoicei,STARFIELD.lifeTime)==0
            modifyStarField();
        end
        
        % 画出星域和两个target位置
        DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
        Screen('FillOval', win, [255 0 0 255], tar1Position);
        Screen('FillOval', win, [255 0 0 255], tar2Position);
        Screen('Flip', win);
        
        % 读取键盘
        [ ~, ~, keyCode ] = KbCheck;

        if keyCode(leftKey)
            choice(i) = 1; % 选左
            choiceTime(i) = toc(pupilAdapt); % 记录选择时间
            if eyelinkRecording
                Eyelink('message', ['Decision made ' num2str(i) ' as 1']);
            end
            break
        elseif keyCode(rightKey)
            choice(i) = 2; % 选右
            choiceTime(i) = toc(pupilAdapt); % 记录选择时间
            if eyelinkRecording
                Eyelink('message', ['Decision made ' num2str(i) ' as 2']);
            end
            break
        end
        
        startChoicei = startChoicei+1;
    end
    
    % 选时间
    if choice(i)~=0
        if clock
            ShowCursor('Hand',screenId);
            while 1
                % 每隔一定帧重画星域
                if mod(startChoicei,STARFIELD.lifeTime)==0
                    modifyStarField();
                end
                [x,y,mouseDown] = GetMouse(win);
                
                vector = [x,y]-SCREEN.center;
                zeroPoint = [0,-1];
                tP = acos(dot(vector,zeroPoint)/(norm(vector)*norm(zeroPoint)))/2/pi;
                
                if vector(1)<0
                    tP = 1-tP;
                end
                
                % 画出星域和两个target位置
                DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
                drawClock(tP,SCREEN.center,clockR);
                Screen('Flip', win);
                if sum(mouseDown)
                    clockTime(i) = tP*timei;
                    if eyelinkRecording
                        Eyelink('message', ['Clock click ' num2str(i)]);
                    end
                    break
                end
                
                startChoicei = startChoicei+1;
            end
            HideCursor(screenId);
        end
        while 1
            [~,~,buttons] = GetMouse(win);
            if ~sum(buttons)
                break
            end
        end
    end
    %%  给予feedback
    
    % random seed for feedback text
    randomSeed = 0;
    if feedback == 1
         while toc(startChoice) <= choicePeriod+1 % one more second for feedback
            
            % 每隔一定帧重画星域
            if mod(startChoicei,STARFIELD.lifeTime)==0
                modifyStarField();
            end
            
            DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
            randomSeed = drawChoiceInfo(win,choice(i),headi,tar1Position,tar2Position,SCREEN.center,randomSeed);
            Screen('Flip', win);
            
            startChoicei = startChoicei+1;
         end
         
    else 
        % 如果不给feedback就给1s底噪
        waitTime = tic;
        while toc(waitTime) < 1
            % 每隔一定帧重画星域
            if mod(startChoicei,STARFIELD.lifeTime)==0
                modifyStarField();
            end

            % 画出星域和两个target位置
            DrawDots3D(win,[STARDATA.x ; STARDATA.y; STARDATA.z]);
            Screen('FillOval', win, [255 0 0 255], tar1Position);
            Screen('FillOval', win, [255 0 0 255], tar2Position);

            if choice(i) == 1 % 选左
                Screen('FillOval', win, [255 255 0 255], tar1Position);
            elseif choice(i) == 2 % 选右
                Screen('FillOval', win, [255 255 0 255], tar2Position);
            end
            Screen('Flip', win);

            startChoicei = startChoicei+1;
        end
            
    end
    
    if choice(i)~=0
        trialEndTime(i) = toc(pupilAdapt); % 记录trial结束时间
        if eyelinkRecording
            Eyelink('message', ['Trial End ' num2str(i)]);
        end
        i=i+1;
    else
        % 如果未做选择则把当前condition在最后重复
        order(i) = [];
        order = cat(2,order,orderi);
        if eyelinkRecording
            Eyelink('message', ['Missing ' num2str(i)]);
        end
    end
        
    % 逃逸点
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
%% save data
save([saveDir fileName],'head','time','distance','choice','frameStartTime','frameEndTime','choiceTime','trialEndTime','clockTime');
cd(curdir);
Screen('CloseAll');



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



function screenWidth_Callback(hObject, eventdata, handles)
% hObject    handle to screenWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of screenWidth as text
%        str2double(get(hObject,'String')) returns contents of screenWidth as a double




% --- Executes during object creation, after setting all properties.
function screenWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to screenWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function screenHeight_Callback(hObject, eventdata, handles)
% hObject    handle to screenHeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of screenHeight as text
%        str2double(get(hObject,'String')) returns contents of screenHeight as a double


% --- Executes during object creation, after setting all properties.
function screenHeight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to screenHeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function screenDistance_Callback(hObject, eventdata, handles)
% hObject    handle to screenDistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of screenDistance as text
%        str2double(get(hObject,'String')) returns contents of screenDistance as a double


% --- Executes during object creation, after setting all properties.
function screenDistance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to screenDistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in eyelinkRecording.
function eyelinkRecording_Callback(hObject, eventdata, handles)
% hObject    handle to eyelinkRecording (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of eyelinkRecording


% --- Executes on button press in clock.
function clock_Callback(hObject, eventdata, handles)
% hObject    handle to clock (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of clock
