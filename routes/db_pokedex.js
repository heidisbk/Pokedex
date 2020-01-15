const mysql= require('mysql');
const connection =mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'mypasswd',
    database: 'magic'
});

exports.getallpokemon = function (callback) {
    connection.query("select * from pokemon", callback)
};

exports.number_pokemon = function (callback) {
    connection.query("select count(pokemon.numero) from pokemon", callback)
};

exports.type_pokemon = function (callback) {
    connection.query("select pokemon.nom, T1.nom_type as type1, T2.nom_type as type2 from pokemon inner join type T1 on pokemon.type1 = T1.id_type left join type T2 on pokemon.type2 = T2.id_type;", callback)
};

//requete pour toutes les infos sur 1 pokemon
exports.allon1pokemon = function (idPokemon, callback) {
    // idPokemon = parseInt(idPokemon);
    connection.query("select pokemon.numero, pokemon.nom, pokemon.taille, pokemon.poids, T1.nom_type as type1, T2.nom_type as type2 from pokemon inner join type T1 on pokemon.type1 = T1.id_type left join type T2 on pokemon.type2 = T2.id_type where numero = ?;", [idPokemon], (callback))
};
