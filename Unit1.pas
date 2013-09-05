unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, shellapi;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    Edit2: TEdit;
    Edit3: TEdit;
    ComboBox1: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Label9: TLabel;
    ComboBox4: TComboBox;
    Button1: TButton;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Button2: TButton;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  newLetters, newLettersHEX, minLength:string;
   instrument, creator, capacity:boolean;

implementation

{$R *.dfm}



function GetFileName(instrument, creator, capacity:boolean) :string;
var withoutCapacity:string;
begin
 if (instrument = false) then
 begin
    withoutCapacity:='barsCPU';
 end
 else if (instrument = true) then
 begin
    if (creator = false) then
    begin
       withoutCapacity:='barsAMD';
    end
    else if (creator = true) then
         begin
            withoutCapacity:='barsNVIDIA';
         end
         else if (creator = null) then
          begin
            ShowMessage('Выберите производителя видеокарты')
          end;
 end;
if (capacity = false) then
  result:=withoutCapacity + '32'
else if (capacity = true) then
  result:=withoutCapacity + '64'
end;

function GetParams(bigLetters, smallLetters, Numbers, SpecialChars:boolean):string;
var output:string;
begin
output:=' -c ';
if (numbers = true) then
output:=output + '0';
if (smallLetters = true) then
output:=output+'a';
if (bigLetters = true) then
output:=output+'A';
if (specialChars = true) then
output:=output+'~';
if (form1.Edit2.Text <> '') then
output:=output + ' -C ' + Form1.Edit2.Text;
if (form1.Edit3.Text <> '') then
output:=output + ' -X ' + Form1.Edit3.Text;
if (Form1.CheckBox8.Checked = true) then
output:=output + ' -min_len ' + Form1.ComboBox1.Text;
result:=output;
end;

procedure TForm1.Button1Click(Sender: TObject);
var hash:string;
    bigLetters, smallLetters, Numbers, SpecialChars:boolean;
begin
bigLetters:=false;
smallLetters:=false;
Numbers:=false;
SpecialChars:=false;
   if (Length(Edit1.Text) = 32) then
   begin
     hash:=edit1.Text;
        if (checkbox1.Checked = true) then
        smallLetters:=true;
        if (checkbox2.Checked = true) then
        bigLetters:=true;
        if (checkbox3.Checked = true) then
        numbers:=true;
        if (checkbox4.Checked = true) then
        SpecialChars:=true;
     if (checkbox6.Checked = true) then
     if edit2.Text <> '' then
     begin
     newLetters:=edit2.Text;
     end;
     if (checkbox7.Checked = true) then
     if edit3.Text <> '' then
     begin
     newLettersHEX:=edit3.Text;
     end;
     if (CheckBox8.Checked = true) then
        minLength:=ComboBox1.Text;
      if (ComboBox2.Text = 'Процессора') then
          instrument:=false
      else if (ComboBox2.Text = 'Видеокарты') then
      begin
          instrument:=false;
          if (ComboBox3.Text = 'Radeon') then
              creator:=false
          else if (ComboBox3.Text = 'Nvidia') then
              creator:=true
          else if (combobox3.Text = '') then
              creator:=null;
      end;
     if (combobox4.Text = 'x32') then
        capacity:=false
     else if (combobox4.Text = 'x64') then
        capacity:=true;
   ShellExecute(Handle,'open','cmd.exe',
    PWideChar('/c' + GetFileName(instrument, creator, capacity) + '.exe -h ' + hash + GetParams(bigLetters, smallLetters, Numbers, SpecialChars)),
    nil,SW_SHOWNORMAL);
Application.Terminate;
   end
   else
   showMessage('Неправильный хеш');

end;


procedure TForm1.Button2Click(Sender: TObject);
begin
ShellExecute(Handle,'open','cmd.exe',
    PWideChar('/c' + GetFileName(instrument, creator, capacity) + '.exe -r'),
    nil,SW_SHOWNORMAL);
Application.Terminate;
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
if (CheckBox6.Enabled = true) then
edit2.Enabled:=true
end;

procedure TForm1.CheckBox7Click(Sender: TObject);
begin
if (CheckBox7.Enabled = true) then
edit3.Enabled:=true
end;

procedure TForm1.CheckBox8Click(Sender: TObject);
begin
if (CheckBox8.Enabled) = true then
combobox1.Enabled:=true
end;

procedure TForm1.ComboBox2Change(Sender: TObject);
begin
if (combobox2.Text = 'Видеокарты') then
begin
  Combobox3.Enabled:=true;
end
else
begin
  Combobox3.Enabled:=false;
end;

end;

end.
