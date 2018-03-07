package ua.com.zhyven.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.zhyven.entity.BuildSquare;

public interface BuildSquareDAO extends JpaRepository<BuildSquare, Integer> {
    @Query("from BuildSquare bsq where bsq.squareSum=:squareSum")
    BuildSquare findByName(@Param("squareSum")Integer squareSum);
}
