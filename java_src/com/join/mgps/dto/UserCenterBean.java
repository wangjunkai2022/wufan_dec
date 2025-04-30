package com.join.mgps.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class UserCenterBean implements Serializable {
    private UserCenterItem detail_entrance;
    private List<UserCenterItem> first_group;
    private TitleItemBean join_member;
    private List<TitleItemBean> member_func;
    private List<UserCenterItem> module_entrance_list;
    private List<UserCenterItem> second_group;
    private List<UserCenterItem> third_group;

    /* loaded from: classes4.dex */
    public static class TitleItemBean {
        private String jumpUrl;
        private String subTitle;
        private String title;

        public String getJumpUrl() {
            return this.jumpUrl;
        }

        public String getSubTitle() {
            return this.subTitle;
        }

        public String getTitle() {
            return this.title;
        }

        public void setJumpUrl(String str) {
            this.jumpUrl = str;
        }

        public void setSubTitle(String str) {
            this.subTitle = str;
        }

        public void setTitle(String str) {
            this.title = str;
        }
    }

    /* loaded from: classes4.dex */
    public static class UserCenterItem {
        private boolean isEmpty;
        private boolean isPlaceHolder;
        private UserCenterItemBean main;
        private ArrayList<JumpInfoBean> sub;
        private int unReadCount;

        public UserCenterItemBean getMain() {
            return this.main;
        }

        public ArrayList<JumpInfoBean> getSub() {
            return this.sub;
        }

        public int getUnReadCount() {
            return this.unReadCount;
        }

        public boolean isEmpty() {
            return this.isEmpty;
        }

        public boolean isPlaceHolder() {
            return this.isPlaceHolder;
        }

        public void setEmpty(boolean z3) {
            this.isEmpty = z3;
        }

        public void setMain(UserCenterItemBean userCenterItemBean) {
            this.main = userCenterItemBean;
        }

        public void setPlaceHolder(boolean z3) {
            this.isPlaceHolder = z3;
        }

        public void setSub(ArrayList<JumpInfoBean> arrayList) {
            this.sub = arrayList;
        }

        public void setUnReadCount(int i2) {
            this.unReadCount = i2;
        }
    }

    public UserCenterItem getDetail_entrance() {
        return this.detail_entrance;
    }

    public List<UserCenterItem> getFirst_group() {
        return this.first_group;
    }

    public TitleItemBean getJoin_member() {
        return this.join_member;
    }

    public List<TitleItemBean> getMember_func() {
        return this.member_func;
    }

    public List<UserCenterItem> getModule_entrance_list() {
        return this.module_entrance_list;
    }

    public List<UserCenterItem> getSecond_group() {
        return this.second_group;
    }

    public List<UserCenterItem> getThird_group() {
        return this.third_group;
    }

    public void setDetail_entrance(UserCenterItem userCenterItem) {
        this.detail_entrance = userCenterItem;
    }

    public void setFirst_group(List<UserCenterItem> list) {
        this.first_group = list;
    }

    public void setJoin_member(TitleItemBean titleItemBean) {
        this.join_member = titleItemBean;
    }

    public void setMember_func(List<TitleItemBean> list) {
        this.member_func = list;
    }

    public void setModule_entrance_list(List<UserCenterItem> list) {
        this.module_entrance_list = list;
    }

    public void setSecond_group(List<UserCenterItem> list) {
        this.second_group = list;
    }

    public void setThird_group(List<UserCenterItem> list) {
        this.third_group = list;
    }

    public String toString() {
        return "UserCenterBean{first_group=" + this.first_group + ", second_group=" + this.second_group + '}';
    }
}
