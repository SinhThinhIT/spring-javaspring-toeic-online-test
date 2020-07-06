package com.toeiconline.springjavaspringtoeiconline.dto.web;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class AbtractDTO {
    private Date create_date = new Date();
    private Date update_date = new Date();

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public Date getUpdate_date() {
        return update_date;
    }

    public void setUpdate_date(Date update_date) {
        this.update_date = update_date;
    }
}
