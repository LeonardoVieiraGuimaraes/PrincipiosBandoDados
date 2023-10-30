create or replace package teste_package is
-- definição de functions e procedures (somente a definição)
    create or replace function f_valida_cpf(p_cpf varchar2)
returnvarchar2;
end
teste_package;
create or replace package body teste_package is

    -- definição de functions e procedures (definição e implementação)
create function f_valida_cpf(p_cpf varchar2) returnvarchar2is
l_result varchar2(1);
begin
    l_result := 'N';
    if (length(p_cpf) = 11) then
        l_result := 'S';
    end if;
    return l_result;
end f_valida_cpf;
end teste_package;

select teste_package.f_valida_cpf(‘numero do cpf’) from
    dual;