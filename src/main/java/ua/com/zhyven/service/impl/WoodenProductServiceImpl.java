package ua.com.zhyven.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.zhyven.dao.WoodenProductDAO;
import ua.com.zhyven.entity.WoodenProduct;
import ua.com.zhyven.service.WoodenProductService;

import java.util.List;

@Service
public class WoodenProductServiceImpl implements WoodenProductService {
    @Autowired
    private WoodenProductDAO woodenProductDAO;
    @Override
    public void save(WoodenProduct woodenProduct) {
        woodenProductDAO.save(woodenProduct);
    }

    @Override
    public List<WoodenProduct> findAll() {
        return woodenProductDAO.findAll();
    }

    @Override
    public WoodenProduct findOne(int id) {
        return woodenProductDAO.findOne(id);
    }

    @Override
    public void remove(WoodenProduct woodenProduct) {
        woodenProductDAO.delete(woodenProduct);
    }

    @Override
    public WoodenProduct findByName(String buildName) {
        return woodenProductDAO.findByName(buildName);
    }

    @Override
    public List<WoodenProduct> findAllWoodenProductsWith() {
        return woodenProductDAO.findAllWoodenProductsWith();
    }

    @Override
    public List<WoodenProduct> findProductWithImages() {
        return woodenProductDAO.findProductWithImages();
    }
}
