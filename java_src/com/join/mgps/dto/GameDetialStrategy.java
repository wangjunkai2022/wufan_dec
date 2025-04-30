package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GameDetialStrategy {
    private List<GameDetialStrategyItem> posts;
    private List<GameDetialStrategyTag> tags;

    public List<GameDetialStrategyItem> getPosts() {
        return this.posts;
    }

    public List<GameDetialStrategyTag> getTags() {
        return this.tags;
    }

    public void setPosts(List<GameDetialStrategyItem> list) {
        this.posts = list;
    }

    public void setTags(List<GameDetialStrategyTag> list) {
        this.tags = list;
    }
}
