package hotels

import grails.gorm.services.Service

interface IHotelService {

    Hotel get(Serializable id)

    List<Hotel> list(Map args)

    Long count()

    void delete(Serializable id)

    Hotel save(Hotel hotel)

    List<Hotel> listByHotelNameAndCountryName(String name, Long country, Map params)

}

@Service(Hotel)
abstract class HotelService implements IHotelService {

    @Override
    List<Hotel> listByHotelNameAndCountryName(String hotelName, Long countryId, Map params) {
        def criteria = Hotel.createCriteria()
        def hotelList = criteria.list(max: params.max, offset: params.offset, sort: "name", order: "asc") {

            ilike("name", "%${hotelName}%")
            and {
                if (countryId){
                    'country'{
                        eq("id", countryId)
                    }
                }
            }

            order("stars", "desc")

        }
        return hotelList
    }
}


