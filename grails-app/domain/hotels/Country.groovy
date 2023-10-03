package hotels

class Country {
    String name;
    String capitalCity;
    static constraints = {
        name(blank: false, maxSize: 255)
        capitalCity(blank: false, maxSize: 128)
    }

    @Override
    String toString() {
        return name
    }
}
