package com.join.mgps.dto;

import com.join.mgps.Util.d2;
/* loaded from: classes4.dex */
public class ImageInfo {
    private boolean isSelected = false;
    private boolean isVideo;
    private String url;
    private String videoUrl;

    public ImageInfo(String str) {
        this.url = str;
    }

    public String getUrl() {
        return this.url;
    }

    public String getVideoUrl() {
        return this.videoUrl;
    }

    public boolean isGif() {
        return d2.i(this.url) && this.url.endsWith(".gif");
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public boolean isVideo() {
        return this.isVideo;
    }

    public void setSelected(boolean z3) {
        this.isSelected = z3;
    }

    public void setUrl(String str) {
        this.url = str;
    }

    public void setVideo(boolean z3) {
        this.isVideo = z3;
    }

    public void setVideoUrl(String str) {
        this.videoUrl = str;
    }

    public ImageInfo(String str, String str2, boolean z3) {
        this.url = str;
        this.videoUrl = str2;
        this.isVideo = z3;
    }
}
