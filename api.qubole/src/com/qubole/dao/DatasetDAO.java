package com.qubole.dao;

import java.util.List;

import com.qubole.model.Dataset;
import com.qubole.model.FacetData;

public interface DatasetDAO
{   
    Dataset getDatasetByName(String name);
    List<Dataset> getDatasetList(String name);
    List<Dataset> getFacetDatasetList(FacetData data);
}
