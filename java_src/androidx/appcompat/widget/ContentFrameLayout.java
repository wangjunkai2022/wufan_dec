package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class ContentFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private TypedValue f1144a;

    /* renamed from: b  reason: collision with root package name */
    private TypedValue f1145b;

    /* renamed from: c  reason: collision with root package name */
    private TypedValue f1146c;

    /* renamed from: d  reason: collision with root package name */
    private TypedValue f1147d;

    /* renamed from: e  reason: collision with root package name */
    private TypedValue f1148e;

    /* renamed from: f  reason: collision with root package name */
    private TypedValue f1149f;

    /* renamed from: g  reason: collision with root package name */
    private final Rect f1150g;

    /* renamed from: h  reason: collision with root package name */
    private OnAttachListener f1151h;

    /* loaded from: classes.dex */
    public interface OnAttachListener {
        void onAttachedFromWindow();

        void onDetachedFromWindow();
    }

    public ContentFrameLayout(@NonNull Context context) {
        this(context, null);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void dispatchFitSystemWindows(Rect rect) {
        fitSystemWindows(rect);
    }

    public TypedValue getFixedHeightMajor() {
        if (this.f1148e == null) {
            this.f1148e = new TypedValue();
        }
        return this.f1148e;
    }

    public TypedValue getFixedHeightMinor() {
        if (this.f1149f == null) {
            this.f1149f = new TypedValue();
        }
        return this.f1149f;
    }

    public TypedValue getFixedWidthMajor() {
        if (this.f1146c == null) {
            this.f1146c = new TypedValue();
        }
        return this.f1146c;
    }

    public TypedValue getFixedWidthMinor() {
        if (this.f1147d == null) {
            this.f1147d = new TypedValue();
        }
        return this.f1147d;
    }

    public TypedValue getMinWidthMajor() {
        if (this.f1144a == null) {
            this.f1144a = new TypedValue();
        }
        return this.f1144a;
    }

    public TypedValue getMinWidthMinor() {
        if (this.f1145b == null) {
            this.f1145b = new TypedValue();
        }
        return this.f1145b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        OnAttachListener onAttachListener = this.f1151h;
        if (onAttachListener != null) {
            onAttachListener.onAttachedFromWindow();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        OnAttachListener onAttachListener = this.f1151h;
        if (onAttachListener != null) {
            onAttachListener.onDetachedFromWindow();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ContentFrameLayout.onMeasure(int, int):void");
    }

    public void setAttachListener(OnAttachListener onAttachListener) {
        this.f1151h = onAttachListener;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setDecorPadding(int i2, int i4, int i5, int i6) {
        this.f1150g.set(i2, i4, i5, i6);
        if (ViewCompat.isLaidOut(this)) {
            requestLayout();
        }
    }

    public ContentFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ContentFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f1150g = new Rect();
    }
}
