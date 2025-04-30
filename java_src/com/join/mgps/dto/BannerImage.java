package com.join.mgps.dto;

import android.view.View;
import com.facebook.drawee.view.SimpleDraweeView;
/* loaded from: classes4.dex */
public class BannerImage {
    private View container;
    private SimpleDraweeView imageView;
    private String url;

    public View getContainer() {
        return this.container;
    }

    public SimpleDraweeView getImageView() {
        return this.imageView;
    }

    public String getUrl() {
        return this.url;
    }

    public void setContainer(View view) {
        this.container = view;
    }

    public void setImageView(SimpleDraweeView simpleDraweeView) {
        this.imageView = simpleDraweeView;
    }

    public void setUrl(String str) {
        this.url = str;
    }
}
