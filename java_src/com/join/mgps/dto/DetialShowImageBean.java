package com.join.mgps.dto;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class DetialShowImageBean implements Serializable {
    private DetialShowImageSingBean local;
    private DetialShowImageSingBean remote;

    public DetialShowImageBean() {
    }

    public DetialShowImageSingBean getLocal() {
        return this.local;
    }

    public DetialShowImageSingBean getRemote() {
        return this.remote;
    }

    public void setLocal(DetialShowImageSingBean detialShowImageSingBean) {
        this.local = detialShowImageSingBean;
    }

    public void setRemote(DetialShowImageSingBean detialShowImageSingBean) {
        this.remote = detialShowImageSingBean;
    }

    public DetialShowImageBean(DetialShowImageSingBean detialShowImageSingBean, DetialShowImageSingBean detialShowImageSingBean2) {
        this.local = detialShowImageSingBean;
        this.remote = detialShowImageSingBean2;
    }
}
