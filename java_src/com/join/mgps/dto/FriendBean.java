package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class FriendBean {
    private String account;
    private String avatar;
    private boolean banned;
    private boolean elite;
    private String friendRequestType;
    private String gameId;
    private String gameName;
    private int id;
    private boolean isRecommend;
    private int level;
    private String levelName;
    private MemberTitle memberTitle;
    private String message;
    private String nickName;
    private GameLevelBean playGameLevel;
    private int playType;
    private int readFlag;
    private String requestIfo;
    private int roomId;
    private String roomPwd;
    private int roomType;
    private int ruid;
    private int source;
    private int status;
    private String time;
    private long timestamp;
    private int uid;
    private boolean vip;
    private int state = 1;
    private String action = "";

    /* loaded from: classes4.dex */
    public static class MemberTitle {
        private String battleTitle;
        private String battleTitleColor;
        private int level;

        public String getBattleTitle() {
            return this.battleTitle;
        }

        public String getBattleTitleColor() {
            return this.battleTitleColor;
        }

        public int getLevel() {
            return this.level;
        }

        public void setBattleTitle(String str) {
            this.battleTitle = str;
        }

        public void setBattleTitleColor(String str) {
            this.battleTitleColor = str;
        }

        public void setLevel(int i2) {
            this.level = i2;
        }
    }

    public String getAccount() {
        return this.account;
    }

    public String getAction() {
        return this.action;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public String getFriendRequestType() {
        return this.friendRequestType;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getGameName() {
        return this.gameName;
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

    public String getMessage() {
        return this.message;
    }

    public String getNickName() {
        return this.nickName;
    }

    public GameLevelBean getPlayGameLevel() {
        return this.playGameLevel;
    }

    public int getPlayType() {
        return this.playType;
    }

    public int getReadFlag() {
        return this.readFlag;
    }

    public String getRequestIfo() {
        return this.requestIfo;
    }

    public int getRoomId() {
        return this.roomId;
    }

    public String getRoomPwd() {
        return this.roomPwd;
    }

    public int getRoomType() {
        return this.roomType;
    }

    public int getRuid() {
        return this.ruid;
    }

    public int getSource() {
        return this.source;
    }

    public int getState() {
        return this.state;
    }

    public int getStatus() {
        return this.status;
    }

    public String getTime() {
        return this.time;
    }

    public long getTimestamp() {
        return this.timestamp;
    }

    public int getUid() {
        return this.uid;
    }

    public boolean isBanned() {
        return this.banned;
    }

    public boolean isElite() {
        return this.elite;
    }

    public boolean isRecommend() {
        return this.isRecommend;
    }

    public boolean isVip() {
        return this.vip;
    }

    public void setAccount(String str) {
        this.account = str;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public void setBanned(boolean z3) {
        this.banned = z3;
    }

    public void setElite(boolean z3) {
        this.elite = z3;
    }

    public void setFriendRequestType(String str) {
        this.friendRequestType = str;
    }

    public void setGameId(String str) {
        this.gameId = str;
    }

    public void setGameName(String str) {
        this.gameName = str;
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

    public void setMemberTitle(MemberTitle memberTitle) {
        this.memberTitle = memberTitle;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setNickName(String str) {
        this.nickName = str;
    }

    public void setPlayGameLevel(GameLevelBean gameLevelBean) {
        this.playGameLevel = gameLevelBean;
    }

    public void setPlayType(int i2) {
        this.playType = i2;
    }

    public void setReadFlag(int i2) {
        this.readFlag = i2;
    }

    public void setRecommend(boolean z3) {
        this.isRecommend = z3;
    }

    public void setRequestIfo(String str) {
        this.requestIfo = str;
    }

    public void setRoomId(int i2) {
        this.roomId = i2;
    }

    public void setRoomPwd(String str) {
        this.roomPwd = str;
    }

    public void setRoomType(int i2) {
        this.roomType = i2;
    }

    public void setRuid(int i2) {
        this.ruid = i2;
    }

    public void setSource(int i2) {
        this.source = i2;
    }

    public void setState(int i2) {
        this.state = i2;
    }

    public void setStatus(int i2) {
        this.status = i2;
    }

    public void setTime(String str) {
        this.time = str;
    }

    public void setTimestamp(long j4) {
        this.timestamp = j4;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setVip(boolean z3) {
        this.vip = z3;
    }
}
