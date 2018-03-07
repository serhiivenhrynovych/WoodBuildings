package ua.com.zhyven.service;

import ua.com.zhyven.entity.BuildSquare;

import java.util.List;

public interface BuildSquareService {
    void save(BuildSquare buildSquare);

    List<BuildSquare> findAll();

    BuildSquare findOne(int id);

    void remove(BuildSquare buildSquare);

    BuildSquare findByName(Integer squareSum);
}
