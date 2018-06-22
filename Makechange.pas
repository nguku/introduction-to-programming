program Makechange(input, output);

{given the a thousand shillings, compute the change and the minimum change required}
const 
    Amount = 1000;
var
    Purchase, Change: Real;
    Shillings, Fifty, Onehundred,Twohundred, fivehundred: Integer;
Begin
    Write('input Purchase, Maximum 1000');
    Readln(Purchase);
    Change:= Amount -Purchase;
    Shillings:= Round(change);
    Fivehundred:=Shillings Div 500;
    Shillings := Shillings Mod 500;
    Twohundred := Shillings Div 200;
    Shillings:= Shillings Mod 200;
    Onehundred:= Shillings Div 100;
    Shillings := Shillings Mod 100;
    Fifty := Shillings Div 50;
    Shillings := Shillings Mod 50;
    {print results}
    
    Writeln('Amount of purchase = KSh ', Purchase:6:2);
    writeln('Balance = Ksh', Change: 2:2);
    writeln('change ... ');
    if Fivehundred <> 0 then
        Writeln(Fivehundred:2, ' five hundred notes');
    if Twohundred <> 0 then
        writeln(Twohundred:2, ' two hundred notes');
    if Onehundred <> 0 then
        writeln(Onehundred:2, ' one hundred notes');
    if Fifty <> 0 then
        writeln(Fifty:2, ' fifty shillings notes');
    if Shillings <> 0 then
        writeln(Shillings:2, ' shillings');
    Readln();
End.
