function varargout = Ventana1(varargin)
% VENTANA1 MATLAB code for Ventana1.fig
%      VENTANA1, by itself, creates a new VENTANA1 or raises the existing
%      singleton*.
%
%      H = VENTANA1 returns the handle to a new VENTANA1 or the handle to
%      the existing singleton*.
%
%      VENTANA1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VENTANA1.M with the given input arguments.
%
%      VENTANA1('Property','Value',...) creates a new VENTANA1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Ventana1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Ventana1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Ventana1

% Last Modified by GUIDE v2.5 16-Oct-2020 00:11:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ventana1_OpeningFcn, ...
                   'gui_OutputFcn',  @Ventana1_OutputFcn, ...
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


% --- Executes just before Ventana1 is made visible.
function Ventana1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Ventana1 (see VARARGIN)

% Choose default command line output for Ventana1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Ventana1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Ventana1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in sumaResta.
%Funcion del boton "Suma/Resta de Matrices
%Se cierra la ventana actual "Ventana1" y se abre la Ventana2
function sumaResta_Callback(hObject, eventdata, handles)
close(Ventana1)
Ventana2
% hObject    handle to sumaResta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in determ.
%Funcion del boton "DETERMINANTE" 
%Cierra la ventana actual "Ventana1" y abre la Ventana3
function determ_Callback(hObject, eventdata, handles)
close(Ventana1)
Ventana3
% hObject    handle to determ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
