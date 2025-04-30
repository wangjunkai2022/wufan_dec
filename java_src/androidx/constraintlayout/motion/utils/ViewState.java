package androidx.constraintlayout.motion.utils;

import android.view.View;
/* loaded from: classes.dex */
public class ViewState {
    public int bottom;
    public int left;
    public int right;
    public float rotation;
    public int top;

    public void getState(View v3) {
        this.left = v3.getLeft();
        this.top = v3.getTop();
        this.right = v3.getRight();
        this.bottom = v3.getBottom();
        this.rotation = v3.getRotation();
    }

    public int height() {
        return this.bottom - this.top;
    }

    public int width() {
        return this.right - this.left;
    }
}
