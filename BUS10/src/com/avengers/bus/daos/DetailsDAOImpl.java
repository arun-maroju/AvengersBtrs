package com.avengers.bus.daos;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import com.avengers.bus.dtoModels.ServiceDetails;
import com.avengers.bus.dtoModels.ServiceDetailsMapper;
import com.avengers.bus.entityModels.Stop;
import com.avengers.bus.entityModels.StopMapper;

public class DetailsDAOImpl implements DetailsDAO {

	JdbcTemplate jdbcTemplate;

	String service_details_query = "SELECT t2.service_id, t4.stop_name AS source, t5.stop_name AS destination, "
			+ "departure, arrival, t2.trip_date, bus_type, t3.route_id, t2.collection, seats_available, "
			+ "(32 - seats_available) AS seats_booked, t6.bsty_title, t6.bsty_desc "
			+ "FROM btrs_trips t1, btrs_services t2, btrs_routes t3, btrs_stops t4, btrs_stops t5, "
			+ "btrs_bustypes t6 "
			+ "WHERE t1.trip_id = t2.trip_id AND t1.route_id = t3.route_id AND t4.stop_id = t3.source "
			+ "AND t5.stop_id = t3.destination AND t1.bus_type = t6.bsty_id " + "AND t2.service_id = ?";

	String route_details_query = "select distinct t3.stop_id,t3.stop_name from\r\n"
			+ "(select * from btrs_trips where route_id=?)t1,\r\n"
			+ "(select * from btrs_trip_stops order by stop_index)t2,btrs_stops t3\r\n"
			+ "where t1.trip_id=t2.trip_id and t1.source<>t2.stop_id and t1.destination<>t2.stop_id and t2.stop_id=t3.stop_id";

	@Autowired
	public DetailsDAOImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public ServiceDetails serviceDetails(int service_id) {
		return jdbcTemplate.queryForObject(service_details_query, new Object[] { service_id },
				new ServiceDetailsMapper());
	}

	@Override
	public List<Stop> routeDetails(int route) {
		return jdbcTemplate.query(route_details_query, new Object[] { route }, new StopMapper());
	}

}