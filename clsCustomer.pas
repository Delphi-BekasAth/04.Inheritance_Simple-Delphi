unit clsCustomer;

interface

uses clsPerson,Vcl.Dialogs,Winapi.Messages,System.SysUtils;

type
  TCustomer = class(TPerson)  //Κληρονομεί την TPerson

private
  email: string;


public
  Constructor Create(name,anEmail: string; age: integer);
  procedure SetEmail(anEmail: string);
  procedure PrintInfo; override;    //Ξαναγράφει την PrintInfo
  procedure CustEmail; override;

  function GetInfo: string; override;  //Ξαναγράφει την GetInfo
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
  inherited printInfo;    //Εκτελεί και την PrintInfo της TPerson
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
