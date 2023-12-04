package com.parking.parkinglot.ejb;

import com.parking.parkinglot.common.CarDto;
import com.parking.parkinglot.entities.Car;
import com.parking.parkinglot.entities.User;
import jakarta.ejb.EJBException;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.TypedQuery;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

@Stateless
public class CarsBean {
    private static final Logger LOG = Logger.getLogger(CarsBean.class.getName());
    @PersistenceContext
    EntityManager entityManager;

    public List<CarDto> findAllCars() {
    LOG.info("findAllCars");
    try{
        TypedQuery<Car> typedQuery=entityManager.createQuery("SELECT c from Car c",Car.class);
        List<Car>cars=typedQuery.getResultList();
        return copyCarsToDto(cars);
    }
    catch (Exception ex){
        throw new EJBException(ex);
    }
    }

    private List<CarDto> copyCarsToDto(List<Car> cars) {
        List<CarDto> dto = new ArrayList<CarDto>();
        for(Car c : cars){
            dto.add(new CarDto(c.getId(),c.getLicencePlate(),c.getParkingSpot(),c.getOwner().getUsername()));
        }
        return dto;
    }
    public void createCar(String licensePlate, String parkingSpot, Long userId){
        LOG.info("createCar");
        Car car=new Car();
        car.setLicencePlate(licensePlate);
        car.setParkingSpot(parkingSpot);

        User user=entityManager.find(User.class,userId);
        user.getCars().add(car);
        car.setOwner(user);

        entityManager.persist(car);
    }

}