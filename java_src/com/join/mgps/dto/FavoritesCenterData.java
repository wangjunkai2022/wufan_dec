package com.join.mgps.dto;

import com.join.mgps.dto.GameFromPopoWinBean;
import java.util.List;
/* loaded from: classes4.dex */
public class FavoritesCenterData {
    private List<GameFromPopoWinBean.DataBean> book_group_list;
    private List<GameFromPopoWinBean.DataBean> create_group_list;
    private MemberInfoBean member_info;

    /* loaded from: classes4.dex */
    public static class MemberInfoBean {
        private String nick_name;
        private String portrait;
        private String rank;
        private String sex;
        private int svip;
        private String tag_info;
        private int uid;
        private int vip;

        public String getNick_name() {
            return this.nick_name;
        }

        public String getPortrait() {
            return this.portrait;
        }

        public String getRank() {
            return this.rank;
        }

        public String getSex() {
            return this.sex;
        }

        public int getSvip() {
            return this.svip;
        }

        public String getTag_info() {
            return this.tag_info;
        }

        public int getUid() {
            return this.uid;
        }

        public int getVip() {
            return this.vip;
        }

        public void setNick_name(String str) {
            this.nick_name = str;
        }

        public void setPortrait(String str) {
            this.portrait = str;
        }

        public void setRank(String str) {
            this.rank = str;
        }

        public void setSex(String str) {
            this.sex = str;
        }

        public void setSvip(int i2) {
            this.svip = i2;
        }

        public void setTag_info(String str) {
            this.tag_info = str;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }

        public void setVip(int i2) {
            this.vip = i2;
        }
    }

    public List<GameFromPopoWinBean.DataBean> getBook_group_list() {
        return this.book_group_list;
    }

    public List<GameFromPopoWinBean.DataBean> getCreate_group_list() {
        return this.create_group_list;
    }

    public MemberInfoBean getMember_info() {
        return this.member_info;
    }

    public void setBook_group_list(List<GameFromPopoWinBean.DataBean> list) {
        this.book_group_list = list;
    }

    public void setCreate_group_list(List<GameFromPopoWinBean.DataBean> list) {
        this.create_group_list = list;
    }

    public void setMember_info(MemberInfoBean memberInfoBean) {
        this.member_info = memberInfoBean;
    }
}
