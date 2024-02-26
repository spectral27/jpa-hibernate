CREATE SEQUENCE public.scope_id_seq;
CREATE SEQUENCE public.scope_users_id_seq;
CREATE SEQUENCE public.version_id_seq;

CREATE TABLE public.scope (
	id int4 NOT NULL DEFAULT nextval('scope_id_seq'::regclass),
	"name" varchar(255) NULL,
	CONSTRAINT scope_pkey PRIMARY KEY (id)
);

CREATE TABLE public.scope_users (
	id int4 NOT NULL DEFAULT nextval('scope_users_id_seq'::regclass),
	fullname varchar(255) NULL,
	scope_id int4 NULL,
	CONSTRAINT scope_users_pkey PRIMARY KEY (id)
);

CREATE TABLE public.version (
    id int4 NOT NULL DEFAULT nextval('version_id_seq'::regclass),
    version varchar(255) NULL,
    released date NULL,
    scope_id int4 NULL,
    CONSTRAINT version_pkey PRIMARY KEY (id)
);

INSERT INTO public.scope ("name") VALUES ('JPA');
INSERT INTO public.scope ("name") VALUES ('EclipseLink');

INSERT INTO public.scope_users (fullname, scope_id) VALUES ('Adam Brown', 1);
INSERT INTO public.scope_users (fullname, scope_id) VALUES ('Byron Cole', 1);
INSERT INTO public.scope_users (fullname, scope_id) VALUES ('Colin Davidson', 2);
INSERT INTO public.scope_users (fullname, scope_id) VALUES ('Dylan Evans', 2);

INSERT INTO public.version (version, released, scope_id) VALUES ('3.1.0', '2023-03-31', 1);
