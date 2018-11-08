*&---------------------------------------------------------------------*
*& Report  Z_TH0701_OOP_2_ACCESSOR
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*
* �˰Ե� ��� 1. Private�� ��ü �ܰ迡���� ȣ�� �Ұ�. ---> Public�� ����� �޼����� implementation�� ������ ȣ���ؾ��Ѵ�.
*          2. ������ Private�� �ǰ�, implementation���� public�� ������ ȣ��� private�޼���� �ش� public�޼��带 �ڽĿ��� ȣ���� �� �ٽ� �ѹ� ȣ��ȴ�.
*          3. �޼����� ������ ���ֹ��� �ʴ´�.
*            ---> �α��� ����ϴ� ������ ���, display_population�� �ڿ� ������, �� display_population�� ȣ���ϴ� ����� ��� display_continent�� ���� ���͵� ���ȴ�.
*          4. �޼��� ȣ����� importing(�����δ� exporting)�δ� �ʼ��� �ƴϴ�.
*            ---> ���� �ϰ� �Ƚᵵ ���� �ȳ���.
*          5. sub-class���� super-class�� protected �Լ� ȣ�� �����ϸ�, super-class������ ���� protected�Լ��� implement���� ȣ�� ����.
REPORT  z_th0701_oop_2_accessor.

*----------------------------------------------------------------------*
*       CLASS korea DEFINITION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
CLASS korea DEFINITION.
  PUBLIC SECTION.
    METHODS display_continent.

  PROTECTED SECTION.
    METHODS: display_location.

  PRIVATE SECTION.
    METHODS: display_population
    IMPORTING popul TYPE i
      EXPORTING popul_10000 TYPE i.

ENDCLASS.                    "korea DEFINITION
*----------------------------------------------------------------------*
*       CLASS korea IMPLEMENTATION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
CLASS korea IMPLEMENTATION.
  METHOD display_location.
    WRITE : /'�ѹݵ�'.
  ENDMETHOD.                    "display_location

  METHOD display_continent.
    CALL METHOD display_population( EXPORTING popul = 4000 ).             "Success : Private �޼ҵ忡 ���� �ش� Ŭ���� ���� implementation�ο����� ȣ��.

    WRITE : /'�ƽþ� ���'.
  ENDMETHOD.                    "display_continent
  METHOD display_population.
    popul_10000 = popul * 10000.
    WRITE : / popul_10000, ' �α�'.
  ENDMETHOD.                    "display_population



  "display_population

ENDCLASS.                    "korea IMPLEMENTATION

*----------------------------------------------------------------------*
*       CLASS seoul DEFINITION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
CLASS seoul DEFINITION INHERITING FROM korea.

  PUBLIC SECTION.
    METHODS: display_population_city
    IMPORTING popul_city TYPE i
      EXPORTING popul_10000_city TYPE i.

ENDCLASS.                    "seoul DEFINITION

*----------------------------------------------------------------------*
*       CLASS seoul IMPLEMENTATION
*----------------------------------------------------------------------*
*
*----------------------------------------------------------------------*
CLASS seoul IMPLEMENTATION.
  METHOD display_population_city.
    CALL METHOD display_location( ).                                             "Success : Protected �޼ҵ忡 ���� �ڽ� Ŭ������ implement�ο����� ����.
    popul_10000_city = popul_city * 10000.
    WRITE : / popul_10000_city, ' �α�'.
  ENDMETHOD.                    "display_population
ENDCLASS.                    "seoul IMPLEMENTATION
DATA : obj1 TYPE REF TO korea,
      obj2 TYPE REF TO seoul.

START-OF-SELECTION.
  CREATE OBJECT obj1.
  CREATE OBJECT obj2.

  CALL METHOD obj1->display_continent( ).    "                                  "Success : Public�޼ҵ忡 ���� �ش� Ŭ���� ��ü���� ���� ����.
*  CALL METHOD obj1->display_location( ).                                       "Error : Protected�޼ҵ忡 ���� �ش� Ŭ���� ��ü���� ���� ����. 
  CALL METHOD obj2->display_continent.                                          "Success : Public�޼ҵ忡 ���� �ڽ�Ŭ���� ��ü���� ���� ����.
  CALL METHOD obj2->display_population_city( EXPORTING popul_city = 1000 ). 
* CALL method obj2->display_location( ).                                        "Error : Protected�޼ҵ忡 ���� �ڽ�Ŭ���� '��ü'���� ���� ����