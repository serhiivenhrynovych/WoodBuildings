package ua.com.zhyven.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.com.zhyven.entity.WoodenProduct;
import ua.com.zhyven.service.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.Principal;
import java.util.List;

@Controller
public class MainController {
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

    @GetMapping({"/", "/main"})
    public String main(Model model, Principal principal){
        List<WoodenProduct> all = woodenProductService.findAllWoodenProductsWith();
        model.addAttribute("woodenProductsList", all);
        model.addAttribute("buildMaterialsList", buildMaterialService.findAll());
        model.addAttribute("buildPricesList", buildPriceService.findAll());
        model.addAttribute("buildSquaresList", buildSquareService.findAll());
        model.addAttribute("buildStoreysList", buildStoreyService.findAll());
        model.addAttribute("buildStylesList", buildStyleService.findAll());
        model.addAttribute("buildTypesList", buildTypeService.findAll());
        model.addAttribute("user", principal != null?principal.getName():"");

        return "main";
    }

    @GetMapping({"/index"})
    public String index(Model model, Principal principal){
        List<WoodenProduct> all = woodenProductService.findAllWoodenProductsWith();
        model.addAttribute("woodenProductsList", all);
        model.addAttribute("buildMaterialsList", buildMaterialService.findAll());
        model.addAttribute("buildPricesList", buildPriceService.findAll());
        model.addAttribute("buildSquaresList", buildSquareService.findAll());
        model.addAttribute("buildStoreysList", buildStoreyService.findAll());
        model.addAttribute("buildStylesList", buildStyleService.findAll());
        model.addAttribute("buildTypesList", buildTypeService.findAll());
        model.addAttribute("user", principal != null?principal.getName():"");

        return "index";
    }

    @GetMapping({"/login"})
    public String login(){
        return "login";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";

    }

    @GetMapping("/admin")
    public String adminPage(ModelMap modelm, Principal principal, Model model){
        modelm.addAttribute("principal", principal);
        modelm.addAttribute("user", getPrincipal());
        List<WoodenProduct> all = woodenProductService.findAllWoodenProductsWith();
        model.addAttribute("woodenProductsList", all);
        model.addAttribute("buildMaterialsList", buildMaterialService.findAll());
        model.addAttribute("buildPricesList", buildPriceService.findAll());
        model.addAttribute("buildSquaresList", buildSquareService.findAll());
        model.addAttribute("buildStoreysList", buildStoreyService.findAll());
        model.addAttribute("buildStylesList", buildStyleService.findAll());
        model.addAttribute("buildTypesList", buildTypeService.findAll());
        return "admin";
    }

    private String getPrincipal(){
        String userName = null;
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if(principal instanceof UserDetails){
            userName = ((UserDetails) principal).getUsername();
        } else {
            userName = principal.toString();
        }
        return userName;
    }


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
}
