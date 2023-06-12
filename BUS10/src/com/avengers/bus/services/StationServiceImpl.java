package com.avengers.bus.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.avengers.bus.daos.StationDao;
import com.avengers.bus.entityModels.Stations;

@Component
public class StationServiceImpl implements StationService

{
	private StationDao stationDao;

	@Autowired
	public StationServiceImpl(StationDao stationDao) {
		this.stationDao = stationDao;
	}

	@Transactional(readOnly = true)
	public List<Stations> listAll() {
		return stationDao.getAllStations();
	}

}

// import java.util.Collection;
// import java.util.List;
//
// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.stereotype.Component;
// import org.springframework.transaction.annotation.Transactional;
//
// import main.spring.orm.dao.EmpDAO;
// import main.spring.orm.model.Employee;
//
// @Component
// public class EmpService {
//
// private EmpDAO edao;
//
// @Autowired
// public EmpService(EmpDAO empdao) {
// edao = empdao;
// }
//
// @Transactional
// public void add(Employee emp) {
// edao.persist(emp);
// }
//
// @Transactional
// public void addAll(Collection<Employee> empList) {
// for (Employee emp : empList) {
// edao.persist(emp);
// }
// }
//
// @Transactional(readOnly = true)
// public List<Employee> listAll() {
// return edao.getAllEmployees();
//
// }
//
// }
