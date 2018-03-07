package ua.com.zhyven.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.zhyven.entity.BuildMaterial;

public interface BuildMaterialDAO extends JpaRepository<BuildMaterial, Integer> {
    @Query("from BuildMaterial bm where bm.materialType=:materialType")
    BuildMaterial findByName(@Param("materialType") String materialType);
}
