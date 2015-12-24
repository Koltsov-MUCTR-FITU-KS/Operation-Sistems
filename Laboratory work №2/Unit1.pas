unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FileCtrl;

type
  TForm1 = class(TForm)
    FileListBox1: TFileListBox;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  c,c1,x1,x,Dir,x2,c2, Dir1, d: string;
  p,o: TFileStream;
  i: integer;


implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
c := FileListBox1.FileName;
x := c;
showmessage(x);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
c1 := DirectoryListBox1.Directory;
x1 := c1 + '\' + extractfilename (x);
showmessage(x1);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
copyfile(pchar(x),pchar(x1), true);
end;

procedure TForm1.DirectoryListBox1Change(Sender: TObject);
begin
c1 := DirectoryListBox1.Directory;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 Dir := x1;
 if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],0) then
   createdir(dir);
end;


procedure TForm1.Button6Click(Sender: TObject);
begin
c2 := FileListBox1.FileName;
x2 := c2;
showmessage(x2);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
p:=TFileStream.Create(pchar(x),fmopenread);
o:=TFileStream.Create(pchar(x2),fmopenwrite or fmcreate);
o.CopyFrom(p,p.Size);
p.Free;
o.Free;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
p := TFileStream.Create(pchar(x), fmopenread);
o := TFileStream.Create(pchar(x2), fmopenwrite or fmcreate);
for i:= 1 to (p.size) do
o.copyfrom(p, i);
p.Free;
o.Free;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Dir1 := d;
 if SelectDirectory(Dir1, [sdAllowCreate, sdPerformCreate, sdPrompt],0) then
  
 RemoveDir(Dir1);
end;

end.
