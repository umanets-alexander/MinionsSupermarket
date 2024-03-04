unit FAQform;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFForm = class(TForm)
    Memo1: TMemo;
    LinkLabel1: TLinkLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FForm: TFForm;

implementation

{$R *.dfm}

end.
