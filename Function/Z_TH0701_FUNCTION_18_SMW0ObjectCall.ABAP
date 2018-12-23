******************************************************************************************
*  DATA TYPE                                                                                    *
*  1. smw0���� ���ø��� �޾ƿ� ���ͳ� ���̺��� Workarea ����                  *
******************************************************************************************
DATA : it_wwwdatatab TYPE TABLE OF wwwdatatab,
       wa_wwwdatatab LIKE LINE OF it_wwwdatatab.

*****************************************************************************
*   SMW0�󿡼� ���÷� �����͸� ������ �� �ֵ��� �ϴ� �Լ�.       *
*****************************************************************************
FORM get_tmplate USING P_TEMPLATE_NAME.

  SELECT SINGLE *
  INTO CORRESPONDING FIELDS OF wa_wwwdatatab 
  FROM wwwdata                          " ������ SAP �� ����� ���ϵ��� �ҷ��� �� �ִ� ���̺� wwwdata
  WHERE 
    objid = 'ZTEST02'                   " objname used when uploading ---> SMW0�󿡼� ����� object name�� ����.
    .

  CALL FUNCTION 'DOWNLOAD_WEB_OBJECT'
    EXPORTING
      key         = wa_wwwdatatab.


ENDFORM.                    " GET_TMPL_FROM_SMW0