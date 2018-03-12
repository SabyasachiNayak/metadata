package com.qubole.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qubole.dao.DatasetDAO;
import com.qubole.model.Dataset;
import com.qubole.model.FacetData;

@Service
public class DatasetServiceImpl implements DatasetService {
	
	@Autowired
    DatasetDAO datasetDAO;
         
 	@Override
	@Transactional
	public Dataset getDatasetByName(String name) {
		return datasetDAO.getDatasetByName(name);
	}
 	
 	@Override
	@Transactional
	public List<Dataset> getDatasetList(String name) {
		return datasetDAO.getDatasetList(name);
	}
 	
 	@Override
	@Transactional
	public List<Dataset> getFacetDatasetList(FacetData data) {
		return datasetDAO.getFacetDatasetList(data);
	}

}
