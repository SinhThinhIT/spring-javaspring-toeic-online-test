package com.toeiconline.springjavaspringtoeiconline.controller.admin;

import com.toeiconline.springjavaspringtoeiconline.dto.web.AnswerDTO;
import com.toeiconline.springjavaspringtoeiconline.entity.Answer;
import com.toeiconline.springjavaspringtoeiconline.entity.Exam;
import com.toeiconline.springjavaspringtoeiconline.entity.Role;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.service.AnswerService;
import com.toeiconline.springjavaspringtoeiconline.service.ExamService;
import com.toeiconline.springjavaspringtoeiconline.service.RoleService;
import com.toeiconline.springjavaspringtoeiconline.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin/answer/")
public class AdminAnswerController {
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
    private AnswerService answerService;
    @Autowired
    private ExamService examService;

    @GetMapping("list")
    public String getAll(final Model model){
        List<Answer> answers = answerService.getAllAnswer();
        model.addAttribute("answers", answers);
        return "admin/answer/list";
    }
    @GetMapping("create")
    public String create(final Model model){
        List<Exam> exams = examService.getAll();
        model.addAttribute("exams", exams);
        model.addAttribute("answer", new AnswerDTO());
        return "admin/answer/create";
    }
    @PostMapping("save")
    public String created(final Model model, @ModelAttribute("answer") AnswerDTO answerDTO){
        Answer answer = new Answer();
        answer.setName(answerDTO.getAnswer());
        answer.setCorrect(answerDTO.isCorrect());
        answer.setExam(answerDTO.getExam());
        answer.setCreate_date(answerDTO.getCreate_date());
        answerService.createAnswer(answer);
        return "redirect:/admin/answer/list";
    }
    @GetMapping("edit/{id_answer}")
    public String edit(@PathVariable("id_answer") Integer id, final Model model){
        Answer answer = answerService.findById(id);
        List<Exam> exams = examService.getAll();
        model.addAttribute("exams", exams);
        model.addAttribute("answer", answer);
        return "admin/answer/edit";
    }
    @PostMapping("editAnswer")
    public String edit(@RequestParam("id_answer") Integer id, @ModelAttribute("answer") AnswerDTO answerDTO){
        Answer answer = answerService.findById(id);
        answer.setName(answerDTO.getAnswer());
        answer.setExam(answerDTO.getExam());
        answer.setCorrect(answerDTO.isCorrect());
        answer.setUpdate_date(answerDTO.getUpdate_date());
        answerService.updateAnswer(answer);
        return "redirect:/admin/answer/list";
    }
    @GetMapping("delete/{id}")
    public String delete(@PathVariable(value = "id") Integer id){
        answerService.deleteById(id);
        return "redirect:/admin/answer/list";
    }
}
