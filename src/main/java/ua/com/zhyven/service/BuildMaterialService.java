package ua.com.zhyven.service;

import ua.com.zhyven.entity.BuildMaterial;

import java.util.List;

public interface BuildMaterialService {
    void save(BuildMaterial buildMaterial);

    List<BuildMaterial> findAll();

    BuildMaterial findOne(int id);

    void remove(BuildMaterial buildMaterial);

    BuildMaterial findByName(String materialType);
}
