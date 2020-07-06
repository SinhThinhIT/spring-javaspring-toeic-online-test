package com.toeiconline.springjavaspringtoeiconline.controller.users;

import com.toeiconline.springjavaspringtoeiconline.dto.web.TestDTO;
import com.toeiconline.springjavaspringtoeiconline.dto.web.TestView;
import com.toeiconline.springjavaspringtoeiconline.entity.Answer;
import com.toeiconline.springjavaspringtoeiconline.entity.Exam;
import com.toeiconline.springjavaspringtoeiconline.entity.LevelToeic;
import com.toeiconline.springjavaspringtoeiconline.entity.Users;
import com.toeiconline.springjavaspringtoeiconline.service.AnswerService;
import com.toeiconline.springjavaspringtoeiconline.service.ExamService;
import com.toeiconline.springjavaspringtoeiconline.service.LevelService;
import com.toeiconline.springjavaspringtoeiconline.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
@RequestMapping("/users/test/")
@SessionAttributes("testDTO")
public class UsersExamController {
    @Autowired
    private UsersService usersService;
    @ModelAttribute("users")
    public Users users(){
        return usersService.getCurrentUser();
    }
    @Autowired
    private ExamService examService;
    @Autowired
    private AnswerService answerService;
    @Autowired
    private LevelService levelService;

    @ModelAttribute("testDTO")
    public TestDTO setTestDTO(){
        return new TestDTO();
    }
    @ModelAttribute("point")
    public long point(){
        return 0;
    }
    @RequestMapping(value = "de1/{id}", method = RequestMethod.GET)
    public String test(@PathVariable("id") Integer id,@ModelAttribute("testDTO") TestDTO testDTO, final Model model){
        LevelToeic levelToeic = levelService.findById(id);
        List<Exam> exams = examService.findAllByLevelToeic(levelToeic);

        model.addAttribute("exams", exams);
        return "users/test";
    }
    @RequestMapping(value = "addTest", method = RequestMethod.GET)
    public String addToTest(@ModelAttribute("testDTO") TestDTO testDTO, final Model model, @ModelAttribute("point") long point) {
        Map<Integer, String> map = testDTO.getMap();
        List<TestView> testViews = new ArrayList<>();
        for (int id : map.keySet()){
            Exam exam = examService.findById(id);
            TestView testView = new TestView();
            testView.setId(exam.getId_exam());
            testView.setAnswer(map.get(id));
            testView.setUsers(users());
            testViews.add(testView);
//            List<Answer> answers = answerService.findAllByExamAndCorrect(exam, true);
//            for (int i =0;i<=answers.size();i++){
//
//            }
        }
        model.addAttribute("testViews", testViews);
        model.addAttribute("point", point);
        return "users/testView";
    }
    @RequestMapping(value = "de1/{id}", method = RequestMethod.POST)
    public String saveAnswer(@PathVariable("id") Integer id,@ModelAttribute("testDTO") TestDTO testDTO, Model model, HttpServletRequest request){
        LevelToeic levelToeic = levelService.findById(id);
        List<Exam> exams = examService.findAllByLevelToeic(levelToeic);
        //if (answerView != null){
//            if (!answerView.get().isEmpty()) {
        for (Exam exam : exams) {

            String paramName = "answer_" + exam.getId_exam();
            String[] values = request.getParameterValues(paramName);
            String answerView = (values.length > 0) ? values[0] : "";

            if (testDTO.getMap().containsKey(exam.getId_exam())) {
                String answerBefore = testDTO.getMap().get(exam.getId_exam());
                String answerAfter = answerView + " , " + answerBefore;
                testDTO.getMap().put(exam.getId_exam(), answerAfter);
            } else {
                testDTO.getMap().put(exam.getId_exam(), answerView);
            }
        }
//            }
        //}
        model.addAttribute("exams", exams);
        return "users/test";
    }
}
