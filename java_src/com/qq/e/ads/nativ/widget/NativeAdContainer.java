package com.qq.e.ads.nativ.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.qq.e.comm.util.GDTLogger;
/* loaded from: classes4.dex */
public class NativeAdContainer extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private ViewStatusListener f56379a;

    /* renamed from: b  reason: collision with root package name */
    private ViewStatus f56380b;

    /* renamed from: com.qq.e.ads.nativ.widget.NativeAdContainer$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56381a;

        static {
            int[] iArr = new int[ViewStatus.values().length];
            f56381a = iArr;
            try {
                iArr[1] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56381a[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes4.dex */
    private enum ViewStatus {
        INIT,
        ATTACHED,
        DETACHED
    }

    public NativeAdContainer(Context context) {
        super(context);
        this.f56380b = ViewStatus.INIT;
    }

    public NativeAdContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f56380b = ViewStatus.INIT;
    }

    public NativeAdContainer(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f56380b = ViewStatus.INIT;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        ViewStatusListener viewStatusListener = this.f56379a;
        if (viewStatusListener != null) {
            viewStatusListener.onDispatchTouchEvent(motionEvent);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        GDTLogger.d("NativeAdContainer onAttachedToWindow");
        this.f56380b = ViewStatus.ATTACHED;
        ViewStatusListener viewStatusListener = this.f56379a;
        if (viewStatusListener != null) {
            viewStatusListener.onAttachToWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        GDTLogger.d("NativeAdContainer onDetachedFromWindow");
        this.f56380b = ViewStatus.DETACHED;
        ViewStatusListener viewStatusListener = this.f56379a;
        if (viewStatusListener != null) {
            viewStatusListener.onDetachFromWindow();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z3) {
        super.onWindowFocusChanged(z3);
        GDTLogger.d("onWindowFocusChanged: hasWindowFocus: " + z3);
        ViewStatusListener viewStatusListener = this.f56379a;
        if (viewStatusListener != null) {
            viewStatusListener.onWindowFocusChanged(z3);
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i2) {
        super.onWindowVisibilityChanged(i2);
        GDTLogger.d("onWindowVisibilityChanged: visibility: " + i2);
        ViewStatusListener viewStatusListener = this.f56379a;
        if (viewStatusListener != null) {
            viewStatusListener.onWindowVisibilityChanged(i2);
        }
    }

    public void setViewStatusListener(ViewStatusListener viewStatusListener) {
        this.f56379a = viewStatusListener;
        if (viewStatusListener != null) {
            int ordinal = this.f56380b.ordinal();
            if (ordinal == 1) {
                this.f56379a.onAttachToWindow();
            } else if (ordinal != 2) {
            } else {
                this.f56379a.onDetachFromWindow();
            }
        }
    }
}
