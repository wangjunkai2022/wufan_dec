package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.webkit.WebView;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild;
import androidx.core.view.NestedScrollingChildHelper;
/* loaded from: classes3.dex */
public class NestedScrollWebView extends WebView implements NestedScrollingChild {

    /* renamed from: f  reason: collision with root package name */
    public static final String f45860f = NestedScrollWebView.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private int f45861a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f45862b;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f45863c;

    /* renamed from: d  reason: collision with root package name */
    private int f45864d;

    /* renamed from: e  reason: collision with root package name */
    private NestedScrollingChildHelper f45865e;

    public NestedScrollWebView(Context context) {
        super(context);
        this.f45862b = new int[2];
        this.f45863c = new int[2];
        a();
    }

    private void a() {
        this.f45865e = new NestedScrollingChildHelper(this);
        setNestedScrollingEnabled(true);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedFling(float f4, float f5, boolean z3) {
        return this.f45865e.dispatchNestedFling(f4, f5, z3);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreFling(float f4, float f5) {
        return this.f45865e.dispatchNestedPreFling(f4, f5);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedPreScroll(int i2, int i4, int[] iArr, int[] iArr2) {
        return this.f45865e.dispatchNestedPreScroll(i2, i4, iArr, iArr2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean dispatchNestedScroll(int i2, int i4, int i5, int i6, int[] iArr) {
        return this.f45865e.dispatchNestedScroll(i2, i4, i5, i6, iArr);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean hasNestedScrollingParent() {
        return this.f45865e.hasNestedScrollingParent();
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean isNestedScrollingEnabled() {
        return this.f45865e.isNestedScrollingEnabled();
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int[] iArr;
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (actionMasked == 0) {
            this.f45864d = 0;
        }
        int y3 = (int) motionEvent.getY();
        motionEvent.offsetLocation(0.0f, this.f45864d);
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i2 = this.f45861a - y3;
                    if (dispatchNestedPreScroll(0, i2, this.f45863c, this.f45862b)) {
                        i2 -= this.f45863c[1];
                        obtain.offsetLocation(0.0f, this.f45862b[1]);
                        this.f45864d += this.f45862b[1];
                    }
                    int scrollY = getScrollY();
                    this.f45861a = y3 - this.f45862b[1];
                    int max = Math.max(0, scrollY + i2);
                    int i4 = i2 - (max - scrollY);
                    if (dispatchNestedScroll(0, max - i4, 0, i4, this.f45862b)) {
                        this.f45861a = this.f45861a - this.f45862b[1];
                        obtain.offsetLocation(0.0f, iArr[1]);
                        this.f45864d += this.f45862b[1];
                    }
                    if (this.f45863c[1] == 0 && this.f45862b[1] == 0) {
                        obtain.recycle();
                        return super.onTouchEvent(obtain);
                    }
                    return false;
                } else if (actionMasked != 3 && actionMasked != 5) {
                    return false;
                }
            }
            stopNestedScroll();
            return super.onTouchEvent(motionEvent);
        }
        this.f45861a = y3;
        startNestedScroll(2);
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void setNestedScrollingEnabled(boolean z3) {
        this.f45865e.setNestedScrollingEnabled(z3);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public boolean startNestedScroll(int i2) {
        return this.f45865e.startNestedScroll(i2);
    }

    @Override // android.view.View, androidx.core.view.NestedScrollingChild
    public void stopNestedScroll() {
        this.f45865e.stopNestedScroll();
    }

    public NestedScrollWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45862b = new int[2];
        this.f45863c = new int[2];
        a();
    }

    public NestedScrollWebView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45862b = new int[2];
        this.f45863c = new int[2];
        a();
    }
}
