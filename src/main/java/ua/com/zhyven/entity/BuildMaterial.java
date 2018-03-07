package ua.com.zhyven.entity;

import com.sun.istack.internal.NotNull;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class BuildMaterial {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotNull
    private String materialType;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "buildMaterial")
    private List<WoodenProduct> woodenProducts = new ArrayList<WoodenProduct>();

    public BuildMaterial() {
    }

    public BuildMaterial(String materialType) {
        this.materialType = materialType;
    }

    public BuildMaterial(String materialType, List<WoodenProduct> woodenProducts) {
        this.materialType = materialType;
        this.woodenProducts = woodenProducts;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMaterialType() {
        return materialType;
    }

    public void setMaterialType(String materialType) {
        this.materialType = materialType;
    }

    public List<WoodenProduct> getWoodenProducts() {
        return woodenProducts;
    }

    public void setWoodenProducts(List<WoodenProduct> woodenProducts) {
        this.woodenProducts = woodenProducts;
    }

    @Override
    public String toString() {
        return "BuildMaterial{" +
                "id=" + id +
                ", materialType='" + materialType + '\'' +
                ", woodenProducts=" + woodenProducts +
                '}';
    }
}
