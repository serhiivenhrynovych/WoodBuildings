package ua.com.zhyven.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.zhyven.dao.BuildTypeDAO;
import ua.com.zhyven.entity.BuildType;
import ua.com.zhyven.service.BuildTypeService;

import java.util.List;

@Service
public class BuildTypeServiceImpl implements BuildTypeService {
    @Autowired
    private BuildTypeDAO buildTypeDAO;
    @Override
    public void save(BuildType buildType) {
        buildTypeDAO.save(buildType);
    }

    @Override
    public List<BuildType> findAll() {
        return buildTypeDAO.findAll();
    }

    @Override
    public BuildType findOne(int id) {
        return buildTypeDAO.findOne(id);
    }

    @Override
    public void remove(BuildType buildType) {
        buildTypeDAO.delete(buildType);
    }

    @Override
    public BuildType findByName(String typeOfBuild) {
        return buildTypeDAO.findByName(typeOfBuild);
    }
}
