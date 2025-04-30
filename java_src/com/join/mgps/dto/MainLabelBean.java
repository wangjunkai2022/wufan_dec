package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class MainLabelBean {
    private String forum_name;
    private boolean is_allow;
    private int is_follow;
    private ManagerInfo manager_info;
    private int posts;
    private String tag_desc;
    private String tag_icon;
    private int tag_id;
    private String tag_name;
    private List<TagType> tag_type;

    /* loaded from: classes4.dex */
    public static class ManagerInfo {
        private String avatar_src;
        private String nickname;
        private int uid;

        public String getAvatar_src() {
            return this.avatar_src;
        }

        public String getNickname() {
            return this.nickname;
        }

        public int getUid() {
            return this.uid;
        }

        public void setAvatar_src(String str) {
            this.avatar_src = str;
        }

        public void setNickname(String str) {
            this.nickname = str;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }
    }

    /* loaded from: classes4.dex */
    public static class TagType {
        private int type_id;
        private String type_name;

        public int getType_id() {
            return this.type_id;
        }

        public String getType_name() {
            return this.type_name;
        }

        public void setType_id(int i2) {
            this.type_id = i2;
        }

        public void setType_name(String str) {
            this.type_name = str;
        }
    }

    public String getForum_name() {
        return this.forum_name;
    }

    public int getIs_follow() {
        return this.is_follow;
    }

    public ManagerInfo getManager_info() {
        return this.manager_info;
    }

    public int getPosts() {
        return this.posts;
    }

    public String getTag_desc() {
        return this.tag_desc;
    }

    public String getTag_icon() {
        return this.tag_icon;
    }

    public int getTag_id() {
        return this.tag_id;
    }

    public String getTag_name() {
        return this.tag_name;
    }

    public List<TagType> getTag_type() {
        return this.tag_type;
    }

    public boolean isIs_allow() {
        return this.is_allow;
    }

    public boolean is_allow() {
        return this.is_allow;
    }

    public void setForum_name(String str) {
        this.forum_name = str;
    }

    public void setIs_allow(boolean z3) {
        this.is_allow = z3;
    }

    public void setIs_follow(int i2) {
        this.is_follow = i2;
    }

    public void setManager_info(ManagerInfo managerInfo) {
        this.manager_info = managerInfo;
    }

    public void setPosts(int i2) {
        this.posts = i2;
    }

    public void setTag_desc(String str) {
        this.tag_desc = str;
    }

    public void setTag_icon(String str) {
        this.tag_icon = str;
    }

    public void setTag_id(int i2) {
        this.tag_id = i2;
    }

    public void setTag_name(String str) {
        this.tag_name = str;
    }

    public void setTag_type(List<TagType> list) {
        this.tag_type = list;
    }
}
