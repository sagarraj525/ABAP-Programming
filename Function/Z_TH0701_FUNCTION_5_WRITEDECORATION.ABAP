*&---------------------------------------------------------------------*
*& Report  Z_TH0701_WRITE
*&
*&---------------------------------------------------------------------*
*&Written by: TaeHyeong
*&Reporting Data: `18.11.16
*&---------------------------------------------------------------------*
* Scenario 1. ZTHSOCCER ���̺����� 10���� ���� ���ڵ带 �����´�.
*          2. WRITE������ COLOR�� �̿��Ͽ�, ���� �����Ͽ�, ����Ѵ�.
*
REPORT  z_th0701_write.

DATA : it_tab TYPE TABLE OF zthsoccer,
      wa_tab LIKE LINE OF it_tab.

SELECT *
  FROM zthsoccer INTO TABLE it_tab
  UP TO 10 ROWS.

FORMAT COLOR 5.                                            " 1~7������ Į������ �������ش�. 5 = �ʷϻ�.
WRITE:/2(10) '������', 12(10)'����', 22(5)'Ű', 27(6)'������'.
ULINE.

LOOP AT it_tab INTO wa_tab.
  FORMAT COLOR 2.                                           " 1~7������ Į������ �������ش�. 2 = ȸ��.
  WRITE: /2(10) wa_tab-name, 12(10) wa_tab-team, 22(5) wa_tab-height, 27(6) wa_tab-weight.
ENDLOOP.