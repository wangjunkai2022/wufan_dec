package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameMainCommunityBean {
    private List<PostsBean> posts;

    /* loaded from: classes4.dex */
    public static class PostsBean {
        private int fid;
        private String message;
        private int pid;
        private String subject;

        public PostsBean() {
        }

        public int getFid() {
            return this.fid;
        }

        public String getMessage() {
            return this.message;
        }

        public int getPid() {
            return this.pid;
        }

        public String getSubject() {
            return this.subject;
        }

        public void setFid(int i2) {
            this.fid = i2;
        }

        public void setMessage(String str) {
            this.message = str;
        }

        public void setPid(int i2) {
            this.pid = i2;
        }

        public void setSubject(String str) {
            this.subject = str;
        }

        public PostsBean(String str, int i2) {
            this.pid = i2;
            this.subject = str;
        }
    }

    public List<PostsBean> getPosts() {
        return this.posts;
    }

    public void setPosts(List<PostsBean> list) {
        this.posts = list;
    }
}
