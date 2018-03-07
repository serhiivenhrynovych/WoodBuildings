package ua.com.zhyven.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ua.com.zhyven.entity.BuildStorey;
import ua.com.zhyven.service.BuildStoreyService;

@Controller
public class BuildStoreyController {
    @Autowired
    private BuildStoreyService buildStoreyService;

    @PostMapping("saveBuildStorey")
    public String saveBuildStorey(@RequestParam String storeyType) {
        BuildStorey buildStorey = new BuildStorey(storeyType);
        buildStoreyService.save(buildStorey);
        System.out.println(buildStorey);
        return "redirect:/admin";
    }

    @PostMapping("removeBuildStorey")
    public String removeBuildStorey(@RequestParam String storeyType) {
        BuildStorey byName = buildStoreyService.findByName(storeyType);
        buildStoreyService.remove(byName);
        return "redirect:/admin";
    }

    public BuildStoreyService getBuildStoreyService() {
        return buildStoreyService;
    }

    public void setBuildStoreyService(BuildStoreyService buildStoreyService) {
        this.buildStoreyService = buildStoreyService;
    }
}
