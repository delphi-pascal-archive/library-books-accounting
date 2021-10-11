unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, ComCtrls, Mask, ExtCtrls, DB,
  DBTables;

type
  TForm2 = class(TForm)
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel1: TPanel;
    RadioButton6: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton7: TRadioButton;
    Edit1: TEdit;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
   fam:string[30];

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
  if RadioButton6.Checked then begin
 fam:=Edit1.Text;
    if fam <> '' // пользователь ввел фамилию
    then
       begin
         with form1.Query2 do begin
           Close;       // закрыть файл-результат выполнения предыдущего запроса
           SQL.Clear;   // удалить текст предыдущего запроса
           // записываем новый запрос в свойство SQL
           SQL.Add(' SELECT DISTINCT Yonalish,Kurs,Guruh,Ism,Fam,Otchestva,Data,Adres,Telefon,Infor,K_nom,K_avtor,Maul_xodim,K_kod,K_oldi,K_topshirdi,Rasm,Nomer');
           SQL.Add('FROM ":kollej:kutubxona.DB"');
           SQL.Add('WHERE');
           SQL.Add('(Yonalish= "'+ fam + '")');
           SQL.Add('ORDER BY Yonalish,Kurs,Guruh,Ism,Fam,Otchestva,Adres,Telefon,Infor,K_nom,K_avtor,Maul_xodim,K_kod,Rasm,Nomer');
           Open;         // активизируем выполнение запроса
         end;

         if form1.Query2.RecordCount <> 0 then
           form1.DataSource1.DataSet:=form1.Query2 // отобразить рез-т выполнения запроса
            else begin
              ShowMessage('Bunday Yo`nalish mavjud emas.');
              form1.DataSource1.DataSet:=form1.Table2;
            end;
       end;
       end;
        if RadioButton4.Checked then begin
            fam:=Edit1.Text;
              if fam <> '' then begin
         with form1.Query2 do begin
           Close;
           SQL.Clear;
           // записываем новый запрос в свойство SQL
           SQL.Add(' SELECT DISTINCT Yonalish,Kurs,Guruh,Ism,Fam,Otchestva,Data,Adres,Telefon,Infor,K_nom,K_avtor,Maul_xodim,K_kod,K_oldi,K_topshirdi,Rasm,Nomer');
           SQL.Add('FROM ":kollej:kutubxona.DB"');
           SQL.Add('WHERE');
           SQL.Add('(Kurs= "'+ fam + '")');
           SQL.Add('ORDER BY Yonalish,Kurs,Guruh,Ism,Fam,Otchestva,Adres,Telefon,Infor,K_nom,K_avtor,Maul_xodim,K_kod,Rasm,Nomer');
           Open;
         end;
         if form1.Query2.RecordCount <> 0 then
           form1.DataSource1.DataSet:=form1.Query2
         else begin
              ShowMessage('Bunday Kurs mavjud emas.');
              form1.DataSource1.DataSet:=form1.Table2;
          end;
     end;
   end;


    if RadioButton8.Checked then begin
            fam:=Edit1.Text;
              if fam <> '' then begin
         with form1.Query2 do begin
           Close;
           SQL.Clear;
           // записываем новый запрос в свойство SQL
           SQL.Add(' SELECT DISTINCT Yonalish,Kurs,Guruh,Ism,Fam,Otchestva,Data,Adres,Telefon,Infor,K_nom,K_avtor,Maul_xodim,K_kod,K_oldi,K_topshirdi,Rasm,Nomer');
           SQL.Add('FROM ":kollej:kutubxona.DB"');
           SQL.Add('WHERE');
           SQL.Add('(Guruh= "'+ fam + '")');
           SQL.Add('ORDER BY Yonalish,Kurs,Guruh,Ism,Fam,Otchestva,Adres,Telefon,Infor,K_nom,K_avtor,Maul_xodim,K_kod,Rasm,Nomer');
           Open;
         end;
         if form1.Query2.RecordCount <> 0 then
           form1.DataSource1.DataSet:=form1.Query2
         else begin
              ShowMessage('Bunday Guruh mavjud emas.');
              form1.DataSource1.DataSet:=form1.Table2;
          end;
     end;
   end;

    if RadioButton1.Checked then begin
            fam:=Edit1.Text;
              if fam <> '' then begin
         with form1.Query2 do begin
           Close;
           SQL.Clear;
           // записываем новый запрос в свойство SQL
           SQL.Add(' SELECT DISTINCT Yonalish,Kurs,Guruh,Ism,Fam,Otchestva,Data,Adres,Telefon,Infor,K_nom,K_avtor,Maul_xodim,K_kod,K_oldi,K_topshirdi,Rasm,Nomer');
           SQL.Add('FROM ":kollej:kutubxona.DB"');
           SQL.Add('WHERE');
           SQL.Add('(Ism= "'+ fam + '")');
           SQL.Add('ORDER BY Yonalish,Kurs,Guruh,Ism,Fam,Otchestva,Adres,Telefon,Infor,K_nom,K_avtor,Maul_xodim,K_kod,Rasm,Nomer');
           Open;
         end;
         if form1.Query2.RecordCount <> 0 then
           form1.DataSource1.DataSet:=form1.Query2
         else begin
              ShowMessage('Bunday Ismli talaba mavjud emas.');
              form1.DataSource1.DataSet:=form1.Table2;
          end;
     end;

      end;
        if RadioButton2.Checked then begin
            fam:=Edit1.Text;
              if fam <> '' then begin
         with form1.Query2 do begin
           Close;
           SQL.Clear;
           // записываем новый запрос в свойство SQL
           SQL.Add(' SELECT DISTINCT Yonalish,Kurs,Guruh,Ism,Fam,Otchestva,Data,Adres,Telefon,Infor,K_nom,K_avtor,Maul_xodim,K_kod,K_oldi,K_topshirdi,Rasm,Nomer');
           SQL.Add('FROM ":kollej:kutubxona.DB"');
           SQL.Add('WHERE');
           SQL.Add('(Fam= "'+ fam + '")');
           SQL.Add('ORDER BY Yonalish,Kurs,Guruh,Ism,Fam,Otchestva,Adres,Telefon,Infor,K_nom,K_avtor,Maul_xodim,K_kod,Rasm,Nomer');
           Open;
         end;
         if form1.Query2.RecordCount <> 0 then
           form1.DataSource1.DataSet:=form1.Query2
         else begin
              ShowMessage('Bunday Familyali talaba mavjud emas.');
              form1.DataSource1.DataSet:=form1.Table2;
          end;
     end;
    end;

         if RadioButton5.Checked then begin
            fam:=Edit1.Text;
              if fam <> '' then begin
         with form1.Query2 do begin
           Close;
           SQL.Clear;
           // записываем новый запрос в свойство SQL
           SQL.Add(' SELECT DISTINCT Yonalish,Kurs,Guruh,Ism,Fam,Otchestva,Data,Adres,Telefon,Infor,K_nom,K_avtor,Maul_xodim,K_kod,K_oldi,K_topshirdi,Rasm,Nomer');
           SQL.Add('FROM ":kollej:kutubxona.DB"');
           SQL.Add('WHERE');
           SQL.Add('(Adres= "'+ fam + '")');
           SQL.Add('ORDER BY Yonalish,Kurs,Guruh,Ism,Fam,Otchestva,Adres,Telefon,Infor,K_nom,K_avtor,Maul_xodim,K_kod,Rasm,Nomer');
           Open;
         end;
         if form1.Query2.RecordCount <> 0 then
           form1.DataSource1.DataSet:=form1.Query2
         else begin
              ShowMessage('Bunday Adres mavjud emas.');
              form1.DataSource1.DataSet:=form1.Table2;
          end;
     end;
    end;

    if RadioButton7.Checked then begin
            fam:=Edit1.Text;
              if fam <> '' then begin
         with form1.Query2 do begin
           Close;
           SQL.Clear;
           // записываем новый запрос в свойство SQL
           SQL.Add(' SELECT DISTINCT Yonalish,Kurs,Guruh,Ism,Fam,Otchestva,Data,Adres,Telefon,Infor,K_nom,K_avtor,Maul_xodim,K_kod,K_oldi,K_topshirdi,Rasm,Nomer');
           SQL.Add('FROM ":kollej:kutubxona.DB"');
           SQL.Add('WHERE');
           SQL.Add('(K_nom= "'+ fam + '")');
           SQL.Add('ORDER BY Yonalish,Kurs,Guruh,Ism,Fam,Otchestva,Adres,Telefon,Infor,K_nom,K_avtor,Maul_xodim,K_kod,Rasm,Nomer');
           Open;
         end;
         if form1.Query2.RecordCount <> 0 then
           form1.DataSource1.DataSet:=form1.Query2
         else begin
              ShowMessage('Bunday kitob mavjud emas.');
              form1.DataSource1.DataSet:=form1.Table2;
          end;
     end;
    end;

    end;

end.
