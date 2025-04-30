package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GradeListData {
    private List<GradeListInfoData> grade_list;

    public GradeListData() {
    }

    public List<GradeListInfoData> getGrade_list() {
        return this.grade_list;
    }

    public void setGrade_list(List<GradeListInfoData> list) {
        this.grade_list = list;
    }

    public GradeListData(List<GradeListInfoData> list) {
        this.grade_list = list;
    }
}
