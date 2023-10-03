package hotels

import grails.gorm.services.Service

interface ICountryService {

    Country get(Serializable id)

    List<Country> list(Map args)

    Long count()

    void delete(Serializable id)

    Country save(Country country)

}

@Service(Country)
abstract class CountryService implements ICountryService {

    List<Country> getAllCountriesByName(String name, Map params) {
        def criteria = Country.createCriteria()
        def countryList = criteria.list(params) {
            ilike("name", "%${name}%")
        }
        return countryList
    }
}