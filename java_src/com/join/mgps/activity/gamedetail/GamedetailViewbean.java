package com.join.mgps.activity.gamedetail;

import java.io.Serializable;
/* loaded from: classes3.dex */
public class GamedetailViewbean implements Serializable {
    private String sub_title;
    private String title;
    private String videoCover;
    private String video_url;

    public String getSub_title() {
        return this.sub_title;
    }

    public String getTitle() {
        return this.title;
    }

    public String getVideoCover() {
        return this.videoCover;
    }

    public String getVideo_url() {
        return this.video_url;
    }

    public void setSub_title(String str) {
        this.sub_title = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setVideoCover(String str) {
        this.videoCover = str;
    }

    public void setVideo_url(String str) {
        this.video_url = str;
    }
}
