unit clsPerson;

interface
uses Winapi.Messages,Vcl.Dialogs,System.SysUtils;

type
  TPerson = class (TObject)
    protected   //??????????? ??? ??? ??? ??????????
    name: string;
    age: integer;

    public
    Constructor Create(aName: string; anAge: integer);
    procedure SetName(aName: string);
    procedure SetAge(anAge: integer);
    procedure PrintInfo; virtual;   //?????? ?? ????? ?????????? ??? ??? ??????????
    procedure CustEmail; virtual; abstract;

    function GetInfo:string; virtual;  //?????? ?? ????? ?????????? ??? ??? ??????????
    function GetName: string;
    function GetAge: integer;

  end;

implementation

Constructor TPerson.Create(aName: string; anAge: integer);
begin

  name := aName;
  age := anAge;
end;

procedure TPerson.SetName(aName: string);
begin
  name:= aName;
end;

procedure TPerson.SetAge(anAge: integer);
begin
  age:= anAge;
end;

function TPerson.GetName: string;
begin
  result :=  name;
end;

function TPerson.GetAge: Integer;
begin
  result := age;
end;

procedure TPerson.PrintInfo;
begin
  ShowMessage(name + ' is a person');
end;

function TPerson.GetInfo: string;
begin
  result := name + ' ' + IntToStr(age);
end;


end.



