CREATE TABLE public.reference_data (
	domain varchar(20) NOT NULL,
	code varchar(50) NOT NULL,
	locale varchar(20) ,
	wording varchar(100) NOT NULL,
	other_info json NULL,
	updated_at timestamptz DEFAULT CURRENT_TIMESTAMP NOT NULL,
	CONSTRAINT reference_data_unique UNIQUE (domain, code, locale)
);