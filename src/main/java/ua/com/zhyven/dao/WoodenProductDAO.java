package ua.com.zhyven.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.zhyven.entity.WoodenProduct;

import java.util.List;

public interface WoodenProductDAO extends JpaRepository<WoodenProduct, Integer> {
    @Query("from WoodenProduct wp where wp.buildName=:buildName")
    WoodenProduct findByName(@Param("buildName") String buildName);

    @Query("from WoodenProduct wp join fetch wp.buildMaterial join fetch wp.buildPrice join fetch wp.buildSquare join fetch wp.buildStorey join fetch wp.buildStyle join fetch wp.buildType")
    List<WoodenProduct> findAllWoodenProductsWith();

    @Query("from WoodenProduct wp join fetch wp.images")
    List<WoodenProduct> findProductWithImages();
}
