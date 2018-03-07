package ua.com.zhyven.service;

import ua.com.zhyven.entity.BuildStorey;

import java.util.List;

public interface BuildStoreyService {
    void save(BuildStorey buildStorey);

    List<BuildStorey> findAll();

    BuildStorey findOne(int id);

    void remove(BuildStorey buildStorey);

    BuildStorey findByName(String storeyType);
}
