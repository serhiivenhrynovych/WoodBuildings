package ua.com.zhyven.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.zhyven.dao.BuildMaterialDAO;
import ua.com.zhyven.entity.BuildMaterial;
import ua.com.zhyven.service.BuildMaterialService;

import java.util.List;

@Service
public class BuildMaterialServiceImpl implements BuildMaterialService {
    @Autowired
    private BuildMaterialDAO buildMaterialDAO;
    @Override
    public void save(BuildMaterial buildMaterial) {
        buildMaterialDAO.save(buildMaterial);
    }

    @Override
    public List<BuildMaterial> findAll() {
        return buildMaterialDAO.findAll();
    }

    @Override
    public BuildMaterial findOne(int id) {
        return buildMaterialDAO.findOne(id);
    }

    @Override
    public void remove(BuildMaterial buildMaterial) {
        buildMaterialDAO.delete(buildMaterial);
    }

    @Override
    public BuildMaterial findByName(String materialType) {
        return buildMaterialDAO.findByName(materialType);
    }
}
