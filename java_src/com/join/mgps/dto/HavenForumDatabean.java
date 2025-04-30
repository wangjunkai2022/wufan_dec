package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class HavenForumDatabean {
    List<HavenForumListbean> posts;
    HavenForumTagbean tag;

    public List<HavenForumListbean> getPosts() {
        return this.posts;
    }

    public HavenForumTagbean getTag() {
        return this.tag;
    }

    public void setPosts(List<HavenForumListbean> list) {
        this.posts = list;
    }

    public void setTag(HavenForumTagbean havenForumTagbean) {
        this.tag = havenForumTagbean;
    }
}
