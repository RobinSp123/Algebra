function varargout = Ventana2(varargin)
% VENTANA2 MATLAB code for Ventana2.fig
%      VENTANA2, by itself, creates a new VENTANA2 or raises the existing
%      singleton*.
%
%      H = VENTANA2 returns the handle to a new VENTANA2 or the handle to
%      the existing singleton*.
%
%      VENTANA2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VENTANA2.M with the given input arguments.
%
%      VENTANA2('Property','Value',...) creates a new VENTANA2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Ventana2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Ventana2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Ventana2

% Last Modified by GUIDE v2.5 15-Oct-2020 21:49:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ventana2_OpeningFcn, ...
                   'gui_OutputFcn',  @Ventana2_OutputFcn, ...
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


% --- Executes just before Ventana2 is made visible.
function Ventana2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Ventana2 (see VARARGIN)

% Choose default command line output for Ventana2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Ventana2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Ventana2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function filas_Callback(hObject, eventdata, handles)
% hObject    handle to filas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of filas as text
%        str2double(get(hObject,'String')) returns contents of filas as a double


% --- Executes during object creation, after setting all properties.
function filas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function columnas_Callback(hObject, eventdata, handles)
% hObject    handle to columnas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of columnas as text
%        str2double(get(hObject,'String')) returns contents of columnas as a double


% --- Executes during object creation, after setting all properties.
function columnas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to columnas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in insertar.
% Función del Boton Insertar
function insertar_Callback(hObject, eventdata, handles)
% Se obtiene el numero de filas y el numero de columnas.
fila = str2double(get(handles.filas, 'String'));
columna = str2double(get(handles.columnas, 'String'));
% Se condiciona que si las variables fila o columna obtienen valores que no 
% son numericos se muestre una advertencia.  
if isnan(fila) || isnan(columna)
    warndlg('Se deben ingresar números para el orden de las matrices.', 'Advertencia');
% De lo contrario se procede a establecer el orden ingresado a la matrizA y
% a la matrizB.
else
    orden = cell (fila, columna);
    orden(:,:)={''};
    set(handles.matrizA, 'Data', orden);
    set(handles.matrizA, 'ColumnEditable', true(1, columna));
    set(handles.matrizB, 'Data', orden);
    set(handles.matrizB, 'ColumnEditable', true(1, columna));
end
% hObject    handle to insertar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in limpiar.
% Funcion Boton Limpiar
function limpiar_Callback(hObject, eventdata, handles)
%LIMPIAR LOS CUADROS DE TEXTO
set(handles.filas, 'String', '');
set(handles.columnas, 'String', '');
set(handles.resultado, 'String', '');
% hObject    handle to limpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in sumar.
% Funcion Boton Sumar A+B
function sumar_Callback(hObject, eventdata, handles)
% Se obtienen el numero de filas y columnas ingresados.
fila = str2double(get(handles.filas, 'String'));
columna = str2double(get(handles.columnas, 'String'));
% Se condiciona que si las variables fila o columna obtienen valores que no 
% son numericos se muestre una advertencia. 
if isnan(fila) || isnan(columna)
    warndlg('Se deben ingresar números para el orden de las matrices.', 'Advertencia');
%De caso contrario se obtiene los valores ingresados en la matriz A y B se
%crea la matriz R que contiene el resultado de sumar A+B y se muestra.
else
    A = get(handles.matrizA, 'data');
    A = str2double(A);
    B = get(handles.matrizB, 'data');
    B = str2double(B);
    R = A + B;
    set(handles.resultado, 'String', num2str(R));
end
% hObject    handle to sumar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in restar.
% Funcion Boton Restar A-B
function restar_Callback(hObject, eventdata, handles)
% Se obtienen el numero de filas y columnas ingresados.
fila = str2double(get(handles.filas, 'String'));
columna = str2double(get(handles.columnas, 'String'));
% Se condiciona que si las variables fila o columna obtienen valores que no 
% son numericos se muestre una advertencia.
if isnan(fila) || isnan(columna)
    warndlg('Se deben ingresar números para el orden de las matrices.', 'Advertencia');
%De caso contrario se obtiene los valores ingresados en la matriz A y B se
%crea la matriz R que contiene el resultado de restar A-B y se muestra.    
else
    A = get(handles.matrizA, 'data');
    A = str2double(A);
    B = get(handles.matrizB, 'data');
    B = str2double(B);
    R = A - B;
    set(handles.resultado, 'String', num2str(R));
end
% hObject    handle to restar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
% Funcion boton Regresar
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(Ventana2)
Ventana1
