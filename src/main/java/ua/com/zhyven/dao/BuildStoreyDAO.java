package ua.com.zhyven.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.zhyven.entity.BuildStorey;

public interface BuildStoreyDAO extends JpaRepository<BuildStorey, Integer> {
    @Query("from BuildStorey sto where sto.storeyType=:storeyType")
    BuildStorey findByName(@Param("storeyType") String storeyType);
}
