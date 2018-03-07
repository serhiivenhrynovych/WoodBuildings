package ua.com.zhyven.entity;

import com.sun.istack.internal.NotNull;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class BuildPrice {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotNull
    private Long priceSum;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "buildPrice")
    private List<WoodenProduct> woodenProducts = new ArrayList<WoodenProduct>();

    public BuildPrice() {
    }

    public BuildPrice(Long priceSum) {
        this.priceSum = priceSum;
    }

    public BuildPrice(Long priceSum, List<WoodenProduct> woodenProducts) {
        this.priceSum = priceSum;
        this.woodenProducts = woodenProducts;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Long getPriceSum() {
        return priceSum;
    }

    public void setPriceSum(Long priceSum) {
        this.priceSum = priceSum;
    }

    public List<WoodenProduct> getWoodenProducts() {
        return woodenProducts;
    }

    public void setWoodenProducts(List<WoodenProduct> woodenProducts) {
        this.woodenProducts = woodenProducts;
    }

    @Override
    public String toString() {
        return "BuildPrice{" +
                "id=" + id +
                ", priceSum=" + priceSum +
                ", woodenProducts=" + woodenProducts +
                '}';
    }
}
