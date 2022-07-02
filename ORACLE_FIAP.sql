CREATE OR REPLACE PROCEDURE PR_CALC_VOL (p_raio IN NUMBER) AS
    c_pi number := 3.14;
    v_volume number;

BEGIN
    v_volume := 4/3 * c_pi * p_raio * p_raio * p_raio;
    dbms_output.put_line('volume' || v_volume);
    

END;

set serveroutput on
execute pr_calc_vol(3);

CREATE OR REPLACE PROCEDURE pr_ajuste_salario (p_pot_ajuste in number) as

begin
    update t_medico set vl_salario = vl_salario * (1 + (p_pot_ajuste/100));
END;

select * from t_medico;
execute pr_ajuste_salario(50);
commit;