create table public.contratos_n_n (
  contratante_id bigint not null,
  contratado_id bigint not null,
  constraint contratos_n_n_pkey primary key (contratante_id, contratado_id),
  constraint contratos_n_n_contratado_id_fkey foreign KEY (contratado_id) references contratados_n_n (id),
  constraint contratos_n_n_contratante_id_fkey foreign KEY (contratante_id) references contratantes_n_n (id)
) TABLESPACE pg_default;
