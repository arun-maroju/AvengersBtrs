package com.avengers.bus.services;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.avengers.bus.daos.CountsDAO;

@Service
@Transactional
public class FetchCount {
	private CountsDAO cdao;

	public FetchCount(CountsDAO cdao) {
		super();
		this.cdao = cdao;
	}

	public int getBusCount() {
		return cdao.busCount();
	}

	public int getServiceCount() {
		return cdao.serviceCount();
	}

	public int getCollection() {
		return cdao.totalPayments();
	}

	public int getUserCount() {
		return cdao.userCount();
	}

	public int getRouteCount() {
		// TODO Auto-generated method stub
		return cdao.routeCount();
	}

	public int getTripCount() {
		// TODO Auto-generated method stub
		return cdao.tripCount();
	}

}
