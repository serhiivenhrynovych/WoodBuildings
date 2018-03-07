package ua.com.zhyven.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.zhyven.dao.BuildPriceDAO;
import ua.com.zhyven.entity.BuildPrice;
import ua.com.zhyven.service.BuildPriceService;

import java.util.List;

@Service
public class BuildPriceServiceImpl implements BuildPriceService {
    @Autowired
    private BuildPriceDAO buildPriceDAO;
    @Override
    public void save(BuildPrice buildPrice) {
        buildPriceDAO.save(buildPrice);
    }

    @Override
    public List<BuildPrice> findAll() {
        return buildPriceDAO.findAll();
    }

    @Override
    public BuildPrice findOne(int id) {
        return buildPriceDAO.findOne(id);
    }

    @Override
    public void remove(BuildPrice buildPrice) {
        buildPriceDAO.delete(buildPrice);
    }

    @Override
    public BuildPrice findByName(Long priceSum) {
        return buildPriceDAO.findByName(priceSum);
    }
}
