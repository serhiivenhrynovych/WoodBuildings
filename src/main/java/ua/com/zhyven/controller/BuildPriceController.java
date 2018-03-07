package ua.com.zhyven.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ua.com.zhyven.entity.BuildPrice;
import ua.com.zhyven.service.BuildPriceService;

@Controller
public class BuildPriceController {

    @Autowired
    private BuildPriceService buildPriceService;

    @PostMapping("saveBuildPrice")
    public String saveBuildPrice(@RequestParam Long priceSum) {
        BuildPrice buildPrice = new BuildPrice(priceSum);
        buildPriceService.save(buildPrice);
        System.out.println(buildPrice);
        return "redirect:/admin";
    }

    @PostMapping("removeBuildPrice")
    public String removeBuildPrice(@RequestParam Long priceSum) {
        BuildPrice byName = buildPriceService.findByName(priceSum);
        buildPriceService.remove(byName);
        return "redirect:/admin";
    }

    public BuildPriceService getBuildPriceService() {
        return buildPriceService;
    }

    public void setBuildPriceService(BuildPriceService buildPriceService) {
        this.buildPriceService = buildPriceService;
    }
}
