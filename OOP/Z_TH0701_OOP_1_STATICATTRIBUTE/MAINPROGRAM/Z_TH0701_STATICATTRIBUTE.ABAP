*&---------------------------------------------------------------------*
*& Report  ZBC400_08_ZTEST4
*&
*&---------------------------------------------------------------------*
*&Scenario 1. Static ������ Instance ������ �������� �˾ƺ���.
*&Result 1. Static ���� = object���ε� �����Ǵ� ������ ������
*&       2. Instance ���� = ������ Instance�鿡�Ը� �����ϴ� ������
*&---------------------------------------------------------------------*

REPORT  z_th0701_staticattribute.

INCLUDE Z_TH0701_STATICATTRIBUTE_TOP.

START-OF-SELECTION.

  CREATE OBJECT obj1.                   "��ü ������
  CREATE OBJECT obj2.

  obj1->add_practice( 30 ).             "Static ������ Instance ������ 30�� �������.
  WRITE : / obj1->static_num.           
  WRITE : / obj1->instance_num.
*=======================================Static : 30, Instance : 30.
  obj2->add_practice( 15 ).             "Static ������ Instance ������ 15�� �������.
  WRITE : / obj2->static_num.
  WRITE : / obj2->instance_num.
*=======================================Static : 45, Instance : 15.