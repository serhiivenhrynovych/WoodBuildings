package ua.com.zhyven.service;

import ua.com.zhyven.entity.WoodenProduct;

import java.util.List;

public interface WoodenProductService {
    void save(WoodenProduct woodenProduct);

    List<WoodenProduct> findAll();

    WoodenProduct findOne(int id);

    void remove(WoodenProduct woodenProduct);

    WoodenProduct findByName(String buildName);

    List<WoodenProduct> findAllWoodenProductsWith();

    List<WoodenProduct> findProductWithImages();

}
