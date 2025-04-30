package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class GradeRankListInfoData implements Serializable {
    private String avatar_src;
    private String grade_name;
    private int grade_rank;
    private String nickname;
    private String uid;
    private int world_rank;
    private String world_score;

    public GradeRankListInfoData() {
    }

    public String getAvatar_src() {
        return this.avatar_src;
    }

    public String getGrade_name() {
        return this.grade_name;
    }

    public int getGrade_rank() {
        return this.grade_rank;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getUid() {
        return this.uid;
    }

    public int getWorld_rank() {
        return this.world_rank;
    }

    public String getWorld_score() {
        return this.world_score;
    }

    public void setAvatar_src(String str) {
        this.avatar_src = str;
    }

    public void setGrade_name(String str) {
        this.grade_name = str;
    }

    public void setGrade_rank(int i2) {
        this.grade_rank = i2;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setUid(String str) {
        this.uid = str;
    }

    public void setWorld_rank(int i2) {
        this.world_rank = i2;
    }

    public void setWorld_score(String str) {
        this.world_score = str;
    }

    public GradeRankListInfoData(int i2, int i4, String str, String str2, String str3, String str4, String str5) {
        this.world_rank = i2;
        this.grade_rank = i4;
        this.grade_name = str;
        this.uid = str2;
        this.nickname = str3;
        this.avatar_src = str4;
        this.world_score = str5;
    }
}
