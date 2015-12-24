unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit2;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
     co:tnew;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   count:integer;
implementation




{$R *.dfm}

procedure TForm1.Button3Click(Sender: TObject);
begin
if co.suspended then
co.resume
else
co.Suspend;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
if count = 0 then
begin
co:=tnew.Create(true);
co.Resume;
co.Priority:=tpNormal;
count:=1;
Button2.Enabled:=True;
Button3.Enabled:=True;
end
else
co.Resume;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Button2.Visible:=True;
co.Terminate;
co.Free;
Label1.Caption := '0';
count:=0;
Button2.Enabled:=false;
Button3.Enabled:=false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
count:=0;
end;

end.
