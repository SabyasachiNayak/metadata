package com.qubole.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.qubole.model.Dataset;
import com.qubole.model.FacetData;
import com.qubole.service.DatasetService;

@Controller
@RequestMapping("/search")
public class SearchController {

	   @Autowired
	   DatasetService datasetService;
	   
	   @RequestMapping(value = "", method = RequestMethod.GET)
	   public String login(ModelMap model) {
		      return "search";
	   }
	 
	   @RequestMapping(value = "/getDataset/{name}", method = RequestMethod.GET,produces="application/json")
	   public @ResponseBody Dataset getDataset(@PathVariable("name") String name)
	   {   
		   Dataset dataset = datasetService.getDatasetByName(name);
	       return dataset;
	   }
	   
	   @RequestMapping(value = "/getList/{name}", method = RequestMethod.GET,produces="application/json")
	   public @ResponseBody List<Dataset> getDatasetList(@PathVariable("name") String name)
	   {   
		   List<Dataset> datasetList = datasetService.getDatasetList(name);
	       return datasetList;
	   }
	   
	   @RequestMapping(value = "/getFacetList", method = RequestMethod.POST,produces="application/json")
	   public ResponseEntity <List<Dataset>> getFacetDatasetList(@RequestBody FacetData data)
	   {   
		   List<Dataset> datasetList = datasetService.getFacetDatasetList(data);
	       return new ResponseEntity<List<Dataset>>(datasetList, HttpStatus.OK);
	   }
}
