package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class CommentCreateArgs extends BaseDto {
    private String channel_num;
    private String content;
    private String details_comment_id;
    private String device_id;
    private String game_id;
    private String head_portrait;
    private String ip_address;
    private int m_p_m_status;
    private String mac;
    private String mobile_phone_model;
    private int pn;
    private int position;
    private int random_num;
    private String reply_comment_id;
    private String reply_comment_user_id;
    private String reply_comment_user_name;
    private float score;
    private String sort = "desc";
    private String token;
    private int uid;
    private String user_name;
    private String user_token;
    private String version;

    public CommentCreateArgs(String str, float f4, String str2, String str3, String str4, int i2, String str5, String str6, String str7, String str8, int i4, String str9, String str10, int i5, String str11, String str12, String str13, String str14, String str15, String str16, int i6, int i7) {
        this.token = "";
        this.m_p_m_status = i7;
        this.channel_num = str16;
        this.device_id = str15;
        this.version = str14;
        this.position = i2;
        this.details_comment_id = str5;
        this.game_id = str;
        this.score = f4;
        this.content = str2;
        this.token = str3;
        this.mobile_phone_model = str4;
        this.reply_comment_user_id = str11;
        this.reply_comment_user_name = str12;
        this.reply_comment_id = str13;
        this.random_num = i5;
        this.user_name = str6;
        this.head_portrait = str7;
        this.user_token = str8;
        this.uid = i4;
        this.ip_address = str9;
        this.mac = str10;
        this.pn = i6;
    }

    public String getChannel_num() {
        return this.channel_num;
    }

    public String getContent() {
        return this.content;
    }

    public String getDetails_comment_id() {
        return this.details_comment_id;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getHead_portrait() {
        return this.head_portrait;
    }

    public String getIp_address() {
        return this.ip_address;
    }

    public int getM_p_m_status() {
        return this.m_p_m_status;
    }

    public String getMac() {
        return this.mac;
    }

    public String getMobile_phone_model() {
        return this.mobile_phone_model;
    }

    public int getPn() {
        return this.pn;
    }

    public int getPosition() {
        return this.position;
    }

    public int getRandom_num() {
        return this.random_num;
    }

    public String getReply_comment_id() {
        return this.reply_comment_id;
    }

    public String getReply_comment_user_id() {
        return this.reply_comment_user_id;
    }

    public String getReply_comment_user_name() {
        return this.reply_comment_user_name;
    }

    public float getScore() {
        return this.score;
    }

    public String getSort() {
        return this.sort;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUser_name() {
        return this.user_name;
    }

    public String getUser_token() {
        return this.user_token;
    }

    public String getVersion() {
        return this.version;
    }

    public void setChannel_num(String str) {
        this.channel_num = str;
    }

    public void setContent(String str) {
        this.content = str;
    }

    public void setDetails_comment_id(String str) {
        this.details_comment_id = str;
    }

    public void setDevice_id(String str) {
        this.device_id = str;
    }

    public void setGame_id(String str) {
        this.game_id = str;
    }

    public void setHead_portrait(String str) {
        this.head_portrait = str;
    }

    public void setIp_address(String str) {
        this.ip_address = str;
    }

    public void setM_p_m_status(int i2) {
        this.m_p_m_status = i2;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public void setMobile_phone_model(String str) {
        this.mobile_phone_model = str;
    }

    public void setPn(int i2) {
        this.pn = i2;
    }

    public void setPosition(int i2) {
        this.position = i2;
    }

    public void setRandom_num(int i2) {
        this.random_num = i2;
    }

    public void setReply_comment_id(String str) {
        this.reply_comment_id = str;
    }

    public void setReply_comment_user_id(String str) {
        this.reply_comment_user_id = str;
    }

    public void setReply_comment_user_name(String str) {
        this.reply_comment_user_name = str;
    }

    public void setScore(float f4) {
        this.score = f4;
    }

    public void setSort(String str) {
        this.sort = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(int i2) {
        this.uid = i2;
    }

    public void setUser_name(String str) {
        this.user_name = str;
    }

    public void setUser_token(String str) {
        this.user_token = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
