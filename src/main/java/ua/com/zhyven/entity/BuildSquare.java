package ua.com.zhyven.entity;

import com.sun.istack.internal.NotNull;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class BuildSquare {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotNull
    private Integer squareSum;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "buildSquare")
    private List<WoodenProduct> woodenProducts = new ArrayList<WoodenProduct>();

    public BuildSquare() {
    }

    public BuildSquare(Integer squareSum) {
        this.squareSum = squareSum;
    }

    public BuildSquare(Integer squareSum, List<WoodenProduct> woodenProducts) {
        this.squareSum = squareSum;
        this.woodenProducts = woodenProducts;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Integer getSquareSum() {
        return squareSum;
    }

    public void setSquareSum(Integer squareSum) {
        this.squareSum = squareSum;
    }

    public List<WoodenProduct> getWoodenProducts() {
        return woodenProducts;
    }

    public void setWoodenProducts(List<WoodenProduct> woodenProducts) {
        this.woodenProducts = woodenProducts;
    }

    @Override
    public String toString() {
        return "BuildSquare{" +
                "id=" + id +
                ", squareSum=" + squareSum +
                ", woodenProducts=" + woodenProducts +
                '}';
    }
}
