program prjUserManagement;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {Form1},
  UUser in 'UUser.pas' {FrmUser},
  ConnectionModule in 'ConnectionModule.pas',
  UEditUser in 'UEditUser.pas' {FrmEdit},
  ULoginActivity in 'ULoginActivity.pas' {FrmLoginActivity};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFrmUser, FrmUser);
  Application.CreateForm(TFrmEdit, FrmEdit);
  Application.CreateForm(TFrmLoginActivity, FrmLoginActivity);
  Application.Run;
end.
