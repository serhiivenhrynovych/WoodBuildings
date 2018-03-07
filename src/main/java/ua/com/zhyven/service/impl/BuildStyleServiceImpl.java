package ua.com.zhyven.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.zhyven.dao.BuildStyleDAO;
import ua.com.zhyven.entity.BuildStyle;
import ua.com.zhyven.service.BuildStyleService;

import java.util.List;

@Service
public class BuildStyleServiceImpl implements BuildStyleService {
    @Autowired
    private BuildStyleDAO buildStyleDAO;
    @Override
    public void save(BuildStyle buildStyle) {
        buildStyleDAO.save(buildStyle);
    }

    @Override
    public List<BuildStyle> findAll() {
        return buildStyleDAO.findAll();
    }

    @Override
    public BuildStyle findOne(int id) {
        return buildStyleDAO.findOne(id);
    }

    @Override
    public void remove(BuildStyle buildStyle) {
        buildStyleDAO.delete(buildStyle);
    }

    @Override
    public BuildStyle findByName(String styleType) {
        return buildStyleDAO.findByName(styleType);
    }
}
