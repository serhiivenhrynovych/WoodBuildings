package ua.com.zhyven.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ua.com.zhyven.entity.BuildStyle;
import ua.com.zhyven.service.BuildStyleService;

@Controller
public class BuildStyleController {
    @Autowired
    private BuildStyleService buildStyleService;

    @PostMapping("saveBuildStyle")
    public String saveBuildStyle(@RequestParam String styleType) {
        BuildStyle buildStyle = new BuildStyle(styleType);
        buildStyleService.save(buildStyle);
        System.out.println(buildStyle);
        return "redirect:/admin";
    }

    @PostMapping("removeBuildStyle")
    public String removeBuildStyle(@RequestParam String styleType) {
        BuildStyle byName = buildStyleService.findByName(styleType);
        buildStyleService.remove(byName);
        return "redirect:/admin";
    }

    public BuildStyleService getBuildStyleService() {
        return buildStyleService;
    }

    public void setBuildStyleService(BuildStyleService buildStyleService) {
        this.buildStyleService = buildStyleService;
    }
}
