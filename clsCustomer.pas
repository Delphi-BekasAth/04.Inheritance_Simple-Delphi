unit clsCustomer;

interface

uses clsPerson,Vcl.Dialogs,Winapi.Messages,System.SysUtils;

type
  TCustomer = class(TPerson)  //���������� ��� TPerson

private
  email: string;


public
  Constructor Create(name,anEmail: string; age: integer);
  procedure SetEmail(anEmail: string);
  procedure PrintInfo; override;    //���������� ��� PrintInfo
  procedure CustEmail; override;

  function GetInfo: string; override;  //���������� ��� GetInfo
  function GetEmail: string;

end;

implementation

constructor TCustomer.Create(name, anEmail: string; age: integer);
begin
  inherited Create(name,age);
  email := anEmail;
end;

procedure TCustomer.SetEmail(anEmail: string);
begin
  email:= anEmail;
end;

function TCustomer.GetEmail: string;
begin
  result:= email;
end;

procedure TCustomer.PrintInfo;
begin
  inherited printInfo;    //������� ��� ��� PrintInfo ��� TPerson
  ShowMessage(name + ' and also a customer');
end;

function TCustomer.GetInfo: string;
begin
  result := name + ' ' + IntToStr(age) + ' ' + email;
end;

procedure TCustomer.CustEmail;
begin
  ShowMessage(email);
end;

end.
