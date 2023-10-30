create or replace trigger valida_cpf_paciente
    before insert or update on paciente
    for each row
begin
    if(f_valida_cpf(:new.cpf_paciente) = 'N') then
        raise_application_error(-20500, 'CPF inválido');
    end if;
end valida_cpf_paciente;

update paciente set cpf_paciente = '565' where nr_
    sequencia = 11;