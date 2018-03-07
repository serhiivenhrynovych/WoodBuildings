package ua.com.zhyven.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.com.zhyven.dao.BuildSquareDAO;
import ua.com.zhyven.entity.BuildSquare;
import ua.com.zhyven.service.BuildSquareService;

import java.util.List;

@Service
public class BuildSquareServiceImpl implements BuildSquareService {
    @Autowired
    private BuildSquareDAO buildSquareDAO;
    @Override
    public void save(BuildSquare buildSquare) {
        buildSquareDAO.save(buildSquare);
    }

    @Override
    public List<BuildSquare> findAll() {
        return buildSquareDAO.findAll();
    }

    @Override
    public BuildSquare findOne(int id) {
        return buildSquareDAO.findOne(id);
    }

    @Override
    public void remove(BuildSquare buildSquare) {
        buildSquareDAO.delete(buildSquare);
    }

    @Override
    public BuildSquare findByName(Integer squareSum) {
        return buildSquareDAO.findByName(squareSum);
    }
}
