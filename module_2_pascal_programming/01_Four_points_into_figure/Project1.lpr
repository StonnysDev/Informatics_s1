program Project1;

uses unit1;

var i: integer; //��६����� ��� 横��
    p1:integer; //��ࠫ���쭮��� ����� ��஭��� 1-2 � 3-4
    p2:integer; //��ࠫ���쭮��� ����� ��஭��� 2-3 � 4-1
    d:integer; //㣮� ����� ��஭��� 1-2 � 2-3
    r:integer; //ࠢ���⢮ ����� ��஭��� 1-2 � 2-3
    L:integer; //��६����� ⨯� �����㣮�쭨��
    x: array[1..4] of integer; //���न��� x
    y: array[1..4] of integer; //���न��� y
BEGIN
  L:=0; //䫠��� ����।�������� ����㣮�쭨��
  for i:=1 to 4 do readln(x[i],y[i]); //��ᢠ������ ���न��⠬ x � y ��।������� ���祭��
  if ((x[1]-x[2])*(y[3]-y[4])=(y[1]-y[2])*(x[3]-x[4]))then begin  //�஢�ઠ ��ࠫ���쭮�� ��஭ 1-2 � 3-4
                                                           p1:=1; //䫠��� ��ࠫ���쭮�� ��஭ 1-2 � 3-4
                                                           if ((x[1]-x[4])*(y[2]-y[3])=(y[1]-y[4])*(x[2]-x[3]))then begin  //�஢�ઠ ��ࠫ���쭮�� ��஭ 2-3 � 4-1
                                                                                                                    p2:=1; //䫠��� ��ࠫ���쭮�� ��஭ 2-3 � 4-1
                                                                                                                    if ((x[1]-x[2])*(x[2]-x[3])=(y[1]-y[2])*(y[2]-y[3]))then begin //�஢�ઠ ������ ��אַ�� 㣫� ����� ��஭��� 1-2 � 2-3
                                                                                                                                                                             d:=1; //䫠��� ������ ��אַ�� 㣫� ����� ��஭��� 1-2 � 2-3
                                                                                                                                                                             if exp(1/2*ln((x[1]-x[2])*(x[1]-x[2])+(y[1]-y[2])*(y[1]-y[2])))=exp(1/2*ln((x[2]-x[3])*(x[2]-x[3])+(y[2]-y[3])*(y[2]-y[3]))) then begin //�஢�ઠ ࠢ���⢠ ��஭ 1-2 � 2-3
                                                                                                                                                                                                                                                                                                               r:=1; //䫠��� ࠢ���⢠ ��஭ 1-2 � 2-3
                                                                                                                                                                                                                                                                                                               L:=1; //䫠��� ��।�������� �����㣮�쭨��
                                                                                                                                                                                                                                                                                                               end
                                                                                                                                                                                                                                                                                                          else begin
                                                                                                                                                                                                                                                                                                               r:=0; //䫠��� ��ࠢ���⢠ ��஭ 1-2 � 2-3
                                                                                                                                                                                                                                                                                                               L:=1; //䫠��� ��।�������� �����㣮�쭨��
                                                                                                                                                                                                                                                                                                               end;
                                                                                                                                                                             end
                                                                                                                                                                        else begin
                                                                                                                                                                             d:=0; //䫠��� ������⢨� ��אַ�� 㣫� ����� ��஭��� 1-2 � 2-3
                                                                                                                                                                             L:=1; //䫠��� ��।�������� �����㣮�쭨��
                                                                                                                                                                             end;
                                                                                                                    end
                                                                                                               else begin
                                                                                                                    p2:=0; //䫠��� ����ࠫ���쭮�� ��஭ 2-3 � 4-1
                                                                                                                    L:=1; //䫠��� ��।�������� �����㣮�쭨��
                                                                                                                    end
                                                           end
                                                      else begin
                                                           p1:=0; //䫠��� ����ࠫ���쭮�� ��஭ 1-2 � 3-4
                                                           if ((x[1]-x[4])*(y[2]-y[3])=(y[1]-y[4])*(x[2]-x[3]))then begin
                                                                                                                    p2:=1; //�஢�ઠ ��ࠫ���쭮�� ��஭ 2-3 � 4-1
                                                                                                                    L:=1; //䫠��� ��।�������� �����㣮�쭨��
                                                                                                                    end
                                                                                                               else p2:=0; //䫠��� ����ࠫ���쭮�� ��஭ 2-3 � 4-1
                                                           end;
if L=1 then begin
            writeln (' '); writeln (' '); writeln (' '); writeln (' '); writeln (' '); writeln (' '); //ᮧ����� ����㯠
            writeln (#201,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#203,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#203,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#203,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#203,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#187); //ᮧ����� ���孥� �࠭� ⠡����
            writeln (#186,'��� �����㣮�쭨��',#186,'��஭� 1-2',#186,'��஭� 2-3',#186,'��஭� 3-4',#186,'��஭� 4-1',#186); //�������� �⮫�殢
            writeln (#204,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#206,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#206,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#206,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#206,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#185); //ᮧ����� �।��� �࠭� ⠡����
            write (#186);
            if (p1=1) and (p2=1) and (d=1) and (r=1) then write('������             '); //�뢮� "������"
            if (p1=1) and (p2=1) and (d=1) and (r=0) then write('��אַ㣮�쭨�       '); //�뢮� "��אַ㣮�쭨�"
            if (p1=1) and (p2=1) and (d=0) and (r=0) then write('��ࠫ�����ࠬ       '); //�뢮� "��ࠫ�����ࠬ"
            if ((p1=1) and (p2=0))or((p1=0) and (p2=1)) then write('�࠯���            '); //�뢮� "�࠯���"
            writeln(#186,round(exp(1/2*ln((x[1]-x[2])*(x[1]-x[2])+(y[1]-y[2])*(y[1]-y[2])))):7,'    ',#186, //���� ⨯� �����㣮�쭨�� � ���祭�� ��஭� 1-2
                                                                                                round(exp(1/2*ln((x[2]-x[3])*(x[2]-x[3])+(y[2]-y[3])*(y[2]-y[3])))):7,'    ',#186, //���� ⨯� �����㣮�쭨�� � ���祭�� ��஭� 2-3
                                                                                                round(exp(1/2*ln((x[3]-x[4])*(x[3]-x[4])+(y[3]-y[4])*(y[3]-y[4])))):7,'    ',#186, //���� ⨯� �����㣮�쭨�� � ���祭�� ��஭� 3-4
                                                                                                round(exp(1/2*ln((x[1]-x[4])*(x[1]-x[4])+(y[1]-y[4])*(y[1]-y[4])))):7,'    ',#186); //���� ⨯� �����㣮�쭨�� � ���祭�� ��஭� 4-1

            writeln (#200,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#202,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#202,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#202,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#202,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#205,#188); //ᮧ����� ������ �࠭� ⠡����
            end
       else writeln ('������ �����㣮�쭨� ���।�ᬮ�७���� ⨯�'); //�।�ᬮ�७�� ���� ����� ���।�ᬮ�७���� ����㣮�쭨��
readln(i); //������� ��� ��⠭���� �०���६������ ����砭�� �ணࠬ��
END.
