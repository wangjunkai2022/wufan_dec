package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GradeRankListData {
    private GradePeopleData grade;
    private List<GradeRankListInfoData> users;

    public GradeRankListData() {
    }

    public GradePeopleData getGrade() {
        return this.grade;
    }

    public List<GradeRankListInfoData> getUsers() {
        return this.users;
    }

    public void setGrade(GradePeopleData gradePeopleData) {
        this.grade = gradePeopleData;
    }

    public void setUsers(List<GradeRankListInfoData> list) {
        this.users = list;
    }

    public GradeRankListData(List<GradeRankListInfoData> list, GradePeopleData gradePeopleData) {
        this.users = list;
        this.grade = gradePeopleData;
    }
}
