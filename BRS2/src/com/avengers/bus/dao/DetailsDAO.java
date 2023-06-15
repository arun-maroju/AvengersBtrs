package com.avengers.bus.dao;

import java.util.List;

import com.avengers.bus.dtoModels.ServiceDetails;
import com.avengers.bus.entityModels.Stop;

public interface DetailsDAO {

	ServiceDetails serviceDetails(int service_id);

	List<Stop> routeDetails(int route);

}
