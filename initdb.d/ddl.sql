CREATE TABLE themes (
	theme_id			text		NOT NULL
,	title				text		NOT NULL
,	seq					int			NOT NULL
,	created_date_time	timestamptz	DEFAULT CURRENT_TIMESTAMP
,	CONSTRAINT pk_themes PRIMARY KEY(theme_id)
);

CREATE TABLE theme_details (
	theme_id			text		NOT NULL
,	detail_id			int			NOT NULL
,	title				text		NOT NULL
,	created_date_time	timestamptz	DEFAULT CURRENT_TIMESTAMP
,	CONSTRAINT pk_theme_details PRIMARY KEY(theme_id, detail_id)
);
