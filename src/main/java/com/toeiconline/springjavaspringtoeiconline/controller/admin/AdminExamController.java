package com.toeiconline.springjavaspringtoeiconline.controller.admin;

import com.toeiconline.springjavaspringtoeiconline.dto.web.ExamDTO;
import com.toeiconline.springjavaspringtoeiconline.entity.Exam;
import com.toeiconline.springjavaspringtoeiconline.entity.LevelToeic;
import com.toeiconline.springjavaspringtoeiconline.entity.Role;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.service.ExamService;
import com.toeiconline.springjavaspringtoeiconline.service.LevelService;
import com.toeiconline.springjavaspringtoeiconline.service.RoleService;
import com.toeiconline.springjavaspringtoeiconline.service.UsersService;
import com.toeiconline.springjavaspringtoeiconline.utils.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping(value = "/admin/exam/")
public class AdminExamController {
    @Autowired
    private UsersService usersService;
    @Autowired
    private RoleService roleService;
    @ModelAttribute("roles")
    public Role role(){
        return roleService.findByName("ROLE_ADMIN");
    }
    @ModelAttribute("users")
    public Users users(){
        return usersService.getCurrentUser();
    }
    @Autowired
    private ExamService examService;
    @Autowired
    private LevelService levelService;
    //Create
    @GetMapping(value = "create")
    public String create(final Model model){
        List<LevelToeic> levelToeics = levelService.getLevel();
        model.addAttribute("exam", new ExamDTO());
        model.addAttribute("levelToeics", levelToeics);
        return "admin/exam/create";
    }
    @PostMapping(value = "save")
    public String save(@ModelAttribute("exam") ExamDTO examDTO){
        MultipartFile multipartFile = examDTO.getImage();
        if (!multipartFile.isEmpty()){
            String fileName= "exam - "+ multipartFile.getOriginalFilename();
            try {
                FileCopyUtils.copy(multipartFile.getBytes(), new File(Constant.EXAM_UPLOAD_LOCATION+fileName));
                Exam exam = new Exam();
                exam.setQuestion(examDTO.getQuestion());
                exam.setLevelToeic(examDTO.getLevelToeic());
                exam.setImage(fileName);
                exam.setCreate_date(examDTO.getCreate_date());
                examService.saveExam(exam);
            }catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "redirect:/admin/exam/list";
    }
    @GetMapping(value = "edit/{id_exam}")
    public String edit(@PathVariable("id_exam") Integer id, final Model model){
        List<LevelToeic> levelToeics = levelService.getLevel();
        Exam exam = examService.findById(id);
        model.addAttribute("examModel", exam);
        model.addAttribute("levelToeics", levelToeics);
        return "admin/exam/edit";
    }
    @PostMapping(value = "editExam")
    public String editExam(@RequestParam("id_exam") Integer id, @ModelAttribute("examModel") ExamDTO examDTO){
        Exam exam = examService.findById(id);
        File file = new File(Constant.EXAM_UPLOAD_LOCATION + exam.getImage());
        if (file.delete()){
            System.out.println("Delete Success");
        }else {
            System.out.println("Delete error");
        }
        MultipartFile multipartFile = examDTO.getImage();
        if (!multipartFile.isEmpty()){
            String fileName= multipartFile.getOriginalFilename();
            try {
                FileCopyUtils.copy(multipartFile.getBytes(), new File(Constant.EXAM_UPLOAD_LOCATION+fileName));
                exam.setQuestion(examDTO.getQuestion());
                exam.setLevelToeic(examDTO.getLevelToeic());
                exam.setImage(fileName);
                exam.setUpdate_date(examDTO.getUpdate_date());
                examService.saveExam(exam);
            }catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "redirect:/admin/exam/list";
    }
    @GetMapping(value = "list")
    public String listAll(final Model model){
        List<Exam> listExam = examService.getAll();
        model.addAttribute("listExam", listExam);
        return "admin/exam/list";
    }
    @GetMapping("delete/{id}")
    public String delete(@PathVariable(value = "id") Integer id){
        examService.deleteById(id);
        return "redirect:/admin/exam/list";
    }
}
