package ua.com.zhyven.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.zhyven.dao.BuildStoreyDAO;
import ua.com.zhyven.entity.BuildStorey;
import ua.com.zhyven.service.BuildStoreyService;

import java.util.List;

@Service
public class BuildStoreyServiceImpl implements BuildStoreyService {
    @Autowired
    private BuildStoreyDAO buildStoreyDAO;
    @Override
    public void save(BuildStorey buildStorey) {
        buildStoreyDAO.save(buildStorey);
    }

    @Override
    public List<BuildStorey> findAll() {
        return buildStoreyDAO.findAll();
    }

    @Override
    public BuildStorey findOne(int id) {
        return buildStoreyDAO.findOne(id);
    }

    @Override
    public void remove(BuildStorey buildStorey) {
        buildStoreyDAO.delete(buildStorey);
    }

    @Override
    public BuildStorey findByName(String storeyType) {
        return buildStoreyDAO.findByName(storeyType);
    }
}
