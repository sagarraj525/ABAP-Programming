*&---------------------------------------------------------------------*
*& Report  Z_TH0701_OSQL_7_UPTOROWS
*&
*&---------------------------------------------------------------------*
*& �˰Ե� ��� 1. �� ���� ���ڵ常 ��ȸ�ϰ� ������ �����ս��� SINGLE�� �������ְ�, ����ü�� �޾ƿ��� ���� ����.
*&          2. �� ���̻��� Ư�� N�� ���� ���ڵ常 ��ȸ�ϰ� ������ �����ս��� UP TO N ROWS�� ������ִ� ���� ����.
*&          3. UP TO N ROWS ������ �⺻������ ������ �̷���� ���¿��� �ϴ� ���� ����.
*&          4. FROM�� --- UP TO ROWS�� --- WHERE�� ... ������ �ڵ���.
*&---------------------------------------------------------------------*

REPORT  z_th0701_osql_7_uptorows.

DATA : it_tab TYPE TABLE OF zthsoccer,
       wa_tab LIKE LINE OF it_tab,
       it_tab_uptorow TYPE TABLE OF zthsoccer.
*----------------------------------------------------------------------- ��ü ����
SELECT *
  FROM zthsoccer INTO TABLE it_tab
  WHERE nation = '�Ƹ���Ƽ��'.

*----------------------------------------------------------------------- UP TO ROWS ���� ��� �κ� ����
SELECT *
  FROM zthsoccer INTO TABLE it_tab_uptorow
  UP TO 2 ROWS
  WHERE nation = '�Ƹ���Ƽ��'.

WRITE : / '��ü ����'.
LOOP AT it_tab INTO wa_tab.
  WRITE : / wa_tab-name, wa_tab-soccer_position, wa_tab-salary.
ENDLOOP.
ULINE.
WRITE : / '���� ���ĵ� ���¿��� ������������ 2�� ����(UP TO 2 ROWS)'.
LOOP AT it_tab_uptorow INTO wa_tab.
  WRITE : / wa_tab-name, wa_tab-soccer_position, wa_tab-salary.
ENDLOOP.