package androidx.viewpager2.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class CompositePageTransformer implements ViewPager2.PageTransformer {

    /* renamed from: a  reason: collision with root package name */
    private final List<ViewPager2.PageTransformer> f8117a = new ArrayList();

    public void addTransformer(@NonNull ViewPager2.PageTransformer pageTransformer) {
        this.f8117a.add(pageTransformer);
    }

    public void removeTransformer(@NonNull ViewPager2.PageTransformer pageTransformer) {
        this.f8117a.remove(pageTransformer);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
    public void transformPage(@NonNull View view, float f4) {
        for (ViewPager2.PageTransformer pageTransformer : this.f8117a) {
            pageTransformer.transformPage(view, f4);
        }
    }
}
