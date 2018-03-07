package ua.com.zhyven.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class WoodenProduct {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String buildName;
    private String image;
    @ElementCollection
    private List<String> images = new ArrayList<String>();
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    private BuildType buildType;
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    private BuildMaterial buildMaterial;
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    private BuildSquare buildSquare;
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    private BuildStorey buildStorey;
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    private BuildStyle buildStyle;
    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
    private BuildPrice buildPrice;

    public WoodenProduct() {
    }

    public WoodenProduct(String buildName, String image, BuildType buildType, BuildMaterial buildMaterial, BuildSquare buildSquare, BuildStorey buildStorey, BuildStyle buildStyle, BuildPrice buildPrice) {
        this.buildName = buildName;
        this.image = image;
        this.buildType = buildType;
        this.buildMaterial = buildMaterial;
        this.buildSquare = buildSquare;
        this.buildStorey = buildStorey;
        this.buildStyle = buildStyle;
        this.buildPrice = buildPrice;
    }

    public WoodenProduct(String buildName, BuildType buildType, BuildMaterial buildMaterial, BuildSquare buildSquare, BuildStorey buildStorey, BuildStyle buildStyle, BuildPrice buildPrice) {
        this.buildName = buildName;
        this.buildType = buildType;
        this.buildMaterial = buildMaterial;
        this.buildSquare = buildSquare;
        this.buildStorey = buildStorey;
        this.buildStyle = buildStyle;
        this.buildPrice = buildPrice;
    }

    public WoodenProduct(String buildName, String image, List<String> images, BuildType buildType, BuildMaterial buildMaterial, BuildSquare buildSquare, BuildStorey buildStorey, BuildStyle buildStyle, BuildPrice buildPrice) {
        this.buildName = buildName;
        this.image = image;
        this.images = images;
        this.buildType = buildType;
        this.buildMaterial = buildMaterial;
        this.buildSquare = buildSquare;
        this.buildStorey = buildStorey;
        this.buildStyle = buildStyle;
        this.buildPrice = buildPrice;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBuildName() {
        return buildName;
    }

    public void setBuildName(String buildName) {
        this.buildName = buildName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public BuildType getBuildType() {
        return buildType;
    }

    public void setBuildType(BuildType buildType) {
        this.buildType = buildType;
    }

    public BuildMaterial getBuildMaterial() {
        return buildMaterial;
    }

    public void setBuildMaterial(BuildMaterial buildMaterial) {
        this.buildMaterial = buildMaterial;
    }

    public BuildSquare getBuildSquare() {
        return buildSquare;
    }

    public void setBuildSquare(BuildSquare buildSquare) {
        this.buildSquare = buildSquare;
    }

    public BuildStorey getBuildStorey() {
        return buildStorey;
    }

    public void setBuildStorey(BuildStorey buildStorey) {
        this.buildStorey = buildStorey;
    }

    public BuildStyle getBuildStyle() {
        return buildStyle;
    }

    public void setBuildStyle(BuildStyle buildStyle) {
        this.buildStyle = buildStyle;
    }

    public BuildPrice getBuildPrice() {
        return buildPrice;
    }

    public void setBuildPrice(BuildPrice buildPrice) {
        this.buildPrice = buildPrice;
    }

    public List<String> getImages() {
        return images;
    }

    public void setImages(List<String> images) {
        this.images = images;
    }
}
