package com.join.mgps.customview;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MyGameBasePopupWindow.java */
/* loaded from: classes3.dex */
public class u extends PopupWindow {
    protected final Context mContext;
    protected View parentView;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyGameBasePopupWindow.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 4) {
                u.this.dismiss();
                return true;
            }
            return false;
        }
    }

    public u(Context context) {
        super(context);
        this.mContext = context;
        setupAttrs();
    }

    private void addBackground() {
        Activity activity = (Activity) this.mContext;
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.alpha = 0.3f;
        activity.getWindow().setAttributes(attributes);
    }

    private void setupAttrs() {
        setAnimationStyle(R.style.animation_image_pager_popup);
        setBackgroundDrawable(new BitmapDrawable());
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        setTouchInterceptor(new a());
        if (Build.VERSION.SDK_INT >= 22) {
            setAttachedInDecor(false);
        }
    }

    public void clearBackground() {
        Activity activity = (Activity) this.mContext;
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.alpha = 1.0f;
        activity.getWindow().setAttributes(attributes);
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        clearBackground();
        super.dismiss();
    }

    @Override // android.widget.PopupWindow
    public int getHeight() {
        View view = this.parentView;
        if (view != null) {
            return view.getMeasuredHeight();
        }
        return super.getHeight();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view) {
        super.showAsDropDown(view);
        addBackground();
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(View view, int i2, int i4, int i5) {
        super.showAtLocation(view, i2, i4, i5);
        addBackground();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i2, int i4) {
        super.showAsDropDown(view, i2, i4);
        addBackground();
    }

    public u(Context context, View view, int i2, int i4) {
        super(view, i2, i4, true);
        this.mContext = context;
        this.parentView = view;
        setupAttrs();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i2, int i4, int i5) {
        super.showAsDropDown(view, i2, i4, i5);
        addBackground();
    }
}
