unit PlayerMusique;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.MPlayer,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    MediaPlayer1: TMediaPlayer;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Timer1: TTimer;
    Timer2: TTimer;
    Timer3: TTimer;
    Timer4: TTimer;
    RichEdit1: TRichEdit;
    ProgressBar1: TProgressBar;
    Timer5: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
  OpenDialog1.Execute;  //ouverture de la boite de dialogue
  MediaPlayer1.FileName:=OpenDialog1.FileName; // le fichier choisi est affecter au player
  MediaPlayer1.Open;
  MediaPlayer1.Play; // début de la lecture
  Timer1.Enabled:=True; // déclanchemant du timer pour le clignotant
  Shape1.Brush.Color:=clYellow; // clignotant jaune pour commancer pour logo 1
  Shape2.Brush.Color:=clYellow; // clignotant jaune pour commancer pour logo 2
  Shape3.Brush.Color:=clYellow; // clignotant jaune pour commancer pour logo 3
  RichEdit1.Text:=OpenDialog1.FileName; // affichage dans la zone de text du titre de la musique
  ProgressBar1.Position := MediaPlayer1.Position; // affectation de la position (temps de lectuer ) du player au la ProgressBar
  ProgressBar1.Max := MediaPlayer1.Length; // affectation du temps max de la munique au la ProgressBar
  ProgressBar1.Min := 0;  // affectation du temps min de la munique au la ProgressBar
  Timer5.Enabled:=True;  // déclanchemant de l'écoute du timer pour la ProgressBar
end;


// affectation des différente couleurs pour les différent timer
procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Shape1.Brush.Color:=clRed;
  Timer1.Enabled:=False;
  Timer2.Enabled:=True;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  Shape1.Brush.Color:=clGray;
  Shape2.Brush.Color:=clBlue;
  Timer2.Enabled:=False;
  Timer3.Enabled:=True;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
begin
  Shape2.Brush.Color:=clGray;
  Shape3.Brush.Color:=clBlue;
  Timer3.Enabled:=False;
  Timer4.Enabled:=True;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
begin
  Shape3.Brush.Color:=clGray;
  Shape1.Brush.Color:=clBlue;
  Timer4.Enabled:=False;
  Timer1.Enabled:=True;
end;

// la position de du temps est mis a jour à state = 10
procedure TForm1.Timer5Timer(Sender: TObject);
begin
  ProgressBar1.Position := MediaPlayer1.Position;
  if ProgressBar1.Position = ProgressBar1.Max then
    ProgressBar1.Position:=0;
end;

end.
