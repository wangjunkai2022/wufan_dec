package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.R;
import java.util.ArrayList;
import m.a;
/* loaded from: classes.dex */
public final class FragmentContainerView extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<View> f5854a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<View> f5855b;

    /* renamed from: c  reason: collision with root package name */
    private View.OnApplyWindowInsetsListener f5856c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f5857d;

    public FragmentContainerView(@NonNull Context context) {
        super(context);
        this.f5857d = true;
    }

    private void a(@NonNull View view) {
        ArrayList<View> arrayList = this.f5855b;
        if (arrayList == null || !arrayList.contains(view)) {
            return;
        }
        if (this.f5854a == null) {
            this.f5854a = new ArrayList<>();
        }
        this.f5854a.add(view);
    }

    @Override // android.view.ViewGroup
    public void addView(@NonNull View view, int i2, @Nullable ViewGroup.LayoutParams layoutParams) {
        if (FragmentManager.t0(view) != null) {
            super.addView(view, i2, layoutParams);
            return;
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    protected boolean addViewInLayout(@NonNull View view, int i2, @Nullable ViewGroup.LayoutParams layoutParams, boolean z3) {
        if (FragmentManager.t0(view) != null) {
            return super.addViewInLayout(view, i2, layoutParams, z3);
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    @NonNull
    @RequiresApi(20)
    public WindowInsets dispatchApplyWindowInsets(@NonNull WindowInsets windowInsets) {
        WindowInsetsCompat onApplyWindowInsets;
        WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f5856c;
        if (onApplyWindowInsetsListener != null) {
            onApplyWindowInsets = WindowInsetsCompat.toWindowInsetsCompat(onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets));
        } else {
            onApplyWindowInsets = ViewCompat.onApplyWindowInsets(this, windowInsetsCompat);
        }
        if (!onApplyWindowInsets.isConsumed()) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                ViewCompat.dispatchApplyWindowInsets(getChildAt(i2), onApplyWindowInsets);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(@NonNull Canvas canvas) {
        if (this.f5857d && this.f5854a != null) {
            for (int i2 = 0; i2 < this.f5854a.size(); i2++) {
                super.drawChild(canvas, this.f5854a.get(i2), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(@NonNull Canvas canvas, @NonNull View view, long j4) {
        ArrayList<View> arrayList;
        if (!this.f5857d || (arrayList = this.f5854a) == null || arrayList.size() <= 0 || !this.f5854a.contains(view)) {
            return super.drawChild(canvas, view, j4);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(@NonNull View view) {
        ArrayList<View> arrayList = this.f5855b;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList<View> arrayList2 = this.f5854a;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.f5857d = true;
            }
        }
        super.endViewTransition(view);
    }

    @Override // android.view.View
    @NonNull
    @RequiresApi(20)
    public WindowInsets onApplyWindowInsets(@NonNull WindowInsets windowInsets) {
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(@NonNull View view, boolean z3) {
        if (z3) {
            a(view);
        }
        super.removeDetachedView(view, z3);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(@NonNull View view) {
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i2) {
        a(getChildAt(i2));
        super.removeViewAt(i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(@NonNull View view) {
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i2, int i4) {
        for (int i5 = i2; i5 < i2 + i4; i5++) {
            a(getChildAt(i5));
        }
        super.removeViews(i2, i4);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i2, int i4) {
        for (int i5 = i2; i5 < i2 + i4; i5++) {
            a(getChildAt(i5));
        }
        super.removeViewsInLayout(i2, i4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDrawDisappearingViewsLast(boolean z3) {
        this.f5857d = z3;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(@Nullable LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            super.setLayoutTransition(layoutTransition);
            return;
        }
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(@NonNull View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.f5856c = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(@NonNull View view) {
        if (view.getParent() == this) {
            if (this.f5855b == null) {
                this.f5855b = new ArrayList<>();
            }
            this.f5855b.add(view);
        }
        super.startViewTransition(view);
    }

    public FragmentContainerView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FragmentContainerView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        String str;
        this.f5857d = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FragmentContainerView);
            if (classAttribute == null) {
                classAttribute = obtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_name);
                str = "android:name";
            } else {
                str = "class";
            }
            obtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + classAttribute + a.f72569g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentContainerView(@NonNull Context context, @NonNull AttributeSet attributeSet, @NonNull FragmentManager fragmentManager) {
        super(context, attributeSet);
        String str;
        this.f5857d = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.FragmentContainerView);
        classAttribute = classAttribute == null ? obtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_name) : classAttribute;
        String string = obtainStyledAttributes.getString(R.styleable.FragmentContainerView_android_tag);
        obtainStyledAttributes.recycle();
        int id = getId();
        Fragment findFragmentById = fragmentManager.findFragmentById(id);
        if (classAttribute != null && findFragmentById == null) {
            if (id <= 0) {
                if (string != null) {
                    str = " with tag " + string;
                } else {
                    str = "";
                }
                throw new IllegalStateException("FragmentContainerView must have an android:id to add Fragment " + classAttribute + str);
            }
            Fragment instantiate = fragmentManager.getFragmentFactory().instantiate(context.getClassLoader(), classAttribute);
            instantiate.onInflate(context, attributeSet, (Bundle) null);
            fragmentManager.beginTransaction().setReorderingAllowed(true).a(this, instantiate, string).commitNowAllowingStateLoss();
        }
        fragmentManager.M0(this);
    }
}
