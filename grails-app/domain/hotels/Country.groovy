package hotels

class Country {
    String name
    String capitalCity
    static constraints = {
        name(blank: false, maxSize: 255, unique: true)
        capitalCity(blank: false, maxSize: 128)
    }

    static hasMany = [hotels: Hotel]

    @Override
    String toString() {
        return name
    }
}
