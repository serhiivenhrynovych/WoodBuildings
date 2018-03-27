package ua.com.zhyven.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ua.com.zhyven.entity.BuildMaterial;
import ua.com.zhyven.service.BuildMaterialService;

@Controller
public class BuildMaterialController {

    @Autowired
    private BuildMaterialService buildMaterialService;

    @PostMapping("saveBuildMaterial")
    public String saveBuildMaterial(@RequestParam String materialType) {
        BuildMaterial buildMaterial = new BuildMaterial(materialType);
        buildMaterialService.save(buildMaterial);
        System.out.println(buildMaterial);
        return "redirect:/admin";
    }

    @PostMapping("removeBuildMaterial")
    public String removeBuildMaterial(@RequestParam String materialType) {
        BuildMaterial byName = buildMaterialService.findByName(materialType);
        buildMaterialService.remove(byName);
        return "redirect:/admin";
    }

    public BuildMaterialService getBuildMaterialService() {
        return buildMaterialService;
    }

    public void setBuildMaterialService(BuildMaterialService buildMaterialService) {
        this.buildMaterialService = buildMaterialService;
    }
}
