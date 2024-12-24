
CREATE TABLE IF NOT EXISTS pin (
    id SERIAL PRIMARY KEY,
    created_date DATE NOT NULL,
    label TEXT NOT NULL,
    latitude FLOAT NOT NULL,
    longitude FLOAT NOT NULL,
    notes TEXT
);

CREATE TABLE IF NOT EXISTS segment (
    id SERIAL PRIMARY KEY,
    pin_from INT NOT NULL,
    pin_to INT NOT NULL,
    from_date DATE,
    to_date DATE,
    FOREIGN KEY (pin_from) REFERENCES pin(id),
    FOREIGN KEY (pin_to) REFERENCES pin(id)
);
