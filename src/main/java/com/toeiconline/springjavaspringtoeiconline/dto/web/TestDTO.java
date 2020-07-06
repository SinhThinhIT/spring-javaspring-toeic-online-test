package com.toeiconline.springjavaspringtoeiconline.dto.web;

import java.util.HashMap;
import java.util.Map;

public class TestDTO {
    private Map<Integer, String> map = new HashMap<>();

    public Map<Integer, String> getMap() {
        return map;
    }

    public void setMap(Map<Integer, String> map) {
        this.map = map;
    }
}
