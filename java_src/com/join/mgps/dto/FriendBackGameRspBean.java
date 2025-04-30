package com.join.mgps.dto;

import java.util.List;
/* loaded from: classes4.dex */
public class FriendBackGameRspBean {
    private List<FriendInfo> battleFriendData;

    /* loaded from: classes4.dex */
    public static class FriendInfo {
        private boolean addFriendStatus;
        private String avatar;
        private int id;
        private int level;
        private String levelName;
        private boolean likeStatus;
        private MemberTitle memberTitle;
        private String nickName;
        private String requestInfo;
        private boolean sendFriendRequestStatus;
        private int uid;
        private boolean vip;

        public String getAvatar() {
            return this.avatar;
        }

        public int getId() {
            return this.id;
        }

        public int getLevel() {
            return this.level;
        }

        public String getLevelName() {
            return this.levelName;
        }

        public MemberTitle getMemberTitle() {
            return this.memberTitle;
        }

        public String getNickName() {
            return this.nickName;
        }

        public String getRequestInfo() {
            return this.requestInfo;
        }

        public int getUid() {
            return this.uid;
        }

        public boolean isAddFriendStatus() {
            return this.addFriendStatus;
        }

        public boolean isLikeStatus() {
            return this.likeStatus;
        }

        public boolean isSendFriendRequestStatus() {
            return this.sendFriendRequestStatus;
        }

        public boolean isVip() {
            return this.vip;
        }

        public void setAddFriendStatus(boolean z3) {
            this.addFriendStatus = z3;
        }

        public void setAvatar(String str) {
            this.avatar = str;
        }

        public void setId(int i2) {
            this.id = i2;
        }

        public void setLevel(int i2) {
            this.level = i2;
        }

        public void setLevelName(String str) {
            this.levelName = str;
        }

        public void setLikeStatus(boolean z3) {
            this.likeStatus = z3;
        }

        public void setMemberTitle(MemberTitle memberTitle) {
            this.memberTitle = memberTitle;
        }

        public void setNickName(String str) {
            this.nickName = str;
        }

        public void setRequestInfo(String str) {
            this.requestInfo = str;
        }

        public void setSendFriendRequestStatus(boolean z3) {
            this.sendFriendRequestStatus = z3;
        }

        public void setUid(int i2) {
            this.uid = i2;
        }

        public void setVip(boolean z3) {
            this.vip = z3;
        }
    }

    /* loaded from: classes4.dex */
    public static class MemberTitle {
        private String battleColor;
        private String battleTitle;
        private int level;

        public String getBattleColor() {
            return this.battleColor;
        }

        public String getBattleTitle() {
            return this.battleTitle;
        }

        public int getLevel() {
            return this.level;
        }

        public void setBattleColor(String str) {
            this.battleColor = str;
        }

        public void setBattleTitle(String str) {
            this.battleTitle = str;
        }

        public void setLevel(int i2) {
            this.level = i2;
        }
    }

    public List<FriendInfo> getBattleFriendData() {
        return this.battleFriendData;
    }

    public void setBattleFriendData(List<FriendInfo> list) {
        this.battleFriendData = list;
    }
}
