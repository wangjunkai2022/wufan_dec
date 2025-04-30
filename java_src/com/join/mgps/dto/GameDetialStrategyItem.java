package com.join.mgps.dto;
/* loaded from: classes4.dex */
public class GameDetialStrategyItem {
    private long add_time;
    private int commit;
    private int id;
    private String[] pic_list;
    private int praise;
    private String subject;
    private GameDetialBookTag tag_name;
    private int view;

    public long getAdd_time() {
        return this.add_time * 1000;
    }

    public int getCommit() {
        return this.commit;
    }

    public int getId() {
        return this.id;
    }

    public String[] getPic_list() {
        return this.pic_list;
    }

    public int getPraise() {
        return this.praise;
    }

    public String getSubject() {
        return this.subject;
    }

    public GameDetialBookTag getTag_name() {
        return this.tag_name;
    }

    public int getView() {
        return this.view;
    }

    public void setAdd_time(long j4) {
        this.add_time = j4;
    }

    public void setCommit(int i2) {
        this.commit = i2;
    }

    public void setId(int i2) {
        this.id = i2;
    }

    public void setPic_list(String[] strArr) {
        this.pic_list = strArr;
    }

    public void setPraise(int i2) {
        this.praise = i2;
    }

    public void setSubject(String str) {
        this.subject = str;
    }

    public void setTag_name(GameDetialBookTag gameDetialBookTag) {
        this.tag_name = gameDetialBookTag;
    }

    public void setView(int i2) {
        this.view = i2;
    }
}
