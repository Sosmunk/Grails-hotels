package hotels

class Hotel {
    String name
    Integer stars
    String website

    static belongsTo = [country: Country]

    static constraints = {
        name(nullable: false, blank: false, maxSize: 255, unique: ['country'])
        stars(nullable: false, min: 1, max: 5)
        website(nullable: true, url: true)

    }
}
