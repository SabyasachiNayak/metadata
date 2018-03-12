package com.qubole.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.qubole.model.Dataset;
import com.qubole.model.FacetData;

@Repository
public class DatasetDAOImpl implements DatasetDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	
	@Override
    public Dataset getDatasetByName(String name) {
       return (Dataset) sessionFactory.getCurrentSession().get(Dataset.class, name);
    }
	
	@Override
    public List<Dataset> getDatasetList(String name) {
       String sqlQuery = "select * from dataset where name like '%" + name + "%'";
       Query query = sessionFactory.getCurrentSession().createSQLQuery(sqlQuery).addEntity(Dataset.class);
       List<Dataset> dsList = new ArrayList<>();
       List datasetList = query.list();
       Iterator it = datasetList.iterator();
       while(it.hasNext())  
       {
    	   	 Dataset es = (Dataset)it.next();
       	 dsList.add(es);
       }
      return dsList;
    }
	
	@Override
    public List<Dataset> getFacetDatasetList(FacetData data) {
       String sqlQuery = "select * from dataset where name like '%" + data.getName() + "%'";
       if(!data.getType().equalsIgnoreCase("Select") && data.getFormat().equalsIgnoreCase("Select") && data.getCompression().equalsIgnoreCase("Select"))
       {
    	   	  	sqlQuery = "select * from dataset where name like '%" + data.getName() + "%' " + " and type='" + data.getType() + "'";
       }
       else if(data.getType().equalsIgnoreCase("Select") && !data.getFormat().equalsIgnoreCase("Select") && data.getCompression().equalsIgnoreCase("Select")) 
       {
    	   		sqlQuery = "select * from dataset where name like '%" + data.getName() + "%' " + " and format='" + data.getFormat() + "'";
       }
       else if(data.getType().equalsIgnoreCase("Select") && data.getFormat().equalsIgnoreCase("Select") && !data.getCompression().equalsIgnoreCase("Select"))
       {
    	   		sqlQuery = "select * from dataset where name like '%" + data.getName() + "%' " + " and compression='" + data.getCompression() + "'";
       }
       else if(!data.getType().equalsIgnoreCase("Select") && !data.getFormat().equalsIgnoreCase("Select") && data.getCompression().equalsIgnoreCase("Select"))
       {
    	   		sqlQuery = "select * from dataset where name like '%" + data.getName() + "%' " + " and type='" + data.getType() + "'" + " and format='" + data.getFormat() + "'";
       }
       else if(!data.getType().equalsIgnoreCase("Select") && data.getFormat().equalsIgnoreCase("Select") && !data.getCompression().equalsIgnoreCase("Select"))
       {
    	   		sqlQuery = "select * from dataset where name like '%" + data.getName() + "%' " + " and type='" + data.getType() + "'" + " and compression='" + data.getCompression() + "'";
       }
       else if(data.getType().equalsIgnoreCase("Select") && !data.getFormat().equalsIgnoreCase("Select") && !data.getCompression().equalsIgnoreCase("Select"))
       {
    	   		sqlQuery = "select * from dataset where name like '%" + data.getName() + "%' " + " and format='" + data.getFormat() + "'" + " and compression='" + data.getCompression() + "'";
       }
       else if(!data.getType().equalsIgnoreCase("Select") && !data.getFormat().equalsIgnoreCase("Select") && !data.getCompression().equalsIgnoreCase("Select"))
       {
    	   		sqlQuery = "select * from dataset where name like '%" + data.getName() + "%' " + " and type='" + data.getType() + "'" + " and format='" + data.getFormat() + "'" + " and compression='" + data.getCompression() + "'";
       }
       
    	   
       Query query = sessionFactory.getCurrentSession().createSQLQuery(sqlQuery).addEntity(Dataset.class);
       List<Dataset> dsList = new ArrayList<>();
       List datasetList = query.list();
       Iterator it = datasetList.iterator();
       while(it.hasNext())  
       {
    	   	 Dataset es = (Dataset)it.next();
       	 dsList.add(es);
       }
      return dsList;
    }
}
