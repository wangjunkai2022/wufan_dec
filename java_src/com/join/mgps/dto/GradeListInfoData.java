package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class GradeListInfoData implements Serializable {
    private String grade_name;
    private int grade_number;
    private String grade_people;
    private boolean is_open;

    public GradeListInfoData() {
    }

    public String getGrade_name() {
        return this.grade_name;
    }

    public int getGrade_number() {
        return this.grade_number;
    }

    public String getGrade_people() {
        return this.grade_people;
    }

    public boolean isIs_open() {
        return this.is_open;
    }

    public void setGrade_name(String str) {
        this.grade_name = str;
    }

    public void setGrade_number(int i2) {
        this.grade_number = i2;
    }

    public void setGrade_people(String str) {
        this.grade_people = str;
    }

    public void setIs_open(boolean z3) {
        this.is_open = z3;
    }

    public GradeListInfoData(int i2, String str, String str2, boolean z3) {
        this.grade_number = i2;
        this.grade_name = str;
        this.grade_people = str2;
        this.is_open = z3;
    }
}
