unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Registry;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Button3: TButton;
{    procedure Button3Click(Sender: TObject); }
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  RegIni:TRegIniFile;
  a, b, c, d, e:string;
implementation

{$R *.dfm}

{procedure TForm1.Button3Click(Sender: TObject);
var RegIni:TRegistry;
begin
if RadioButton1.Checked = true then
RegIni.RootKey:=HKEY_CLASSES_ROOT
else
if RadioButton2.Checked = true then
RegIni.RootKey:=HKEY_CURRENT_USER
else
if RadioButton3.Checked = true then
RegIni.RootKey:=HKEY_LOCAL_MACHINE
else
if RadioButton4.Checked = true then
RegIni.RootKey:=HKEY_USERS
else
if RadioButton5.Checked = true then
RegIni.RootKey:=HKEY_CURRENT_CONFIG
else
if RadioButton1.Checked = false then
  if RadioButton2.Checked = false then
    if RadioButton3.Checked = false then
      if RadioButton4.Checked = false then
        if RadioButton5.Checked = false then
           RegIni.RootKey:=HKEY_CURRENT_USER
           else

end;}
procedure TForm1.Button1Click(Sender: TObject);
begin
a:= Edit1.Text;
b:= Edit2.Text;
c:= Edit3.Text;
d:= Edit5.Text;
RegIni:=TRegIniFile.Create(a);
if RegIni.OpenKey(b, true) then
label1.Caption:='Работает';
RegIni.WriteString(c, d, Edit4.Text);
RegIni.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
var RegIni:TRegistry;
begin
RegIni.Create;
if RegIni.DeleteKey(a+'\'+b) then
label1.Caption:='Работает!!!'
end;

end.
