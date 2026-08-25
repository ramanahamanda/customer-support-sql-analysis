DROP TABLE IF EXISTS customer_support_tickets;

CREATE TABLE customer_support_tickets (
    ticket_id INTEGER PRIMARY KEY,
    customer_name TEXT NOT NULL,
    email TEXT NOT NULL,
    region TEXT NOT NULL,
    category TEXT NOT NULL,
    priority TEXT NOT NULL,
    status TEXT NOT NULL,
    channel TEXT NOT NULL,
    resolution_hours INTEGER,
    satisfaction_score INTEGER
);
