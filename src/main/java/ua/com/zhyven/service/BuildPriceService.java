package ua.com.zhyven.service;

import ua.com.zhyven.entity.BuildPrice;

import java.util.List;

public interface BuildPriceService {
    void save(BuildPrice buildPrice);

    List<BuildPrice> findAll();

    BuildPrice findOne(int id);

    void remove(BuildPrice buildPrice);

    BuildPrice findByName(Long priceSum);
}
