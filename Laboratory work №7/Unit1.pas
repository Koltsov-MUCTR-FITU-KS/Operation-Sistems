unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    ListBox1: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    //procedure Button5Click(Sender: TObject);
   // procedure FormPaint(Sender: TObject);
   // procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  function EnumProc (Wd: HWnd; Param: LongInt): Boolean; stdcall;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
setwindowtext (findwindow(nil,'��� ���������'),'���� ������')

end;

procedure TForm1.Button2Click(Sender: TObject);
var h:HWND;
begin
   h:=FindWindow(nil,'���� ������') ;
   if IsIconic(h)  then
    Showwindow(h,SW_MAXIMIZE)
   else
     Showwindow(h,SW_MINIMIZE);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 ListBox1.Items.Clear;
 EnumWindows (@EnumProc, 0);
end;

function EnumProc (Wd: HWnd; Param: LongInt): Boolean; stdcall;
 Var Nm:Array[0..255] of Char;
Cs: Array[0..255] of Char;
Begin GetWindowText(Wd,Nm,255);
GetClassName(Wd,Cs,255);
Form1.ListBox1.Items.Add(String(Nm)+'/'+String(Cs));

EnumProc := TRUE;
end;
  
procedure TForm1.Button5Click(Sender: TObject);
var canvas:Tcanvas;
    h:HWND;
begin
 h:=FindWindow(nil,'Form1') ;
canvas:=Tcanvas.Create;
canvas.Handle:=getdc(h);
Canvas.Brush.Color := clGreen;
canvas.Rectangle(100,100,500,500);
canvas.Free;
end;

end.
