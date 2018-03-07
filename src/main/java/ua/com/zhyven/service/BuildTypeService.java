package ua.com.zhyven.service;

import ua.com.zhyven.entity.BuildType;

import java.util.List;

public interface BuildTypeService {
    void save(BuildType buildType);

    List<BuildType> findAll();

    BuildType findOne(int id);

    void remove(BuildType buildType);

    BuildType findByName(String typeOfBuild);
}
