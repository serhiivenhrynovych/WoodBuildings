package ua.com.zhyven.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ua.com.zhyven.entity.BuildSquare;
import ua.com.zhyven.service.BuildSquareService;

@Controller
public class BuildSquareController {

    @Autowired
    private BuildSquareService buildSquareService;

    @PostMapping("saveBuildSquare")
    public String saveBuildSquare(@RequestParam Integer squareSum) {
        BuildSquare buildSquare = new BuildSquare(squareSum);
        buildSquareService.save(buildSquare);
        System.out.println(buildSquare);
        return "redirect:/admin";
    }

    @PostMapping("removeBuildSquare")
    public String removeBuildSquare(@RequestParam Integer squareSum) {
        BuildSquare byName = buildSquareService.findByName(squareSum);
        buildSquareService.remove(byName);
        return "redirect:/admin";
    }
}
