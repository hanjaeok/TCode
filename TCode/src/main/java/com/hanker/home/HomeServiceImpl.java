package com.hanker.home;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class HomeServiceImpl implements HomeService {

	@Inject
	private HomeDAO homeDAO;
}
