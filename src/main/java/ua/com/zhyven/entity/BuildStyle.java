package ua.com.zhyven.entity;

import com.sun.istack.internal.NotNull;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class BuildStyle {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotNull
    private String styleType;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "buildStyle")
    private List<WoodenProduct> woodenProducts = new ArrayList<WoodenProduct>();

    public BuildStyle() {
    }

    public BuildStyle(String styleType) {
        this.styleType = styleType;
    }

    public BuildStyle(String styleType, List<WoodenProduct> woodenProducts) {
        this.styleType = styleType;
        this.woodenProducts = woodenProducts;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStyleType() {
        return styleType;
    }

    public void setStyleType(String styleType) {
        this.styleType = styleType;
    }

    public List<WoodenProduct> getWoodenProducts() {
        return woodenProducts;
    }

    public void setWoodenProducts(List<WoodenProduct> woodenProducts) {
        this.woodenProducts = woodenProducts;
    }

    @Override
    public String toString() {
        return "BuildStyle{" +
                "id=" + id +
                ", styleType='" + styleType + '\'' +
                ", woodenProducts=" + woodenProducts +
                '}';
    }
}
