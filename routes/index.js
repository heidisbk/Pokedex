var express = require('express');
var router = express.Router();
const db_pokedex = require("./db_pokedex");

/* GET home page. */
router.get('/', function(req, res, next) {
    db_pokedex.getallpokemon((error, pokemons, fields) => {
        db_pokedex.type_pokemon((error, types, fields) => {
            console.log(types);
            console.log(pokemons);
            res.render('index', {title: 'Pokédex', pokemons: pokemons, types: types},);
        });
    });
});

/*
router.get('/pokedex', function(req, res, next) {
    db_pokedex.pokemon((error, results, fields) => {
        console.log(results);
        res.render("pokemon.ejs", {pokemon: results});
    });
});
*/

router.get('/affichepokemon', function(req, res, next) {
        res.render("affichepokemon.ejs");
});


router.get('/:pokemon', function(req, res, next) {
    db_pokedex.allon1pokemon(req.params.pokemon, (error, results, fields) => {
        console.log(results);
        res.render('pokemon',
            {
                test: results,
                pokemon: results[0],
                idPokemon: req.params.pokemon,
                title: 'Pokédex'
            });
    });
});

//href="/affichepokemon/<% pokemon[i].numero %>

module.exports = router;
