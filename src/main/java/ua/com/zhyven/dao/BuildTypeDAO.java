package ua.com.zhyven.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.zhyven.entity.BuildType;

public interface BuildTypeDAO extends JpaRepository<BuildType, Integer> {
    @Query("from BuildType bt where bt.typeOfBuild=:typeOfBuild")
    BuildType findByName(@Param("typeOfBuild") String typeOfBuild);
}
