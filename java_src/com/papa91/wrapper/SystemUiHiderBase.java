package com.papa91.wrapper;

import android.app.Activity;
import android.view.View;
/* loaded from: classes4.dex */
class SystemUiHiderBase extends SystemUiHider {
    private boolean mVisible;

    /* JADX INFO: Access modifiers changed from: protected */
    public SystemUiHiderBase(Activity activity, View view, int i2) {
        super(activity, view, i2);
        this.mVisible = true;
    }

    @Override // com.papa91.wrapper.SystemUiHider
    public void hide() {
        if ((this.mFlags & 2) != 0) {
            this.mActivity.getWindow().setFlags(1024, 1024);
        }
        this.mOnVisibilityChangeListener.onVisibilityChange(false);
        this.mVisible = false;
    }

    @Override // com.papa91.wrapper.SystemUiHider
    public boolean isVisible() {
        return this.mVisible;
    }

    @Override // com.papa91.wrapper.SystemUiHider
    public void setup() {
        if ((this.mFlags & 1) == 0) {
            this.mActivity.getWindow().setFlags(768, 768);
        }
    }

    @Override // com.papa91.wrapper.SystemUiHider
    public void show() {
        if ((this.mFlags & 2) != 0) {
            this.mActivity.getWindow().setFlags(0, 1024);
        }
        this.mOnVisibilityChangeListener.onVisibilityChange(true);
        this.mVisible = true;
    }
}
