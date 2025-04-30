package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GivePraiceBean {
    private DataBean data;
    private int error;

    /* loaded from: classes4.dex */
    public static class DataBean {
        private List<MessageListBean> message_list;

        /* loaded from: classes4.dex */
        public static class MessageListBean {
            private int add_time;
            private int comment_id;
            private String from_avatar_src;
            private String from_nickname;
            private String from_type;
            private int from_uid;
            private String message;
            private int pid;
            private PostsBean posts;
            private int rid;

            /* loaded from: classes4.dex */
            public static class PostsBean {
                private String message;
                private int pid;
                private List<RsListBean> rs_list;
                private String subject;

                /* loaded from: classes4.dex */
                public static class RsListBean {
                    private String raw;
                    private String thumb;
                    private String type;

                    public String getRaw() {
                        return this.raw;
                    }

                    public String getThumb() {
                        return this.thumb;
                    }

                    public String getType() {
                        return this.type;
                    }

                    public void setRaw(String str) {
                        this.raw = str;
                    }

                    public void setThumb(String str) {
                        this.thumb = str;
                    }

                    public void setType(String str) {
                        this.type = str;
                    }
                }

                public String getMessage() {
                    return this.message;
                }

                public int getPid() {
                    return this.pid;
                }

                public List<RsListBean> getRs_list() {
                    return this.rs_list;
                }

                public String getSubject() {
                    return this.subject;
                }

                public void setMessage(String str) {
                    this.message = str;
                }

                public void setPid(int i2) {
                    this.pid = i2;
                }

                public void setRs_list(List<RsListBean> list) {
                    this.rs_list = list;
                }

                public void setSubject(String str) {
                    this.subject = str;
                }
            }

            public int getAdd_time() {
                return this.add_time;
            }

            public int getComment_id() {
                return this.comment_id;
            }

            public String getFrom_avatar_src() {
                return this.from_avatar_src;
            }

            public String getFrom_nickname() {
                return this.from_nickname;
            }

            public String getFrom_type() {
                return this.from_type;
            }

            public int getFrom_uid() {
                return this.from_uid;
            }

            public String getMessage() {
                return this.message;
            }

            public int getPid() {
                return this.pid;
            }

            public PostsBean getPosts() {
                return this.posts;
            }

            public int getRid() {
                return this.rid;
            }

            public void setAdd_time(int i2) {
                this.add_time = i2;
            }

            public void setComment_id(int i2) {
                this.comment_id = i2;
            }

            public void setFrom_avatar_src(String str) {
                this.from_avatar_src = str;
            }

            public void setFrom_nickname(String str) {
                this.from_nickname = str;
            }

            public void setFrom_type(String str) {
                this.from_type = str;
            }

            public void setFrom_uid(int i2) {
                this.from_uid = i2;
            }

            public void setMessage(String str) {
                this.message = str;
            }

            public void setPid(int i2) {
                this.pid = i2;
            }

            public void setPosts(PostsBean postsBean) {
                this.posts = postsBean;
            }

            public void setRid(int i2) {
                this.rid = i2;
            }
        }

        public List<MessageListBean> getMessage_list() {
            return this.message_list;
        }

        public void setMessage_list(List<MessageListBean> list) {
            this.message_list = list;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(DataBean dataBean) {
        this.data = dataBean;
    }

    public void setError(int i2) {
        this.error = i2;
    }
}
