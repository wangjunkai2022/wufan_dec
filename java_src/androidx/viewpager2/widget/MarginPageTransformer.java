package androidx.viewpager2.widget;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.core.util.Preconditions;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
/* loaded from: classes2.dex */
public final class MarginPageTransformer implements ViewPager2.PageTransformer {

    /* renamed from: a  reason: collision with root package name */
    private final int f8126a;

    public MarginPageTransformer(@Px int i2) {
        Preconditions.checkArgumentNonnegative(i2, "Margin must be non-negative");
        this.f8126a = i2;
    }

    private ViewPager2 a(@NonNull View view) {
        ViewParent parent = view.getParent();
        ViewParent parent2 = parent.getParent();
        if ((parent instanceof RecyclerView) && (parent2 instanceof ViewPager2)) {
            return (ViewPager2) parent2;
        }
        throw new IllegalStateException("Expected the page view to be managed by a ViewPager2 instance.");
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(@NonNull View view, float f4) {
        ViewPager2 a4 = a(view);
        float f5 = this.f8126a * f4;
        if (a4.getOrientation() == 0) {
            if (a4.c()) {
                f5 = -f5;
            }
            view.setTranslationX(f5);
            return;
        }
        view.setTranslationY(f5);
    }
}
