// 1. trzy cyfry obok siebie gdziekolwiek

console.log("1. trzy cyfry obok siebie gdziekolwiek")
const reg1=/[0-9]{3}/gi
console.log(reg1.test('127d71g12dg12uydgy')) //prawda
console.log(reg1.test('dasuydas8udh18h')) //falsz


// 2. trzy cyfry  tylko i wyłącznie

console.log("2. trzy cyfry  tylko i wyłącznie")
const reg2=/[0-9]{3}/i
console.log(reg2.test('123'))
console.log(reg2.test('dsada123'))

// 3. trzy cyfry obok siebie na początku i dodatkowe trzy obok siebie  na końcu

console.log("3. trzy cyfry obok siebie na początku i dodatkowe trzy obok siebie  na końcu")
const reg3=/^[0-9]{3}.*[0-9]{3}$/i
console.log(reg3.test('123dsadas123'))
console.log(reg3.test('123'))

// 4. co najmniej cztery znaki alfanumeryczne

// 5. wyłącznie małe lub wielkie litery a, b, d lub f

// 6. na początku nie może być litery x ani litery z

// 7. kod pocztowy

// 8. można wpisać tylko cyfry

// 9. we wzorcu musi wystąpić znak / (np. AC/DC)

// 10. we wzorcu musi być kropka

// 11. we wzorcu musi być na końcu kropka i od 2 do 3 liter od a do z (duże też pasują)

// 12. adres e-mail znaki(litera, cyfra,_.-), małpa, znaki alfanumeryczne razem z _ kroka i od 2 do 3 znaków (liter bez _)

// 13. imię i nazwisko (co najmniej dwie litery, biały znak, co najmniej dwie litery). I dlaczego to nie jest takie proste?