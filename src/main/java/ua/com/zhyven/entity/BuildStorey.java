package ua.com.zhyven.entity;

import com.sun.istack.internal.NotNull;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class BuildStorey {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotNull
    private String storeyType;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "buildStorey")
    private List<WoodenProduct> woodenProducts = new ArrayList<WoodenProduct>();

    public BuildStorey() {
    }

    public BuildStorey(String storeyType) {
        this.storeyType = storeyType;
    }

    public BuildStorey(String storeyType, List<WoodenProduct> woodenProducts) {
        this.storeyType = storeyType;
        this.woodenProducts = woodenProducts;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStoreyType() {
        return storeyType;
    }

    public void setStoreyType(String storeyType) {
        this.storeyType = storeyType;
    }

    public List<WoodenProduct> getWoodenProducts() {
        return woodenProducts;
    }

    public void setWoodenProducts(List<WoodenProduct> woodenProducts) {
        this.woodenProducts = woodenProducts;
    }

    @Override
    public String toString() {
        return "BuildStorey{" +
                "id=" + id +
                ", storeyType='" + storeyType + '\'' +
                ", woodenProducts=" + woodenProducts +
                '}';
    }
}
