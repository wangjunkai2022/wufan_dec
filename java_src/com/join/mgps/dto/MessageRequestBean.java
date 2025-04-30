package com.join.mgps.dto;

import org.springframework.util.LinkedMultiValueMap;
/* loaded from: classes4.dex */
public class MessageRequestBean {
    public static int IS_GLOBAL = 1;
    public static int IS_NOT_GLOBAL = 0;
    public static String SLIDE_DOWN = "down";
    public static String SLIDE_UP = "up";
    private long game_id;
    private int is_global;
    private long message_id;
    private String slide;
    private String token;
    private long uid;

    public static String getSlideDown() {
        return SLIDE_DOWN;
    }

    public static String getSlideUp() {
        return SLIDE_UP;
    }

    public static void setSlideDown(String str) {
        SLIDE_DOWN = str;
    }

    public static void setSlideUp(String str) {
        SLIDE_UP = str;
    }

    public long getGame_id() {
        return this.game_id;
    }

    public int getIs_global() {
        return this.is_global;
    }

    public long getMessage_id() {
        return this.message_id;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("is_global", this.is_global + "");
        linkedMultiValueMap.add("game_id", this.game_id + "");
        linkedMultiValueMap.add("message_id", this.message_id + "");
        linkedMultiValueMap.add("token", this.token);
        linkedMultiValueMap.add("slide", SLIDE_DOWN);
        return linkedMultiValueMap;
    }

    public String getSlide() {
        return this.slide;
    }

    public String getToken() {
        return this.token;
    }

    public long getUid() {
        return this.uid;
    }

    public void setGame_id(long j4) {
        this.game_id = j4;
    }

    public void setIs_global(int i2) {
        this.is_global = i2;
    }

    public void setMessage_id(long j4) {
        this.message_id = j4;
    }

    public void setSlide(String str) {
        this.slide = str;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setUid(long j4) {
        this.uid = j4;
    }
}
