package ua.com.zhyven.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.zhyven.entity.BuildStyle;

public interface BuildStyleDAO extends JpaRepository<BuildStyle, Integer> {
    @Query("from BuildStyle sty where sty.styleType=:styleType")
    BuildStyle findByName(@Param("styleType") String styleType);
}
