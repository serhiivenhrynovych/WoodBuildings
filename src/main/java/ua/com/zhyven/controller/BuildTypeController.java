package ua.com.zhyven.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ua.com.zhyven.entity.BuildType;
import ua.com.zhyven.service.BuildTypeService;

@Controller
public class BuildTypeController {

    @Autowired
    private BuildTypeService buildTypeService;

    @PostMapping("saveBuildType")
    public String saveBuildType(@RequestParam String typeOfBuild) {
        BuildType buildType = new BuildType(typeOfBuild);
        buildTypeService.save(buildType);
        System.out.println(buildType);
        return "redirect:/admin";
    }

    @PostMapping("removeBuildType")
    public String removeBuildType(@RequestParam String typeOfBuild) {
        BuildType byName = buildTypeService.findByName(typeOfBuild);
        buildTypeService.remove(byName);
        return "redirect:/admin";
    }

    public BuildTypeService getBuildTypeService() {
        return buildTypeService;
    }

    public void setBuildTypeService(BuildTypeService buildTypeService) {
        this.buildTypeService = buildTypeService;
    }
}
