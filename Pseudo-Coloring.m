function varargout = DIP_Assignment_Submission_19L_0917_BCS6A(varargin)
% DIP_ASSIGNMENT_SUBMISSION_19L_0917_BCS6A MATLAB code for DIP_Assignment_Submission_19L_0917_BCS6A.fig
%      DIP_ASSIGNMENT_SUBMISSION_19L_0917_BCS6A, by itself, creates a new DIP_ASSIGNMENT_SUBMISSION_19L_0917_BCS6A or raises the existing
%      singleton*.
%
%      H = DIP_ASSIGNMENT_SUBMISSION_19L_0917_BCS6A returns the handle to a new DIP_ASSIGNMENT_SUBMISSION_19L_0917_BCS6A or the handle to
%      the existing singleton*.
%
%      DIP_ASSIGNMENT_SUBMISSION_19L_0917_BCS6A('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DIP_ASSIGNMENT_SUBMISSION_19L_0917_BCS6A.M with the given input arguments.
%
%      DIP_ASSIGNMENT_SUBMISSION_19L_0917_BCS6A('Property','Value',...) creates a new DIP_ASSIGNMENT_SUBMISSION_19L_0917_BCS6A or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DIP_Assignment_Submission_19L_0917_BCS6A_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DIP_Assignment_Submission_19L_0917_BCS6A_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DIP_Assignment_Submission_19L_0917_BCS6A

% Last Modified by GUIDE v2.5 15-Apr-2022 17:03:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DIP_Assignment_Submission_19L_0917_BCS6A_OpeningFcn, ...
                   'gui_OutputFcn',  @DIP_Assignment_Submission_19L_0917_BCS6A_OutputFcn, ...
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


% --- Executes just before DIP_Assignment_Submission_19L_0917_BCS6A is made visible.
function DIP_Assignment_Submission_19L_0917_BCS6A_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to DIP_Assignment_Submission_19L_0917_BCS6A (see VARARGIN)

% Choose default command line output for DIP_Assignment_Submission_19L_0917_BCS6A
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes DIP_Assignment_Submission_19L_0917_BCS6A wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = DIP_Assignment_Submission_19L_0917_BCS6A_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
function setGlobalx(val)
global x;
x=val;

function setGlobaly(val)
global y;
y=val;

function setGlobalz(val)
global z;
z=val;

function setGlobalm(val)
global m;
m=val;

function myx = getGlobalx
global x;
myx=x;

function myy = getGlobaly
global y;
myy=y;

function myz = getGlobalz
global z;
myz=z

function mym =  getGlobalm
global m;
mym = m;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% handles    structure with handles and user data (see GUIDATA)

[file,path] = uigetfile({'*.*'},'File Selector');
imagePath = strcat(path,file);
I=imread(imagePath);
I=rgb2gray(I);
axes(handles.axes1);
imshow(I);

[p, q, r]=size(I);
setGlobalx(p);
setGlobaly(q);
setGlobalz(r);


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
I=getimage(handles.axes1);
I=double(I);
min = get(handles.text5,'String');
max = get(handles.text6,'String');
red = get(handles.edit2,'String');
green = get(handles.edit3,'String');
blue = get(handles.edit4,'String');
if (isempty(str2num(min)) || isempty(str2num(max)) || isempty(str2num(red)) || isempty(str2num(green)) || isempty(str2num(blue)))
  fprintf('Error: Enter Text first\n');
else
     minN=str2num(min);
     maxN=str2num(max);
     redN=str2num(red)
     blueN=str2num(blue)
     greenN=str2num(green)
     myx=getGlobalx;
     myy=getGlobaly;
     myz=getGlobalz;
     mym=getGlobalm;
     for i=1:myx
       for j=1:myy
           if I(i,j)>=minN & I(i,j)<maxN
               mym(i,j,1)=redN;
               mym(i,j,2)=greenN;
               mym(i,j,3)=blueN;
           end
       end
     end
end
setGlobalm(mym);
axes(handles.axes2);
imshow(uint8(mym),[]);
newMinN=maxN+1;
slicing = get(handles.text11,'String');
slicingN = str2num(slicing);
newMaxN=newMinN+slicingN;
if newMaxN>256
    newMaxN=256;
end
if newMinN>=255
    set(handles.text5, 'String', num2str(0));
    set(handles.text6, 'String', num2str(slicingN));
    alert = warndlg('Reached Slicing Limit, Memory Cleared!','Alert');
    clc;
    clear all;
end
set(handles.text5, 'String', num2str(newMinN));
set(handles.text6, 'String', num2str(newMaxN));


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 x = get(handles.edit1,'String');
 if isempty(str2num(x))
   fprintf('Error: Enter Numeric Value\n');
 else
   n=str2num(x);
   slicing = round(256/n);
   firstMin=1;
   firstMax=slicing;
   set(handles.text5, 'String', num2str(firstMin));
   set(handles.text6, 'String', num2str(firstMax));
   set(handles.text11, 'String', num2str(slicing));
 end
