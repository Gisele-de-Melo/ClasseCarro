//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse c�digo foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto n�o me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls;

type

  TCarro = class //Classe Carro
  private
    //Atributos da classe Carro
    FMarca: string;
    FModelo: string;
    FCor: string;
  public
    //M�todo construtor da classe
    constructor Create(Marca, Modelo, Cor: string);

    //M�todos da classe Carro
    procedure Acelerar;
    procedure Frear;
    procedure MostrarDetalhes;
  end;

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }

    //Declara um objeto chamado MeuCarro do tipo TCarro
    MeuCarro : TCarro;

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TCarro }

procedure TCarro.Acelerar;
begin
  //M�todo Acelerar da classe Carro
  ShowMessage('O carro est� acelerando.');
end;

constructor TCarro.Create(Marca, Modelo, Cor: string);
begin
  //M�todo construtor da classe Carro
  //onde ser�o setados os seus atributos assim que a classe for instanciada, ou seja, criada.
  FMarca := Marca;
  FModelo := Modelo;
  FCor := Cor;
end;

procedure TCarro.Frear;
begin
  //M�todo Frear da classe Carro
  ShowMessage('O carro est� freando.');
end;

procedure TCarro.MostrarDetalhes;
begin
  //M�todo Mostrar Detalhes da classe Carro
  ShowMessage('Marca: ' + FMarca + ', Modelo: ' + FModelo + ', Cor: ' + FCor);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  //Chama o m�todo Acelerar do objeto MeuCarro
  MeuCarro.Acelerar;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  //Chama o m�todo Frear do objeto MeuCarro
  MeuCarro.Frear;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //Instanc�a o objeto MeuCarro, passando os atributos do mesmo.
  MeuCarro := TCarro.Create('Honda', 'Civic', 'Vermelho');
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  //Verifica se o objeto meu carro foi instanciado e mata o mesmo,
  //para que n�o fique lixo na mem�ria.
  if Assigned(MeuCarro) then
    FreeAndNil(MeuCarro);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  //Chama o m�todo MostrarDetalhes do objeto MeuCarro
  MeuCarro.MostrarDetalhes;
end;

end.
