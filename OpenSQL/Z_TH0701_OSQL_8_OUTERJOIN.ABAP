*&---------------------------------------------------------------------*
*& Report  Z_TH0701_OSQL_8_OUTERJOIN
*&
*&---------------------------------------------------------------------*
*& Scenario 1. ZTHSOCCER���̺����� MATION = '���ѹα�' ���ڵ�� 2��(�����, �⼺��).
*&          2. ZTHSOCCER_CAR���̺����� NATION = '���ѹα�' ���ڵ�� 1��(�����).
*&        ---> ����� ZTHSOCCER_CAR�� �������ǿ� �ش��ϴ� ���ڵ尡 ��� ���� 2�� ������ ���� Ȯ���� �� �ִ�.
*& �˰Ե� ��� 1. LEFT OUTER JOIN��, ���ʿ� �ִ� ���̺� �ʵ忡 ���ؼ��� WHERE ������ �� �� �ִ�.
*&        ---> Error : No fields from the right-hand table of a LEFT OUTER JOIN may appear in the WHERE conditions.
*&---------------------------------------------------------------------*

REPORT  z_th0701_osql_8_outerjoin.

DATA : BEGIN OF gs_tab.
        INCLUDE STRUCTURE zthsoccer.
DATA : player_car TYPE zthc20,
END OF gs_tab.

DATA : it_tab LIKE TABLE OF gs_tab,
       wa_tab LIKE LINE OF it_tab.

SELECT a~name b~player_car INTO CORRESPONDING FIELDS OF TABLE it_tab
  FROM zthsoccer AS a LEFT OUTER JOIN  zthsoccer_car AS b
  ON a~name EQ b~soccer_name
  WHERE a~nation = '���ѹα�'.


LOOP AT it_tab INTO wa_tab.
  WRITE : / wa_tab-name, wa_tab-player_car.
ENDLOOP.