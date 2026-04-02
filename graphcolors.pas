unit graphcolors;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Buttons;

type
  { TGraphColorEntry: pairs a label caption with a color button }

  { TfrmGraphColors }

  TfrmGraphColors = class(TForm)
    btnBackground: TColorButton;
    btnGridLines: TColorButton;
    btnVoltageAxis: TColorButton;
    btnCurrentAxis: TColorButton;
    btnTimeAxis: TColorButton;
    btnVoltageLine: TColorButton;
    btnCurrentLine: TColorButton;
    btnOk: TButton;
    btnCancel: TButton;
    btnDefaults: TButton;
    lblBackground: TLabel;
    lblGridLines: TLabel;
    lblVoltageAxis: TLabel;
    lblCurrentAxis: TLabel;
    lblTimeAxis: TLabel;
    lblVoltageLine: TLabel;
    lblCurrentLine: TLabel;
    grpColors: TGroupBox;
    procedure btnDefaultsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
    procedure SetDefaults;
  end;

var
  frmGraphColors: TfrmGraphColors;

implementation

{$R *.lfm}

{ TfrmGraphColors }

procedure TfrmGraphColors.FormCreate(Sender: TObject);
begin
  SetDefaults;
end;

procedure TfrmGraphColors.SetDefaults;
begin
  btnBackground.ButtonColor  := clWhite;
  btnGridLines.ButtonColor   := clGray;
  btnVoltageAxis.ButtonColor := clBlue;
  btnCurrentAxis.ButtonColor := clRed;
  btnTimeAxis.ButtonColor    := clDefault;
  btnVoltageLine.ButtonColor := clBlue;
  btnCurrentLine.ButtonColor := clRed;
end;

procedure TfrmGraphColors.btnDefaultsClick(Sender: TObject);
begin
  SetDefaults;
end;

end.
