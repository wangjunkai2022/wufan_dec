package androidx.core.widget;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
@Deprecated
/* loaded from: classes.dex */
public final class ScrollerCompat {

    /* renamed from: a  reason: collision with root package name */
    OverScroller f5126a;

    ScrollerCompat(Context context, Interpolator interpolator) {
        this.f5126a = interpolator != null ? new OverScroller(context, interpolator) : new OverScroller(context);
    }

    @Deprecated
    public static ScrollerCompat create(Context context) {
        return create(context, null);
    }

    @Deprecated
    public void abortAnimation() {
        this.f5126a.abortAnimation();
    }

    @Deprecated
    public boolean computeScrollOffset() {
        return this.f5126a.computeScrollOffset();
    }

    @Deprecated
    public void fling(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        this.f5126a.fling(i2, i4, i5, i6, i7, i8, i9, i10);
    }

    @Deprecated
    public float getCurrVelocity() {
        return this.f5126a.getCurrVelocity();
    }

    @Deprecated
    public int getCurrX() {
        return this.f5126a.getCurrX();
    }

    @Deprecated
    public int getCurrY() {
        return this.f5126a.getCurrY();
    }

    @Deprecated
    public int getFinalX() {
        return this.f5126a.getFinalX();
    }

    @Deprecated
    public int getFinalY() {
        return this.f5126a.getFinalY();
    }

    @Deprecated
    public boolean isFinished() {
        return this.f5126a.isFinished();
    }

    @Deprecated
    public boolean isOverScrolled() {
        return this.f5126a.isOverScrolled();
    }

    @Deprecated
    public void notifyHorizontalEdgeReached(int i2, int i4, int i5) {
        this.f5126a.notifyHorizontalEdgeReached(i2, i4, i5);
    }

    @Deprecated
    public void notifyVerticalEdgeReached(int i2, int i4, int i5) {
        this.f5126a.notifyVerticalEdgeReached(i2, i4, i5);
    }

    @Deprecated
    public boolean springBack(int i2, int i4, int i5, int i6, int i7, int i8) {
        return this.f5126a.springBack(i2, i4, i5, i6, i7, i8);
    }

    @Deprecated
    public void startScroll(int i2, int i4, int i5, int i6) {
        this.f5126a.startScroll(i2, i4, i5, i6);
    }

    @Deprecated
    public static ScrollerCompat create(Context context, Interpolator interpolator) {
        return new ScrollerCompat(context, interpolator);
    }

    @Deprecated
    public void fling(int i2, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12) {
        this.f5126a.fling(i2, i4, i5, i6, i7, i8, i9, i10, i11, i12);
    }

    @Deprecated
    public void startScroll(int i2, int i4, int i5, int i6, int i7) {
        this.f5126a.startScroll(i2, i4, i5, i6, i7);
    }
}
