package ua.com.zhyven.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.zhyven.entity.BuildPrice;

public interface BuildPriceDAO extends JpaRepository<BuildPrice, Integer> {
    @Query("from BuildPrice bp where bp.priceSum=:priceSum")
    BuildPrice findByName(@Param("priceSum") Long priceSum);
}
