*&---------------------------------------------------------------------*
*& Include Z_TH0701_ALV_2_GRIDALV_TOP                        Report Z_TH0701_ALV_2_GRIDALV
*&
*&---------------------------------------------------------------------*

REPORT   Z_TH0701_ALV_2_GRIDALV.
TABLES zthsoccer.
DATA : container TYPE REF TO cl_gui_custom_container,            "�����̳� ����. ---> cl_gui_custom_container Ŭ���� ����.
       grid TYPE REF TO cl_gui_alv_grid,                         "�׸��� ����.  ---> cl_gui_alv_grid Ŭ���� ����.
       it_tab TYPE TABLE OF zthsoccer,                           "���� ����� ���ͳ� ���̺� ���� ����.
       ok_code TYPE sy-ucomm.                                     "Ŭ�� ���� ����.