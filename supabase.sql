-- Execute no SQL Editor do Supabase. Mantém somente um check por dia e tarefa.
create table if not exists public.cleaning_checks (
  date date not null,
  task text not null,
  assignee text not null,
  completed_by text not null,
  completed_at timestamptz not null default now(),
  primary key (date, task)
);
alter table public.cleaning_checks enable row level security;
grant usage on schema public to anon;
grant select, insert, update on public.cleaning_checks to anon;
create policy "Leitura pública da escala" on public.cleaning_checks for select using (true);
create policy "Registro público de checks" on public.cleaning_checks for insert with check (true);
create policy "Atualização pública de checks" on public.cleaning_checks for update using (true) with check (true);
