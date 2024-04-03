unit UEditUser;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, Data.DB,
  Data.Win.ADODB, ConnectionModule;

type
  TFrmEdit = class(TForm)
    txtFirstName: TcxTextEdit;
    txtSurname: TcxTextEdit;
    txtCompanyName: TcxTextEdit;
    txtAccNo: TcxTextEdit;
    txtContactno: TcxTextEdit;
    btnSave: TcxButton;
    btnCancel: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtCustomerId: TcxTextEdit;
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEdit: TFrmEdit;

implementation

{$R *.dfm}

procedure TFrmEdit.btnSaveClick(Sender: TObject);
var
  ADOQuery: TADOQuery;
begin
    ADOQuery := TADOQuery.Create(nil);
    try
      ADOQuery.Connection := GetADOConnection;

      ADOQuery.SQL.Text :=
        'UPDATE [dbo].[Customers] ' +
        'SET [FirstName] = :FirstName, ' +
        '    [Surname] = :Surname, ' +
        '    [CompanyName] = :CompanyName, ' +
        '    [AccNo] = :AccNo, ' +
        '    [ContactTelNo] = :ContactTelNo ' +
        'WHERE Id = :CustomerID';

      ADOQuery.Parameters.ParamByName('FirstName').Value := txtFirstName.Text;
      ADOQuery.Parameters.ParamByName('Surname').Value := txtSurname.Text;
      ADOQuery.Parameters.ParamByName('CompanyName').Value := txtCompanyName.Text;
      ADOQuery.Parameters.ParamByName('AccNo').Value := txtAccNo.Text;
      ADOQuery.Parameters.ParamByName('ContactTelNo').Value := txtContactno.Text;
      ADOQuery.Parameters.ParamByName('CustomerID').Value := txtCustomerId.Text;

      ADOQuery.ExecSQL;

      ShowMessage('User updated successfully.');
      ModalResult := mrOk;

    finally
      ADOQuery.Free;
    end;
end;

end.
