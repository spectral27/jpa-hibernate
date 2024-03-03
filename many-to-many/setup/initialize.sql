CREATE SEQUENCE public.scope_id_seq;
CREATE SEQUENCE public.topic_id_seq;

CREATE TABLE public.scope (
	id int4 NOT NULL DEFAULT nextval('scope_id_seq'::regclass),
	"name" varchar(255) NULL,
	CONSTRAINT scope_pkey PRIMARY KEY (id)
);

CREATE TABLE public.topic (
    id int4 NOT NULL DEFAULT nextval('topic_id_seq'::regclass),
    "name" varchar(255) NULL,
    CONSTRAINT topic_pkey PRIMARY KEY (id)
);

-- scope_topic: table1name + _ + table2name
-- scopes_id: Topic own scope collection called "scopes", membername + _ + id
-- topics_id: Scope own topic collection called "topics", membername + _ + id

CREATE TABLE public.scope_topic (
    scopes_id int4 NOT NULL,
    topics_id int4 NOT NULL,
    CONSTRAINT scope_topic_pkey PRIMARY KEY (scopes_id, topics_id)
);

INSERT INTO public.scope ("name") VALUES ('JPA');
INSERT INTO public.scope ("name") VALUES ('Hibernate');

INSERT INTO public.topic ("name") VALUES ('Java');
INSERT INTO public.topic ("name") VALUES ('Persistence');
INSERT INTO public.topic ("name") VALUES ('API');
INSERT INTO public.topic ("name") VALUES ('Implementation');

INSERT INTO public.scope_topic VALUES (1, 1);
INSERT INTO public.scope_topic VALUES (1, 2);
INSERT INTO public.scope_topic VALUES (1, 3);
INSERT INTO public.scope_topic VALUES (2, 1);
INSERT INTO public.scope_topic VALUES (2, 2);
INSERT INTO public.scope_topic VALUES (2, 4);
