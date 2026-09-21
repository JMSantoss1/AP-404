# Casa em ordem — publicação rápida

## O que está pronto

`index.html` é o sistema responsivo. Ele mostra a responsabilidade de cada dia, pendências em amarelo, check com a pessoa e o horário, e histórico recente. Domingo fica livre para manutenção.

Sem configuração, ele já funciona em um celular, mas o histórico fica salvo apenas naquele aparelho. Para todos verem os mesmos checks, conecte o Supabase (grátis).

## Deixar sincronizado (cerca de 10 minutos)

1. Crie uma conta e um projeto grátis em [Supabase](https://supabase.com/dashboard).
2. No projeto, abra **SQL Editor**, cole e execute o conteúdo de `supabase.sql`.
3. Em **Project Settings → API**, copie a **Project URL** e a chave **anon public**.
4. Abra `index.html` em um editor e preencha `SUPABASE_URL` e `SUPABASE_ANON_KEY` no começo do script. A chave anon é própria para aparecer em sites; as regras do banco limitam o acesso à tabela de checks.

## Colocar no ar, sem custo

1. Crie uma conta no [Netlify Drop](https://app.netlify.com/drop).
2. Arraste a pasta `limpeza-apartamento` para a página.
3. Copie o endereço gerado e envie no grupo do apartamento. Todos usam esse mesmo link.

Para atualizar o site depois, arraste a pasta novamente. Não há servidor para manter. Sugestão: salvem o link na tela inicial do celular pelo menu do navegador.

## Regra de convivência sugerida

A pessoa responsável marca a tarefa após concluir. Se alguém ajudar ou concluir por ela, marca com seu próprio nome: assim o histórico fica transparente sem discussão.

