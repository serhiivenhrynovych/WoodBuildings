package ua.com.zhyven.entity;

import com.sun.istack.internal.NotNull;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class BuildType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotNull
    private String typeOfBuild;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "buildType")
    private List<WoodenProduct> woodenProducts = new ArrayList<WoodenProduct>();

    public BuildType() {
    }

    public BuildType(String typeOfBuild) {
        this.typeOfBuild = typeOfBuild;
    }

    public BuildType(String typeOfBuild, List<WoodenProduct> woodenProducts) {
        this.typeOfBuild = typeOfBuild;
        this.woodenProducts = woodenProducts;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTypeOfBuild() {
        return typeOfBuild;
    }

    public void setTypeOfBuild(String typeOfBuild) {
        this.typeOfBuild = typeOfBuild;
    }

    public List<WoodenProduct> getWoodenProducts() {
        return woodenProducts;
    }

    public void setWoodenProducts(List<WoodenProduct> woodenProducts) {
        this.woodenProducts = woodenProducts;
    }

}
