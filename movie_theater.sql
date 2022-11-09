CREATE TABLE "movies" (
  "movie_id" SERIAL PRIMARY KEY,
  "title" VARCHAR(50),
  "genre" VARCHAR(50),
  "runtime" SMALLINT,
  "rating" VARCHAR(25)
);

CREATE TABLE "customer" (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(50),
  "last_name" VARCHAR(50),
  "address" VARCHAR(100),
  "billing_info" VARCHAR(100),
  "email" VARCHAR(75)
);

CREATE TABLE "concessions" (
  "item_id" SERIAL PRIMARY KEY,
  "name" VARCHAR(50),
  "price" NUMERIC(4,2),
  "category" VARCHAR(50)
);

CREATE TABLE "showtimes" (
  "show_id" SERIAL,
  "date" DATE,
  "room_id" SMALLINT,
  "movie_id" INTEGER,
  PRIMARY KEY ("show_id"),
    FOREIGN KEY ("movie_id") REFERENCES "movies"("movie_id")
);

CREATE TABLE "ticket" (
  "ticket_id" SERIAL,
  "customer_id" INTEGER,
  "price" NUMERIC(4,2),
  "show_id" INTEGER,
  "date" DATE,
  "movie_id" INTEGER,
  PRIMARY KEY ("ticket_id"),
    FOREIGN KEY ("customer_id") REFERENCES "customer"("customer_id"),
	FOREIGN KEY ("show_id") REFERENCES "showtimes"("show_id"),
	FOREIGN KEY ("movie_id") REFERENCES "movies"("movie_id")
);

CREATE TABLE "order_" (
  "order_id" SERIAL,
  "ticket_id" INTEGER,
  "item_id" INTEGER,
  "total_price" NUMERIC(8,2),
  "tax" NUMERIC(8,2),
  "order_date" DATE,
  "customer_id" INTEGER,
  PRIMARY KEY ("order_id"),
    FOREIGN KEY ("ticket_id") REFERENCES "ticket"("ticket_id"),
    FOREIGN KEY ("item_id") REFERENCES "concessions"("item_id"),
	FOREIGN KEY ("customer_id") REFERENCES "customer"("customer_id")
);