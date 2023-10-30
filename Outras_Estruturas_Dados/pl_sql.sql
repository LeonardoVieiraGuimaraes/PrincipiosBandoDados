create or replace procedure p_atrasa_consulta(p_consulta, consulta.nr_sequencia%type, p_solic_paciente varchar) is l_data_hora_inicio_ant date;

begin
    -- se atraso foi solicitado pelo paciente
-- busca as datas antigas para armazenar no campo ds_observacao
    if (p_solic_paciente = 'S') then
        select dt_hora_inicio
        into l_data_hora_inicio_ant
        from consulta
        where nr_sequencia = p_consulta;

-- atualiza o campo de observação

        update consulta
        set ds_observacao = 'Paciente solicitou alteração de consulta. A data antiga era ' || to_char(l_data_ hora_inicio_ant, 'DD/MM/YYYY HH24:MI:SS')
        where nr_sequencia = p_consulta;
    end if;
-- atrasa a consulta em um dia
    update consulta
    set dt_hora_inicio = dt_hora_inicio + 1,
        dt_hora_fim    = dt_hora_fim + 1
    where nr_sequencia = p_consulta;
end p_atrasa_consulta;
exec p_atrasa_consulta(110, ‘S’);
commit;


create or replace function f_valida_cpf(p_cpf varchar2)
    return varchar2 is
    l_result varchar2(1);
    begin
        l_result := 'N';
        if(length(p_cpf) = 11) then
            l_result := 'S';
        end if;
        return l_result;
    end f_valida_cpf;

select f_valida_cpf(‘numero do cpf’) from dual;