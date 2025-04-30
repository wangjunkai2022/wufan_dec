package androidx.recyclerview.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes2.dex */
public class DividerItemDecoration extends RecyclerView.ItemDecoration {
    public static final int HORIZONTAL = 0;
    public static final int VERTICAL = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final String f6867d = "DividerItem";

    /* renamed from: e  reason: collision with root package name */
    private static final int[] f6868e = {16843284};

    /* renamed from: a  reason: collision with root package name */
    private Drawable f6869a;

    /* renamed from: b  reason: collision with root package name */
    private int f6870b;

    /* renamed from: c  reason: collision with root package name */
    private final Rect f6871c = new Rect();

    public DividerItemDecoration(Context context, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(f6868e);
        this.f6869a = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        setOrientation(i2);
    }

    private void a(Canvas canvas, RecyclerView recyclerView) {
        int height;
        int i2;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i2 = recyclerView.getPaddingTop();
            height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
            canvas.clipRect(recyclerView.getPaddingLeft(), i2, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
        } else {
            height = recyclerView.getHeight();
            i2 = 0;
        }
        int childCount = recyclerView.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = recyclerView.getChildAt(i4);
            recyclerView.getLayoutManager().getDecoratedBoundsWithMargins(childAt, this.f6871c);
            int round = this.f6871c.right + Math.round(childAt.getTranslationX());
            this.f6869a.setBounds(round - this.f6869a.getIntrinsicWidth(), i2, round, height);
            this.f6869a.draw(canvas);
        }
        canvas.restore();
    }

    private void b(Canvas canvas, RecyclerView recyclerView) {
        int width;
        int i2;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i2 = recyclerView.getPaddingLeft();
            width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            canvas.clipRect(i2, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
        } else {
            width = recyclerView.getWidth();
            i2 = 0;
        }
        int childCount = recyclerView.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = recyclerView.getChildAt(i4);
            recyclerView.getDecoratedBoundsWithMargins(childAt, this.f6871c);
            int round = this.f6871c.bottom + Math.round(childAt.getTranslationY());
            this.f6869a.setBounds(i2, round - this.f6869a.getIntrinsicHeight(), width, round);
            this.f6869a.draw(canvas);
        }
        canvas.restore();
    }

    @Nullable
    public Drawable getDrawable() {
        return this.f6869a;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        Drawable drawable = this.f6869a;
        if (drawable == null) {
            rect.set(0, 0, 0, 0);
        } else if (this.f6870b == 1) {
            rect.set(0, 0, 0, drawable.getIntrinsicHeight());
        } else {
            rect.set(0, 0, drawable.getIntrinsicWidth(), 0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        if (recyclerView.getLayoutManager() == null || this.f6869a == null) {
            return;
        }
        if (this.f6870b == 1) {
            b(canvas, recyclerView);
        } else {
            a(canvas, recyclerView);
        }
    }

    public void setDrawable(@NonNull Drawable drawable) {
        if (drawable != null) {
            this.f6869a = drawable;
            return;
        }
        throw new IllegalArgumentException("Drawable cannot be null.");
    }

    public void setOrientation(int i2) {
        if (i2 != 0 && i2 != 1) {
            throw new IllegalArgumentException("Invalid orientation. It should be either HORIZONTAL or VERTICAL");
        }
        this.f6870b = i2;
    }
}
