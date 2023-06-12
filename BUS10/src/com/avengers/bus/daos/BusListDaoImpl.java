package com.avengers.bus.daos;

import java.sql.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.avengers.bus.dtoModels.BusListRowMapper;
import com.avengers.bus.dtoModels.BusSearchListDto;
import com.avengers.bus.inputModels.SearchBusInput;

public class BusListDaoImpl implements BusListDao {

	private JdbcTemplate jdbcTemplate;
	private final String BUS_LIST_QUERY = "select  t1.service_id, t1.trip_id, t2.source, t2.destination , t2.depature , t2.arrival,t1.trip_date,\r\n"
			+ "t1.seats_available,t4.bsty_title, t4.bsty_desc\r\n" + "from btrs_services t1,\r\n"
			+ "(select ts1.trip_id as trip_id ,ts1.stop_id as source , ts2.stop_id as destination , ts1.stop_time as Depature ,\r\n"
			+ " ts2.stop_time as arrival\r\n" + "from btrs_trip_stops ts1, btrs_trip_stops ts2 \r\n"
			+ "where ts1.trip_id=ts2.trip_id and ts1.stop_id=? and ts2.stop_id=? and ts1.stop_index<ts2.stop_index ) t2,\r\n"
			+ "btrs_trips t3, btrs_bustypes t4\r\n"
			+ "where (t1.trip_id=t2.trip_id and t1.trip_id=t3.trip_id and t1.trip_date = ? \r\n"
			+ "and t3.bus_type =t4.bsty_id and t1.seats_available>0 and t1.trip_date <> now()::date and t4.bsty_id=?)\r\n"
			+ "or\r\n" + "(\r\n" + "t1.trip_id=t2.trip_id and t1.trip_id=t3.trip_id and t1.trip_date = ? \r\n"
			+ "and t3.bus_type =t4.bsty_id and t1.seats_available>0 and t1.trip_date = now()::date  and t2.depature>now()  :: time and t4.bsty_id=?\r\n"
			+ ");\r\n";

	private final String BUS_LIST_ALL_QUERY = "select  t1.service_id, t1.trip_id, t2.source, t2.destination , t2.depature , t2.arrival,t1.trip_date,\r\n"
			+ "t1.seats_available,t4.bsty_title, t4.bsty_desc\r\n" + "from btrs_services t1,\r\n"
			+ "(select ts1.trip_id as trip_id ,ts1.stop_id as source , ts2.stop_id as destination , ts1.stop_time as Depature ,\r\n"
			+ " ts2.stop_time as arrival\r\n" + "from btrs_trip_stops ts1, btrs_trip_stops ts2 \r\n"
			+ "where ts1.trip_id=ts2.trip_id and ts1.stop_id=? and ts2.stop_id=? and ts1.stop_index<ts2.stop_index ) t2,\r\n"
			+ "btrs_trips t3, btrs_bustypes t4\r\n"
			+ "where (t1.trip_id=t2.trip_id and t1.trip_id=t3.trip_id and t1.trip_date = ? \r\n"
			+ "and t3.bus_type =t4.bsty_id and t1.seats_available>0 and t1.trip_date <> now()::date )\r\n" + "or\r\n"
			+ "(\r\n" + "t1.trip_id=t2.trip_id and t1.trip_id=t3.trip_id and t1.trip_date = ? \r\n"
			+ "and t3.bus_type =t4.bsty_id and t1.seats_available>0 and t1.trip_date = now()::date  and t2.depature>now()  :: time\r\n"
			+ ");\r\n";

