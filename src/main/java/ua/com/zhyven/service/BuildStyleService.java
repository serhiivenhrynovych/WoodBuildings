package ua.com.zhyven.service;

import ua.com.zhyven.entity.BuildStyle;

import java.util.List;

public interface BuildStyleService {
    void save(BuildStyle buildStyle);

    List<BuildStyle> findAll();

    BuildStyle findOne(int id);

    void remove(BuildStyle buildStyle);

    BuildStyle findByName(String styleType);
}
