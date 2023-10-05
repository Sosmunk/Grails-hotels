package hotels

class BootStrap {

    def init = { servletContext ->
        def country1 = new Country(name: "США", capitalCity: "Вашингтон").save()
        def country2 = new Country(name:"Россия", capitalCity: "Москва").save()
        def country3 = new Country(name:"Китай", capitalCity: "Пекин").save()
        def country4 = new Country(name:"Франция", capitalCity: "Париж").save()
        def country5 = new Country(name:"Великобритания", capitalCity: "Лондон").save()
        def country6 = new Country(name:"Япония", capitalCity: "Токио").save()
        def country7 = new Country(name:"Украина", capitalCity: "Киев").save()
        def country8 = new Country(name:"Польша", capitalCity: "Варшава").save()
        def country9 = new Country(name:"Бразилия", capitalCity: "Бразилиа").save()
        def country11 = new Country(name:"Ямайка", capitalCity: "Кингстон").save()


        new Hotel(name: "Super hotel", stars: 5, country: country1, website: "https://www.google.com").save()
        new Hotel(name: "Good hotel", stars: 4, country: country2, website:"https://yandex.ru").save()
        new Hotel(name: "Ok hotel", stars: 3, country: country3).save()
        new Hotel(name: "Cheap hotel", stars: 2, country: country4).save()
        new Hotel(name: "No hotel", stars: 1, country: country5).save()
        new Hotel(name: "Fine place", stars: 4, country: country6).save()
        new Hotel(name: "Total war", stars: 2, country: country7).save()
        new Hotel(name: "OOOOO", stars: 1, country: country8).save()
        new Hotel(name: "Sample text", stars: 5, country: country9).save()
        new Hotel(name: "The quick brown fox jumps over the lazy dog", stars: 5, country: country11).save()
        new Hotel(name: "a", stars: 5,  country: country1).save()
        new Hotel(name: "b", stars: 5,  country: country1).save()
        new Hotel(name: "c", stars: 5,  country: country1).save()
        new Hotel(name: "z", stars : 5,  country: country1).save()
        new Hotel(name: "za", stars : 5,  country: country1).save()
        new Hotel(name: "xo", stars : 5,  country: country1).save()
        new Hotel(name: "xox", stars : 5,  country: country1).save()
        new Hotel(name: "x", stars : 5,  country: country1).save()

        new Hotel(name: "!Same Name Different Country!", stars: 5, country: country1).save()
        new Hotel(name: "!Same Name Different Country!", stars: 5, country: country2).save()
        new Hotel(name: "!Same Name Different Country!", stars: 5, country: country3).save()

        new Hotel(name: "NOT WORKING", stars: 5, country:Country.findByName("america")).save()
    }
    def destroy = {
    }
    }
