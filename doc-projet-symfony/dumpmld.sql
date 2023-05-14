CREATE TABLE catégories(
   Id_cat COUNTER,
   nom_cat VARCHAR(50) NOT NULL,
   PRIMARY KEY(Id_cat),
   UNIQUE(nom_cat)
);

CREATE TABLE auteur(
   id_au COUNTER,
   nom_au VARCHAR(50) NOT NULL,
   prenom_au VARCHAR(50) NOT NULL,
   date_au DATE NOT NULL,
   contact_au VARCHAR(60) NOT NULL,
   PRIMARY KEY(id_au),
   UNIQUE(nom_au),
   UNIQUE(prenom_au),
   UNIQUE(contact_au)
);

CREATE TABLE article(
   id_a COUNTER,
   titre_a VARCHAR(50) NOT NULL,
   content_a TEXT NOT NULL,
   date_a VARCHAR(10) NOT NULL,
   id_au INT NOT NULL,
   PRIMARY KEY(id_a),
   FOREIGN KEY(id_au) REFERENCES auteur(id_au)
);

CREATE TABLE Appartient(
   Id_cat INT,
   id_a INT,
   PRIMARY KEY(Id_cat, id_a),
   FOREIGN KEY(Id_cat) REFERENCES catégories(Id_cat),
   FOREIGN KEY(id_a) REFERENCES article(id_a)
);
