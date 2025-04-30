package com.join.mgps.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class UserCenterBeanV2 implements Serializable {
    private List<UserCenterItem> first_group;
    private List<UserCenterItem> second_group;
    private List<UserCenterItem> third_group;

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

    public List<UserCenterItem> getFirst_group() {
        return this.first_group;
    }

    public List<UserCenterItem> getSecond_group() {
        return this.second_group;
    }

    public List<UserCenterItem> getThird_group() {
        return this.third_group;
    }

    public void setFirst_group(List<UserCenterItem> list) {
        this.first_group = list;
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
