package com.join.mgps.customview;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ForumPopupWindow.java */
/* loaded from: classes3.dex */
public class h extends PopupWindow {

    /* renamed from: a  reason: collision with root package name */
    protected final Context f46887a;

    /* renamed from: b  reason: collision with root package name */
    protected View f46888b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ForumPopupWindow.java */
    /* loaded from: classes3.dex */
    public class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 4) {
                h.this.dismiss();
                return true;
            }
            return false;
        }
    }

    public h(Context context) {
        super(context);
        this.f46887a = context;
        c();
    }

    private void a() {
        Activity activity = (Activity) this.f46887a;
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.alpha = 0.3f;
        activity.getWindow().setAttributes(attributes);
    }

    private void c() {
        setAnimationStyle(R.style.animation_image_pager_popup);
        setBackgroundDrawable(new BitmapDrawable());
        setFocusable(true);
        setTouchable(true);
        setOutsideTouchable(true);
        setTouchInterceptor(new a());
    }

    public void b() {
        Activity activity = (Activity) this.f46887a;
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        attributes.alpha = 1.0f;
        activity.getWindow().setAttributes(attributes);
    }

    @Override // android.widget.PopupWindow
    public void dismiss() {
        b();
        super.dismiss();
    }

    @Override // android.widget.PopupWindow
    public int getHeight() {
        View view = this.f46888b;
        if (view != null) {
            return view.getMeasuredHeight();
        }
        return super.getHeight();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view) {
        super.showAsDropDown(view);
        a();
    }

    @Override // android.widget.PopupWindow
    public void showAtLocation(View view, int i2, int i4, int i5) {
        super.showAtLocation(view, i2, i4, i5);
        a();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i2, int i4) {
        super.showAsDropDown(view, i2, i4);
        a();
    }

    public h(Context context, View view, int i2, int i4) {
        super(view, i2, i4, true);
        this.f46887a = context;
        this.f46888b = view;
        c();
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i2, int i4, int i5) {
        super.showAsDropDown(view, i2, i4, i5);
        a();
    }
}
