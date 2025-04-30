package com.papa91.wrapper;

import android.app.Activity;
import android.view.View;
/* loaded from: classes4.dex */
public abstract class SystemUiHider {
    public static final int FLAG_FULLSCREEN = 2;
    public static final int FLAG_HIDE_NAVIGATION = 6;
    public static final int FLAG_LAYOUT_IN_SCREEN_OLDER_DEVICES = 1;
    private static OnVisibilityChangeListener sDummyListener = new OnVisibilityChangeListener() { // from class: com.papa91.wrapper.SystemUiHider.1
        @Override // com.papa91.wrapper.SystemUiHider.OnVisibilityChangeListener
        public void onVisibilityChange(boolean z3) {
        }
    };
    protected Activity mActivity;
    protected View mAnchorView;
    protected int mFlags;
    protected OnVisibilityChangeListener mOnVisibilityChangeListener = sDummyListener;

    /* loaded from: classes4.dex */
    public interface OnVisibilityChangeListener {
        void onVisibilityChange(boolean z3);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SystemUiHider(Activity activity, View view, int i2) {
        this.mActivity = activity;
        this.mAnchorView = view;
        this.mFlags = i2;
    }

    public static SystemUiHider getInstance(Activity activity, View view, int i2) {
        if (Wrapper.SDK_INT >= 11) {
            return new SystemUiHiderHoneycomb(activity, view, i2);
        }
        return new SystemUiHiderBase(activity, view, i2);
    }

    public abstract void hide();

    public abstract boolean isVisible();

    public void setOnVisibilityChangeListener(OnVisibilityChangeListener onVisibilityChangeListener) {
        if (onVisibilityChangeListener == null) {
            onVisibilityChangeListener = sDummyListener;
        }
        this.mOnVisibilityChangeListener = onVisibilityChangeListener;
    }

    public abstract void setup();

    public abstract void show();

    public void toggle() {
        if (isVisible()) {
            hide();
        } else {
            show();
        }
    }
}
