package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class FriendCardBean {
    private boolean addFriendStatus;
    private boolean friendStatus;
    private int likeCount;
    private boolean likeStatus;
    private boolean onlineStatus;
    private List<GameLevelBean> playGameLevels;
    private FriendBean userInfo;

    public int getLikeCount() {
        return this.likeCount;
    }

    public List<GameLevelBean> getPlayGameLevels() {
        return this.playGameLevels;
    }

    public FriendBean getUserInfo() {
        return this.userInfo;
    }

    public boolean isAddFriendStatus() {
        return this.addFriendStatus;
    }

    public boolean isFriendStatus() {
        return this.friendStatus;
    }

    public boolean isLikeStatus() {
        return this.likeStatus;
    }

    public boolean isOnlineStatus() {
        return this.onlineStatus;
    }

    public void setAddFriendStatus(boolean z3) {
        this.addFriendStatus = z3;
    }

    public void setFriendStatus(boolean z3) {
        this.friendStatus = z3;
    }

    public void setLikeCount(int i2) {
        this.likeCount = i2;
    }

    public void setLikeStatus(boolean z3) {
        this.likeStatus = z3;
    }

    public void setOnlineStatus(boolean z3) {
        this.onlineStatus = z3;
    }

    public void setPlayGameLevels(List<GameLevelBean> list) {
        this.playGameLevels = list;
    }

    public void setUserInfo(FriendBean friendBean) {
        this.userInfo = friendBean;
    }
}
