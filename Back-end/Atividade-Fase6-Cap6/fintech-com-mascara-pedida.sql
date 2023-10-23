-- Inserindo dados no usuário
INSERT INTO usuarios (email, senha, nome, cpf, email_recuperacao)
VALUES ('[email]', '[senha]', '[nome]', '[cpf]', '[email_recuperacao]');

-- Inserindo dados na conta do usuário
INSERT INTO contas (usuario_id, nome, saldo)
VALUES ([usuario_id], '[nome_conta]', [saldo];

-- Atualizando os dados do usuário
UPDATE usuarios
SET email             = '[new_email]',
    senha             = '[new_senha]',
    nome              = '[new_nome]',
    cpf               = '[new_cpf]',
    email_recuperacao = '[new_email_recuperacao]'
WHERE id = [usuario_id];

-- Inserindo nas receitas
INSERT INTO receitas (usuario_id, tipo, descricao, valor)
VALUES ([usuario_id], '[tipo_receita]', '[descricao_receita]', [valor_receita]);

-- Atualizando as receitas
UPDATE receitas
SET tipo      = '[new_tipo_receita]',
    descricao = '[new_descricao_receita]',
    valor     = [new_valor_receita]
WHERE id = [receita_id];

-- Inserindo nas despesas
INSERT INTO despesas(usuario_id, categoria, descricao, valor)
VALUES ([usuario_id], '[categoria_despesa]', '[descricao_despesa]', [valor_despesa]);

-- Atualizando as despesas
UPDATE despesas
SET categoria = '[new_categoria_despesa]',
    descricao = '[new_descricao_despesa]',
    valor     = [new_valor_despesa]
WHERE id = [despesa_id];

-- Inserindo nos investimentos
INSERT INTO investimentos(usuario_id, tipo, descricao, valor_investido, data_investimento, retorno_estimado)
VALUES ([usuario_id], '[tipo_investimento]', '[descricao_investimento]', [valor_investido], SYSTIMESTAMP, [retorno_estimado]);

-- Atualizando os investimentos
UPDATE investimentos
SET tipo              = '[new_tipo_investimento]',
    descricao         = '[new_descricao_investimento]',
    valor_investido   = [new_valor_investido],
    data_investimento = SYSTIMESTAMP,
    retorno_estimado  = [new_retorno_estimado]
WHERE id = [investimento_id];

SELECT * FROM usuarios WHERE id = [id_usuario];

SELECT * FROM despesas WHERE id = [id_despesa] AND usuario_id = [id_usuario];

SELECT * FROM despesas WHERE usuario_id = [id_usuario] ORDER BY id DESC;

SELECT * FROM investimentos WHERE id = [id_investimento] AND usuario_id = [id_usuario];

SELECT * FROM investimentos WHERE usuario_id = [id_usuario] ORDER BY id DESC;

SELECT *
FROM usuarios u, despesas d, investimentos i
WHERE i.usuario_id = u.id
AND d.usuario_id = u.id
AND ROWNUM <= 1
ORDER BY u.id DESC;
