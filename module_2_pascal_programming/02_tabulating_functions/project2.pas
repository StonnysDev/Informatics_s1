program project2;

{�믮���� ��模�ᮢ �.�. ��ਠ�� �1. ��।����� ��� �����㣮�쭨�� � ����� ��� ��஭}

var
  x1:double;   //����� ���祭�� ���������
  x2:double;   //�ࠢ�� ���祭�� ���������
  dx:double;   //���
  i:integer;   //����� �窨
  N:integer;   //����� ��᫥���� �窨
  j1:integer;  //��᫮ ��������� ����� ��ࢮ� �㭪樨 �� ������� �窠�
  k1:integer;  //��᫮ ��������� ����� ��ன �㭪樨 �� ������� �窠�
  otr:integer; //��६����� �⢥���� �� ����⢮����� ����⥫쭮�� ���祭�� � ��ன �㭪樨
  pol:integer; //��६����� �⢥���� �� ����⢮����� ������⥫쭮�� ���祭�� � ��ன �㭪樨

BEGIN
  writeln('������ �������� (x1 � x2, ��� x1<x2)'); //�ॡ������ ����� ���������
  read(x1,x2); //���� ���������
  while x1>=x2 do begin //�஢�ઠ �� ᮮ⢥��⢨� � �ॡ������� (� ��᫥���騬 ��ࠢ������ � ��砥 �訡��)
                  writeln ('� ����������� ���祭��� x1>=x2, �� �������⨬�. ������ �������� �� ࠧ');
                  read(x1,x2); //���� ���������
                  end;
  writeln('������ 蠣 (dx>0)'); //�ॡ������ ����� 蠣�
  readln(dx); //���� 蠣�
  while (x2-x1<dx) and (dx<=0) do begin //�஢�ઠ �� ᮮ⢥��⢨� � �ॡ������� (� ��᫥���騬 ��ࠢ������ � ��砥 �訡��)
                                  writeln ('�������� 蠣 dx<=0, �� �������⨬�. ������ 蠣 �� ࠧ');
                                  read(dx); //���� 蠣�
                                  end;
  i:=1; //����� �箪�
  N:=trunc((x2-x1)/dx)+1; //����� ��᫥����/�।��᫥���� �窨 (� ����ᨬ��� �� ���樨)
  j1:=0; //��᫮ ��������� ����� ��ࢮ� �㭪樨
  k1:=0; //��᫮ ��������� ����� ��ன �㭪樨
  writeln ('�����   ���祭��   �㭪��     �㭪��'); //�������� �⮫�殢
  writeln ('��窨   ��㬥��   sin(x)      ln(x)'); //�������� �⮫�殢
  writeln (#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205); //�������⥫쭠� ���
  for i:=1 to N do begin //��砫� 横��
                   write (i:4,' '); //�뢮� ����� �窨
                   write (x1:5,'   '); //�뢮� ���祭�� �窨
                   write (sin(x1):5,' '); //�뢮� ���祭�� ��ࢮ� �㭪樨 �� �⮩ �窥
                   if (i>1) and (((sin(x1)>=0) and (sin(x1-dx)<0)) or ((sin(x1)<0) and (sin(x1-dx)>=0))) then j1:=j1+1; //��宦����� �᫠ ��������� ����� ��ࢮ� �㭪樨
                   if x1<=0 then writeln ('  *   ') //�஢�ઠ �� ��� ��ன �㭪樨
                            else begin
                                 writeln (ln(x1):5,' '); //�뢮� ���祭�� ��ன �㭪樨 �� �����⭮� �窥
                                 if ln(x1)<0 then otr:=1; //�஢�ઠ �� ����稥 ����⥫쭮�� ���祭��
                                 if ln(x1)>0 then pol:=1; //�஢�ઠ �� ����稥 ������⥫쭮�� ���祭��
                                 end;
                   x1:=x1+dx; //��蠣���� 㢥��祭�� ���祭�� �窨
                   end; //����� 横��
  if x1-dx<x2 then begin //�������⥫쭮� �᫮��� �� ��砩, �᫨ � ���ࢠ�� ��室���� �� 楫�� �᫮ 蠣��
                   write (i+1:4,' '); //�뢮� ����� �窨
                   write (x2:5,'   '); //�뢮� ���祭�� �窨
                   write (sin(x2):5,' '); //�뢮� ���祭�� ��ࢮ� �㭪樨 �� �⮩ �窥
                   if (i>1) and (((sin(x2)>=0) and (sin(x1-dx)<0)) or ((sin(x2)<0) and (sin(x1-dx)>0))) then j1:=j1+1; //��宦����� �᫠ ��������� ����� ��ࢮ� �㭪樨
                   if x1<=0 then writeln ('  *   ') //�஢�ઠ �� ��� ��ன �㭪樨
                            else begin
                                 writeln (ln(x2):5,' '); //�뢮� ���祭�� ��ன �㭪樨 �� �����⭮� �窥
                                 if ln(x2)<0 then otr:=1; //�஢�ઠ �� ����稥 ����⥫쭮�� ���祭��
                                 if ln(x2)>0 then pol:=1; //�஢�ઠ �� ����稥 ������⥫쭮�� ���祭��
                                 end;
                   x1:=x1+dx; //��蠣���� 㢥��祭�� ���祭�� �窨
                   end; //����� �᫮���
  if (otr=1) and (pol=1) then k1:=1; //�஢�ઠ �� ��������� ����� ��ன �㭪樨
  writeln (#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205); //�������⥫쭠� ���
  writeln('�� ����᫥��� �窠� ��ࢠ� �㭪�� �����﫠 ���� �⮫쪮 ࠧ: ',j1); //�뢮� �᫠ ��������� ����� ��ࢮ� �㭪樨
  writeln('�� ����᫥��� �窠� ���� �㭪�� �����﫠 ���� �⮫쪮 ࠧ: ',k1); //�뢮� �᫠ ��������� ����� ��ன �㭪樨
  readln(dx); //������� ��� ��⠭���� �०���६������ �����襭�� �ணࠬ��
  END.
