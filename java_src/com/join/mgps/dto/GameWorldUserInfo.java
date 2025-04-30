package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameWorldUserInfo {
    private String avatar_src;
    private int grade_number;
    private boolean is_worship;
    private String nickname;
    private int papa_money;
    private GameworldRankGradeBean rank_grade;
    private List<GameWorldRoleBean> role_list;
    private List<GameWorldTrophyItem> trophy_list;
    private int uid;
    private int world_rank;
    private int world_score;
    private int world_worship_count;

    public String getAvatar_src() {
        return this.avatar_src;
    }

    public int getGrade_number() {
        return this.grade_number;
    }

    public String getNickname() {
        return this.nickname;
    }

    public int getPapa_money() {
        return this.papa_money;
    }

    public GameworldRankGradeBean getRank_grade() {
        return this.rank_grade;
    }

    public List<GameWorldRoleBean> getRole_list() {
        return this.role_list;
    }

    public List<GameWorldTrophyItem> getTrophy_list() {
        return this.trophy_list;
    }

    public int getUid() {
        return this.uid;
    }

    public int getWorld_rank() {
        return this.world_rank;
    }

    public int getWorld_score() {
        return this.world_score;
    }

    public int getWorld_worship_count() {
        return this.world_worship_count;
    }

    public boolean isIs_worship() {
        return this.is_worship;
    }

    public void setAvatar_src(String str) {
        this.avatar_src = str;
    }

    public void setGrade_number(int i2) {
        this.grade_number = i2;
    }

    public void setIs_worship(boolean z3) {
        this.is_worship = z3;
    }

    public void setNickname(String str) {
        this.nickname = str;
    }

    public void setPapa_money(int i2) {
        this.papa_money = i2;
    }

    public void setRank_grade(GameworldRankGradeBean gameworldRankGradeBean) {
        this.rank_grade = gameworldRankGradeBean;
    }

    public void setRole_list(List<GameWorldRoleBean> list) {
        this.role_list = list;
    }

    public void setTrophy_list(List<GameWorldTrophyItem> list) {
        this.trophy_list = list;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setWorld_rank(int i2) {
        this.world_rank = i2;
    }

    public void setWorld_score(int i2) {
        this.world_score = i2;
    }

    public void setWorld_worship_count(int i2) {
        this.world_worship_count = i2;
    }
}