	public BusListDaoImpl(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Override
	public List<BusSearchListDto> getBusList(SearchBusInput sbi) {

		String date = sbi.getDate();
		Date sqlDate = Date.valueOf(date);

		System.out.println(sbi);
		return jdbcTemplate.query(BUS_LIST_QUERY, new Object[] { sbi.getFssId(), sbi.getTssId(), sqlDate,
				sbi.getTravelClass(), sqlDate, sbi.getTravelClass() }, new BusListRowMapper());
	}

	@Override
	public List<BusSearchListDto> getBusListAll(SearchBusInput sbi) {
		String date = sbi.getDate();
		Date sqlDate = Date.valueOf(date);
		return jdbcTemplate.query(BUS_LIST_ALL_QUERY, new Object[] { sbi.getFssId(), sbi.getTssId(), sqlDate, sqlDate },
				new BusListRowMapper());
	}
}

// sbi.getFssId(), sbi.getTssId(), sbi.getDate(), sbi.getTravelClass(),
// sbi.getDate(), sbi.getTravelClass(),

// @Override
// public List<BusSearchListDto> getBusList (SearchBusInput sbi) {
// // TODO Auto-generated method stub
// return jdbcTemplate.query(BUS_LIST_QUERY, new Object[] { sbi.getFssId(), sbi.getTssId(), sbi.getDate(),
// sbi.getTravelClass(), sbi.getDate(), sbi.getTravelClass() }, new BusListRowMapper());
// }

// import java.util.List;
//
// import javax.persistence.EntityManager;
// import javax.persistence.PersistenceContext;
//
// import org.springframework.stereotype.Component;
//
// import com.avengers.bus.dtoModels.BusSearchListDto;
//
// @Component
// public class BusListDaoImpl implements BusListDao {
//
// @PersistenceContext
// private EntityManager em;
//
// @Override
// public List<BusSearchListDto> getBusList() {
//
// String jpql = "SELECT t1.schedule_id, t2.service_id,t2.sourc,t2.desti , t1.trip_date ,t2.departure,t2.arrival,
// t4.bsty_title, \r\n"
// + "t1.seats_booked as Available_Seats\r\n" + "from Schedule t1, \r\n" + "(\r\n"
// + "select st1.service_id service_id , st1.stop_id sourc, st2.stop_id desti, st1.stop_time departure , st2.stop_time
// arrival\r\n"
// + "from ServiceStops st1, ServiceStops st2\r\n"
// + "where st1.service_id=st2.service_id and st1.stop_id='CTR' and st2.stop_id='KLR' and st1.stop_index<st2.stop_index
// \r\n"
// + ") t2, Service t3, BusTypes t4\r\n"
// + "where (t1.service_id= t2.service_id and t2.service_id=t3.service_id and t1.trip_date ='2023-06-07'\r\n"
// + "and t4.bsty_id = t3.bus_type and t1.seats_booked>0 and t1.trip_date <> current_date)\r\n" + "or\r\n"
// + "(t1.service_id= t2.service_id and t2.service_id=t3.service_id and t1.trip_date = '2023-06-07'\r\n"
// + "and t4.bsty_id = t3.bus_type and t1.seats_booked>0 and t1.trip_date = current_date and t2.departure>current_time
// )";

// TypedQuery<BusSearchListDto> query = em.createQuery(jpql, BusSearchListDto.class);
// return em.createQuery(jpql, BusSearchListDto.class).getResultList();
// String dateString = "2023-06-07";
// LocalDate localDate = LocalDate.parse(dateString);
// Date dateValue = Date.valueOf(localDate);
//
// query.setParameter("dateValue", dateValue);

// List<BusSearchListDto> results = query.getResultList();

// Process the results as needed

// return results;
// }
//
// }

//

//

// TypedQuery<BusSearchListDto> query = em.createQuery(jpql, BusSearchListDto.class);
//

//
// System.out.println(dateValue);
//
// query.setParameter("dateValue", dateValue);
//
// List<BusSearchListDto> results = query.getResultList();
//
//// Process the results as needed
// for (BusSearchListDto result : results) {
//
// System.out.println(result);
// }

// List<BusSearchListDto> buslist = em.createQuery("", BusSearchListDto.class).getResultList();

//
//
//
// package jdbcspring;
//
// import java.util.List;
//
// import javax.sql.DataSource;
//
// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.jdbc.core.JdbcTemplate;
//
// public class EmpDAOImpl implements EmpDAO {
//
// private static final String SQL_DELETEFIND_EMPLOYEEEMPLOYEE = null;
//
// JdbcTemplate jdbcTemplate;
//
// private final String SQL_FIND_EMPLOYEE = "select * from renu1 where empid = ?";
// private final String SQL_DELETE_EMPLOYEE = "delete from renu1 where empid = ?";
// private final String SQL_UPDATE_EMPLOYEE = "update renu1 set empname = ?, job = ?, sal = ?, deptno = ? where empid =
// ?";
// private final String SQL_GET_ALL = "select * from renu1";
// private final String SQL_INSERT_EMPLOYEE = "insert into renu1(empid, empname, job, sal,deptno) values(?,?,?,?,?)";
//
// @Autowired
// public EmpDAOImpl(DataSource dataSource) {
// jdbcTemplate = new JdbcTemplate(dataSource);
// }
//
// public Employee getEmployeeByNo(Integer eno) {
// return jdbcTemplate.queryForObject(SQL_FIND_EMPLOYEE, new Object[] { eno }, new EmployeeMapper());
// }
//
// public List<Employee> getAllEmployees() {
// System.out.println("Employees List from db through jdbc template Requested");
// return jdbcTemplate.query(SQL_GET_ALL, new EmployeeMapper());
// }
//
// public boolean deleteEmployee(Employee e) {
// return jdbcTemplate.update(SQL_DELETEFIND_EMPLOYEEEMPLOYEE, e.getEmpNo()) > 0;
// }
//
// public boolean updateEmployee(Employee e) {
// return jdbcTemplate.update(SQL_UPDATE_EMPLOYEE, e.getEName(), e.getJob(), e.getSalary(), e.getDeptNo(),
// e.getEmpNo()) > 0;
// }
//
// public boolean createEmployee(Employee e) {
// // System.out.println("Employee creation from db through jdbc template requested");
// return jdbcTemplate.update(SQL_INSERT_EMPLOYEE, e.getEmpNo(), e.getEName(), e.getJob(), e.getSalary(),
// e.getDeptNo()) > 0;
// }
// }
