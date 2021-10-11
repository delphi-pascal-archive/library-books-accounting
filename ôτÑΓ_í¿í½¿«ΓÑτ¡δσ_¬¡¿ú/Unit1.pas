unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ExtCtrls, DBCtrls, XPMan, Menus, Grids,
  DBGrids, DB, StdCtrls, Mask, ToolWin,Unit2, ExtDlgs,Unit3,Jpeg, DBTables;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    About1: TMenuItem;
    XPManifest1: TXPManifest;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    ToolBar1: TToolBar;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ImageList1: TImageList;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    GroupBox1: TGroupBox;
    DBEdit7: TDBEdit;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    TabSheet3: TTabSheet;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBGrid2: TDBGrid;
    Label12: TLabel;
    Label15: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    DBEdit5: TDBEdit;
    DBMemo1: TDBMemo;
    N10: TMenuItem;
    N11: TMenuItem;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    Query2: TQuery;
    Table2: TTable;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    procedure N8Click(Sender: TObject);
    procedure About1Click(Sender: TObject);

    procedure N6Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
   
    procedure FormActivate(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
   save, fileSave: boolean;

  fileName: String;
   stDay : array[1..7] of string[11] = ('�����������','�����������','�������',
                                       '�����','�������','�������','�������');
  stMonth : array[1..12] of string[8] = ('������','�������','�����',
                                          '������','���','����','����',
                                          '�������','��������','�������',
                                          '������','�������');

implementation

{$R *.dfm}

procedure TForm1.N8Click(Sender: TObject);
begin
Form2.ShowModal;

end;

procedure TForm1.About1Click(Sender: TObject);
begin
 Form3.ShowModal;

end;



procedure TForm1.N6Click(Sender: TObject);
begin
Close();
end;

procedure TForm1.N10Click(Sender: TObject);
begin
  Label5.Caption:='Yo`nalish :';
  Label7.Caption:='Kurs :';
  Label8.Caption:='Nomer :';
  Label1.Caption:='Ismi :';
  Label2.Caption:='Familya :';
  Label3.Caption:='Otchestva :';
  Label4.Caption:='Tugilgan yili :' ;
  Label13.Caption:='Adres :';
  Label16.Caption:='Telefon :';
  Label9.Caption:='Kitob nomi :';
  Label10.Caption:='Kitob mualifi :';
  Label12.Caption:='Kitob kodi :';
  Label11.Caption:='Masul xodim :';
  Label14.Caption:='Talabaning kitob olgan vaqti :';
  Label15.caption:='Talabaning to`pshirgan vaqti :';
  TabSheet1.Caption:='Asosiy malumotlar';
  TabSheet3.Caption:='Kitoblar';
  GroupBox1.Caption:='Qo`shimcha malumot';
  N1.Caption:='Fayl';
  n6.Caption:='Chiqish';
  n8.Caption:='Qidirish';
  n10.Caption:='Lotincha tilda';
  n11.Caption:='Rus tilda';
  n9.Caption:='Yordam';
    Form2.RadioButton6.Caption:='Yo`nalish';
    Form2.RadioButton4.Caption:='kurs';
    Form2.RadioButton8.Caption:='Guruh';
    Form2.RadioButton1.Caption:='Ism';
    Form2.RadioButton2.Caption:='Familya';
    Form2.RadioButton5.Caption:='Adres';
    Form2.RadioButton7.Caption:='Kitob';
    n7.Caption:='Tuzatish';
    end;

procedure TForm1.N11Click(Sender: TObject);
begin
    Label5.Caption:='����������� :';
    Label7.Caption:='���� :';
    Label8.Caption:='����� :';
    Label1.Caption:='��� :';
    Label2.Caption:='������� :';
    Label3.Caption:='�������� :';
    Label4.Caption:='���� �������� :' ;
    Label13.Caption:='����� :';
    Label13.Caption:='������� :';
    Label9.Caption:='��� ����� :';
    Label10.Caption:='����� ����� :';
    Label12.Caption:='��� ����� :';
    Label11.Caption:='��������� ����� :';
    Label14.Caption:='����� ��������� ����� ��������:';
    Label15.caption:='���� �������� ����� �������� :';
    GroupBox1.Caption:='�������������� ����������';
    N1.Caption:='����';
  n6.Caption:='�����';
  n8.Caption:='�����';
  n10.Caption:='���� �����';
  n11.Caption:='���� ���';
  n9.Caption:='������';
  TabSheet1.Caption:='�������� ����������';
  TabSheet3.Caption:='  �����  ';
  N7.Caption:='������';

  Form2.RadioButton6.Caption:='����������� ';
    Form2.RadioButton4.Caption:='���� ';
    Form2.RadioButton8.Caption:='������';
    Form2.RadioButton1.Caption:='���';
    Form2.RadioButton2.Caption:='�������';
    Form2.RadioButton5.Caption:='�����';
    Form2.RadioButton7.Caption:='�����';

end;



procedure TForm1.FormActivate(Sender: TObject);
var
Present: TDateTime;
  Year, Month, Day : Word;
 begin
with Session do
   begin
     ConfigMode := cmSession;
     try
      AddStandardAlias( 'kollej',
                       ExtractFilePath(ParamStr(0))+'DATA\',
                         'PARADOX');

 Table2.Active:=True;
    finally
      ConfigMode := cmAll;
     end;
 end;
 end;

procedure TForm1.ToolButton8Click(Sender: TObject);
begin
DataSource1.DataSet:=Table2;
end;

end.
