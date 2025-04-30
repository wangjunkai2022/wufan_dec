package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import java.lang.ref.WeakReference;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class ViewStubCompat extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f1558a;

    /* renamed from: b  reason: collision with root package name */
    private int f1559b;

    /* renamed from: c  reason: collision with root package name */
    private WeakReference<View> f1560c;

    /* renamed from: d  reason: collision with root package name */
    private LayoutInflater f1561d;

    /* renamed from: e  reason: collision with root package name */
    private OnInflateListener f1562e;

    /* loaded from: classes.dex */
    public interface OnInflateListener {
        void onInflate(ViewStubCompat viewStubCompat, View view);
    }

    public ViewStubCompat(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    protected void dispatchDraw(Canvas canvas) {
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public void draw(Canvas canvas) {
    }

    public int getInflatedId() {
        return this.f1559b;
    }

    public LayoutInflater getLayoutInflater() {
        return this.f1561d;
    }

    public int getLayoutResource() {
        return this.f1558a;
    }

    public View inflate() {
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            if (this.f1558a != 0) {
                ViewGroup viewGroup = (ViewGroup) parent;
                LayoutInflater layoutInflater = this.f1561d;
                if (layoutInflater == null) {
                    layoutInflater = LayoutInflater.from(getContext());
                }
                View inflate = layoutInflater.inflate(this.f1558a, viewGroup, false);
                int i2 = this.f1559b;
                if (i2 != -1) {
                    inflate.setId(i2);
                }
                int indexOfChild = viewGroup.indexOfChild(this);
                viewGroup.removeViewInLayout(this);
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                if (layoutParams != null) {
                    viewGroup.addView(inflate, indexOfChild, layoutParams);
                } else {
                    viewGroup.addView(inflate, indexOfChild);
                }
                this.f1560c = new WeakReference<>(inflate);
                OnInflateListener onInflateListener = this.f1562e;
                if (onInflateListener != null) {
                    onInflateListener.onInflate(this, inflate);
                }
                return inflate;
            }
            throw new IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
        throw new IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
    }

    @Override // android.view.View
    protected void onMeasure(int i2, int i4) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i2) {
        this.f1559b = i2;
    }

    public void setLayoutInflater(LayoutInflater layoutInflater) {
        this.f1561d = layoutInflater;
    }

    public void setLayoutResource(int i2) {
        this.f1558a = i2;
    }

    public void setOnInflateListener(OnInflateListener onInflateListener) {
        this.f1562e = onInflateListener;
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        WeakReference<View> weakReference = this.f1560c;
        if (weakReference != null) {
            View view = weakReference.get();
            if (view != null) {
                view.setVisibility(i2);
                return;
            }
            throw new IllegalStateException("setVisibility called on un-referenced view");
        }
        super.setVisibility(i2);
        if (i2 == 0 || i2 == 4) {
            inflate();
        }
    }

    public ViewStubCompat(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f1558a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ViewStubCompat, i2, 0);
        this.f1559b = obtainStyledAttributes.getResourceId(R.styleable.ViewStubCompat_android_inflatedId, -1);
        this.f1558a = obtainStyledAttributes.getResourceId(R.styleable.ViewStubCompat_android_layout, 0);
        setId(obtainStyledAttributes.getResourceId(R.styleable.ViewStubCompat_android_id, -1));
        obtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }
}
