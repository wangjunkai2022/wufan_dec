package com.join.kotlin.domain.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Region;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;
import com.umeng.analytics.pro.ai;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import net.lingala.zip4j.util.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CornersLinearLayout.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b3\u00104B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b3\u00105B!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u00106\u001a\u00020\n¢\u0006\u0004\b3\u00107J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J0\u0010\u000f\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0014J\u0012\u0010\u0012\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0014R\"\u0010\u0013\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010\u0019\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018R\"\u0010\u001d\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\"\u0010#\u001a\u00020\u001c8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b#\u0010\u001e\u001a\u0004\b$\u0010 \"\u0004\b%\u0010\"R\"\u0010&\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0014\u001a\u0004\b'\u0010\u0016\"\u0004\b(\u0010\u0018R\"\u0010*\u001a\u00020)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00100\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u0010\u0014\u001a\u0004\b1\u0010\u0016\"\u0004\b2\u0010\u0018¨\u00068"}, d2 = {"Lcom/join/kotlin/domain/widget/CornersLinearLayout;", "Landroid/widget/LinearLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "init", "", "changed", "", "l", ai.aF, e.f73017f0, "b", "onLayout", "Landroid/graphics/Canvas;", "canvas", "dispatchDraw", "conner_top_left", "I", "getConner_top_left", "()I", "setConner_top_left", "(I)V", "conner_bottom_right", "getConner_bottom_right", "setConner_bottom_right", "Landroid/graphics/Paint;", "paint", "Landroid/graphics/Paint;", "getPaint", "()Landroid/graphics/Paint;", "setPaint", "(Landroid/graphics/Paint;)V", "srcpaint", "getSrcpaint", "setSrcpaint", "conner_top_right", "getConner_top_right", "setConner_top_right", "Landroid/graphics/RectF;", "rect", "Landroid/graphics/RectF;", "getRect", "()Landroid/graphics/RectF;", "setRect", "(Landroid/graphics/RectF;)V", "conner_bottom_left", "getConner_bottom_left", "setConner_bottom_left", "<init>", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "app_wufunNormalRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class CornersLinearLayout extends LinearLayout {
    private int conner_bottom_left;
    private int conner_bottom_right;
    private int conner_top_left;
    private int conner_top_right;
    @NotNull
    private Paint paint;
    @NotNull
    private RectF rect;
    @NotNull
    private Paint srcpaint;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CornersLinearLayout(@NotNull Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.paint = new Paint();
        this.srcpaint = new Paint();
        this.rect = new RectF();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@Nullable Canvas canvas) {
        Path path = new Path();
        path.addRoundRect(this.rect, this.conner_top_left, this.conner_top_right, Path.Direction.CW);
        RectF rectF = this.rect;
        float f4 = rectF.bottom;
        path.addRect(new RectF(0.0f, f4 / 2, rectF.right, f4), Path.Direction.CW);
        if (canvas != null) {
            canvas.clipPath(path, Region.Op.INTERSECT);
        }
        super.dispatchDraw(canvas);
    }

    public final int getConner_bottom_left() {
        return this.conner_bottom_left;
    }

    public final int getConner_bottom_right() {
        return this.conner_bottom_right;
    }

    public final int getConner_top_left() {
        return this.conner_top_left;
    }

    public final int getConner_top_right() {
        return this.conner_top_right;
    }

    @NotNull
    public final Paint getPaint() {
        return this.paint;
    }

    @NotNull
    public final RectF getRect() {
        return this.rect;
    }

    @NotNull
    public final Paint getSrcpaint() {
        return this.srcpaint;
    }

    public final void init(@NotNull Context context, @NotNull AttributeSet attrs) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.CornersLinearLayout);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr…able.CornersLinearLayout)");
        this.conner_top_left = obtainStyledAttributes.getDimensionPixelOffset(2, 0);
        this.conner_top_right = obtainStyledAttributes.getDimensionPixelOffset(3, 0);
        this.conner_bottom_left = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        this.conner_bottom_right = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        obtainStyledAttributes.recycle();
        this.paint.setAntiAlias(true);
        this.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        this.srcpaint.setAntiAlias(true);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z3, int i2, int i4, int i5, int i6) {
        super.onLayout(z3, i2, i4, i5, i6);
        this.rect.set(0.0f, 0.0f, getWidth(), getHeight());
    }

    public final void setConner_bottom_left(int i2) {
        this.conner_bottom_left = i2;
    }

    public final void setConner_bottom_right(int i2) {
        this.conner_bottom_right = i2;
    }

    public final void setConner_top_left(int i2) {
        this.conner_top_left = i2;
    }

    public final void setConner_top_right(int i2) {
        this.conner_top_right = i2;
    }

    public final void setPaint(@NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<set-?>");
        this.paint = paint;
    }

    public final void setRect(@NotNull RectF rectF) {
        Intrinsics.checkNotNullParameter(rectF, "<set-?>");
        this.rect = rectF;
    }

    public final void setSrcpaint(@NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "<set-?>");
        this.srcpaint = paint;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CornersLinearLayout(@NotNull Context context, @NotNull AttributeSet attrs) {
        super(context, attrs, 0);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.paint = new Paint();
        this.srcpaint = new Paint();
        this.rect = new RectF();
        init(context, attrs);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CornersLinearLayout(@NotNull Context context, @NotNull AttributeSet attrs, int i2) {
        super(context, attrs, i2);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.paint = new Paint();
        this.srcpaint = new Paint();
        this.rect = new RectF();
        init(context, attrs);
    }
}
