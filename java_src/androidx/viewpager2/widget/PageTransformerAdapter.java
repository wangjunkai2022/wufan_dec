package androidx.viewpager2.widget;

import android.view.View;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;
/* loaded from: classes2.dex */
final class PageTransformerAdapter extends ViewPager2.OnPageChangeCallback {

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayoutManager f8127a;

    /* renamed from: b  reason: collision with root package name */
    private ViewPager2.PageTransformer f8128b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PageTransformerAdapter(LinearLayoutManager linearLayoutManager) {
        this.f8127a = linearLayoutManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewPager2.PageTransformer a() {
        return this.f8128b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@Nullable ViewPager2.PageTransformer pageTransformer) {
        this.f8128b = pageTransformer;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrollStateChanged(int i2) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrolled(int i2, float f4, int i4) {
        if (this.f8128b == null) {
            return;
        }
        float f5 = -f4;
        for (int i5 = 0; i5 < this.f8127a.getChildCount(); i5++) {
            View childAt = this.f8127a.getChildAt(i5);
            if (childAt != null) {
                this.f8128b.transformPage(childAt, (this.f8127a.getPosition(childAt) - i2) + f5);
            } else {
                throw new IllegalStateException(String.format(Locale.US, "LayoutManager returned a null child at pos %d/%d while transforming pages", Integer.valueOf(i5), Integer.valueOf(this.f8127a.getChildCount())));
            }
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageSelected(int i2) {
    }
}
