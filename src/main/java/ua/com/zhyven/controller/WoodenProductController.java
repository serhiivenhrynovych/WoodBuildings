package ua.com.zhyven.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import ua.com.zhyven.entity.*;
import ua.com.zhyven.service.*;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class WoodenProductController {
    @Autowired
    private WoodenProductService woodenProductService;
    @Autowired
    private BuildMaterialService buildMaterialService;
    @Autowired
    private BuildPriceService buildPriceService;
    @Autowired
    private BuildSquareService buildSquareService;
    @Autowired
    private BuildStoreyService buildStoreyService;
    @Autowired
    private BuildStyleService buildStyleService;
    @Autowired
    private BuildTypeService buildTypeService;

    @PostMapping("saveWoodenProduct")
    public String saveWoodenProduct(@RequestParam String buildName,@RequestParam int buildType,
                                    @RequestParam int buildMaterial, @RequestParam int buildPrice,
                                    @RequestParam int buildSquare, @RequestParam int buildStorey,
                                    @RequestParam int buildStyle, @RequestParam MultipartFile image,
                                    @RequestParam("imagee") List<MultipartFile> imagee) {

        String imageName = "/imgprod/" + image.getOriginalFilename();
        BuildMaterial buildMaterial1 = buildMaterialService.findOne(buildMaterial);
        BuildPrice buildPrice1 = buildPriceService.findOne(buildPrice);
        BuildSquare buildSquare1 = buildSquareService.findOne(buildSquare);
        BuildStorey buildStorey1 = buildStoreyService.findOne(buildStorey);
        BuildStyle buildStyle1 = buildStyleService.findOne(buildStyle);
        BuildType buildType1 = buildTypeService.findOne(buildType);

        try {
            image.transferTo(new File(System.getProperty("user.home") + File.separator + imageName));
        } catch (IOException e) {
            e.printStackTrace();
        }

        String realPath = System.getProperty("user.home") + File.separator + "imgprod//";
        try {
            for (MultipartFile image1 : imagee) {
                image1.transferTo(new File(realPath + image1.getOriginalFilename()));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        List<String> imageList = new ArrayList<String>();
        for (MultipartFile image1 : imagee) {
            imageList.add(File.separator+"imgprod"+ File.separator + image1.getOriginalFilename());
        }

        WoodenProduct woodenProduct = new WoodenProduct(buildName, imageName, imageList,
                buildType1, buildMaterial1, buildSquare1, buildStorey1, buildStyle1, buildPrice1);
        System.out.println(woodenProduct);
        woodenProductService.save(woodenProduct);

        return "redirect:/admin";
    }

    @PostMapping("removeWoodenProduct")
    public String removeWoodenProduct(@RequestParam int id) {
        WoodenProduct byId = woodenProductService.findOne(id);
        woodenProductService.remove(byId);
        return "redirect:/admin";
    }
//
//    @GetMapping("/woodenProduct-{id}")
//    public String showWoodenProduct(Model model, @PathVariable int id) {
//        WoodenProduct one = woodenProductService.findOne(id);
//        model.addAttribute("sWoodenProduct", one);
//        model.addAttribute("woodenProduct1", woodenProductService.findProductWithImages());
//        return "woodenProduct";
//    }


    public BuildMaterialService getBuildMaterialService() {
        return buildMaterialService;
    }

    public void setBuildMaterialService(BuildMaterialService buildMaterialService) {
        this.buildMaterialService = buildMaterialService;
    }

    public BuildPriceService getBuildPriceService() {
        return buildPriceService;
    }

    public void setBuildPriceService(BuildPriceService buildPriceService) {
        this.buildPriceService = buildPriceService;
    }

    public BuildSquareService getBuildSquareService() {
        return buildSquareService;
    }

    public void setBuildSquareService(BuildSquareService buildSquareService) {
        this.buildSquareService = buildSquareService;
    }

    public BuildStoreyService getBuildStoreyService() {
        return buildStoreyService;
    }

    public void setBuildStoreyService(BuildStoreyService buildStoreyService) {
        this.buildStoreyService = buildStoreyService;
    }

    public BuildStyleService getBuildStyleService() {
        return buildStyleService;
    }

    public void setBuildStyleService(BuildStyleService buildStyleService) {
        this.buildStyleService = buildStyleService;
    }

    public BuildTypeService getBuildTypeService() {
        return buildTypeService;
    }

    public void setBuildTypeService(BuildTypeService buildTypeService) {
        this.buildTypeService = buildTypeService;
    }

    public WoodenProductService getWoodenProductService() {
        return woodenProductService;
    }

    public void setWoodenProductService(WoodenProductService woodenProductService) {
        this.woodenProductService = woodenProductService;
    }
}
