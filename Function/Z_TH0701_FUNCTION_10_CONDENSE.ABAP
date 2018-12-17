*&---------------------------------------------------------------------*
*& Report  Z_TH0701_CONDENSE
*&
*&---------------------------------------------------------------------*
*& Written By TaeHyeongKim
*& Reporting Date: `18.12.03
*& Subject: Verify 'Condense' Command.
*&---------------------------------------------------------------------*

REPORT  Z_TH0701_CONDENSE.

DATA : test1 TYPE string,
      test2 TYPE string,
      test3 TYPE string.
************************************************************************
*    ������ �¿� ���� ���Ե� test1 �� ����                             *
************************************************************************
 test1 = '        �����ٶ󸶹ٻ�ABCDEF          '.
 WRITE : / test1.
 CONDENSE test1.
 WRITE : / test1.
 test2 = '12345'.
 CONCATENATE test1 test2 inTO test3.
 write : / test3.