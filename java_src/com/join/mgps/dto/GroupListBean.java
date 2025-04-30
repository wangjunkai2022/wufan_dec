package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class GroupListBean {
    private List<GroupInfoBean> followForum;
    private List<GroupInfoBean> recommendForum;

    public List<GroupInfoBean> getFollowForum() {
        return this.followForum;
    }

    public List<GroupInfoBean> getRecommendForum() {
        return this.recommendForum;
    }

    public void setFollowForum(List<GroupInfoBean> list) {
        this.followForum = list;
    }

    public void setRecommendForum(List<GroupInfoBean> list) {
        this.recommendForum = list;
    }
}
