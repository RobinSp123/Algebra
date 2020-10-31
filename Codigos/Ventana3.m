function varargout = Ventana3(varargin)
% VENTANA3 MATLAB code for Ventana3.fig
%      VENTANA3, by itself, creates a new VENTANA3 or raises the existing
%      singleton*.
%
%      H = VENTANA3 returns the handle to a new VENTANA3 or the handle to
%      the existing singleton*.
%
%      VENTANA3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VENTANA3.M with the given input arguments.
%
%      VENTANA3('Property','Value',...) creates a new VENTANA3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Ventana3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Ventana3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Ventana3

% Last Modified by GUIDE v2.5 15-Oct-2020 23:36:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Ventana3_OpeningFcn, ...
                   'gui_OutputFcn',  @Ventana3_OutputFcn, ...
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


% --- Executes just before Ventana3 is made visible.
function Ventana3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Ventana3 (see VARARGIN)

% Choose default command line output for Ventana3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Ventana3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Ventana3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in determinante.
% Funcion Boton Determinante
function determinante_Callback(hObject, eventdata, handles)
% Se obtiene el numero de filas y el numero de columnas.
fila = str2double(get(handles.filas, 'String'));
columna = str2double(get(handles.columnas, 'String'));
% Se condiciona que si las variables fila o columna obtienen valores que no 
% son numericos se muestre una advertencia. 
if isnan(fila) || isnan(columna)
    warndlg('Se deben ingresar números para el orden de las matrices.', 'Advertencia'); 
else
    %En caso contrario, se condiciona que si el numero de filas no es igual
    %al numero de columnas se muestre un mensaje de advertencia.
    if (fila ~= columna)
        warndlg('Para calcular |A|, la matriz debe ser cuadrada.', 'Advertencia');
    % En caso contrario se obtiene la matriz ingresada, se convierte a
    % datos numericos, se calcula su determinante, se guarda en la variable
    % R y se muestra en el cuadro de texto "respuesta". 
    else
        A = get(handles.matrizA, 'data');
        A = str2double(A);
        R = det(A);
        set(handles.respuesta, 'String', num2str(R));
    end
end
% hObject    handle to determinante (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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
% Funcion Boton Insertar
function insertar_Callback(hObject, eventdata, handles)
% Se obtiene el numero de filas y el numero de columnas.
fila = str2double(get(handles.filas, 'String'));
columna = str2double(get(handles.columnas, 'String'));
% Se condiciona que si las variables fila o columna obtienen valores que no 
% son numericos se muestre una advertencia.  
if isnan(fila) || isnan(columna)
    warndlg('Se deben ingresar números para el orden de las matrices.', 'Advertencia');
else
    %En caso contrario, se condiciona que si el numero de filas no es igual
    %al numero de columnas se muestre un mensaje de advertencia.
    if (fila ~= columna)
        warndlg('Para calcular |A|, la matriz debe ser cuadrada.', 'Advertencia');
    %En caso contrario, se procede a establecer el orden de la matrizA.
    else
        orden = cell (fila, columna);
        orden(:,:)={''};
        set(handles.matrizA, 'Data', orden);
        set(handles.matrizA, 'ColumnEditable', true(1, columna));
    end
end
% hObject    handle to insertar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in regresar.
% Funcion Boton Regresar
function regresar_Callback(hObject, eventdata, handles)
close(Ventana3)
Ventana1
% hObject    handle to regresar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in limpiar.
% Funcion Boton Limpiar
function limpiar_Callback(hObject, eventdata, handles)
% hObject    handle to limpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Limpia los cuadros de texto.
set(handles.filas, 'String', '');
set(handles.columnas, 'String', '');
set(handles.respuesta, 'String', '');
