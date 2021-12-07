unit TestProject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, clsPerson , clsCustomer, System.Generics.Collections	;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ListBox1: TListBox;
    Button4: TButton;
    Button5: TButton;
    Label4: TLabel;
    Button6: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  persons: TList<TPerson>;
  customers: TList<TCustomer>;

implementation

{$R *.dfm}



procedure TForm1.Button1Click(Sender: TObject);
var
  aPerson: TCustomer;
  name,email: string;
  age: integer;

begin

  name := Edit1.Text;
  age := StrToInt(Edit2.Text);
  email := Edit3.Text;

  aPerson := TCustomer.Create(name,email,age);
  try
    persons.Add(aPerson);
    //customers.Add(aPerson);
    ShowMessage('Success!');
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
  except
    ShowMessage('Error!');
  end;

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  aPerson: TPerson;
  name: string;
  age: integer;

begin
  name := Edit1.Text;
  age := StrToInt(Edit2.Text);
  aPerson := TPerson.Create(name, age);

  try
    persons.Add(aPerson);
    ShowMessage('Success!');
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
  except
    ShowMessage('Error!');
  end;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i: integer;
begin

  ListBox1.Clear;
  Label4.Caption := 'All People';

  for i := 0 to persons.Count-1 do
    begin

    ListBox1.Items.Add(persons[i].GetInfo);

    end;

end;

procedure TForm1.Button4Click(Sender: TObject);
var
  i: integer;
begin
    ListBox1.Clear;
    Label4.Caption := 'Customers';
    for i := 0 to persons.Count-1 do
    begin
      if(persons[i].ClassName = 'TCustomer') then
        ListBox1.Items.Add(persons[i].GetInfo);
    end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to persons.Count-1 do
  begin
    persons[i].PrintInfo;
  end;

end;

procedure TForm1.Button6Click(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to persons.Count-1 do
  begin
    if(persons[i].ClassName = 'TCustomer') then
      persons[i].CustEmail;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 persons := TList<TPerson>.Create;
 customers := TList<Tcustomer>.Create;
end;

end.
