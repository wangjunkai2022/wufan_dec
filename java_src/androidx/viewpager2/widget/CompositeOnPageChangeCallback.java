package androidx.viewpager2.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Px;
import androidx.viewpager2.widget.ViewPager2;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.List;
/* loaded from: classes2.dex */
final class CompositeOnPageChangeCallback extends ViewPager2.OnPageChangeCallback {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final List<ViewPager2.OnPageChangeCallback> f8116a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompositeOnPageChangeCallback(int i2) {
        this.f8116a = new ArrayList(i2);
    }

    private void c(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.f8116a.add(onPageChangeCallback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        this.f8116a.remove(onPageChangeCallback);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrollStateChanged(int i2) {
        try {
            for (ViewPager2.OnPageChangeCallback onPageChangeCallback : this.f8116a) {
                onPageChangeCallback.onPageScrollStateChanged(i2);
            }
        } catch (ConcurrentModificationException e4) {
            c(e4);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageScrolled(int i2, float f4, @Px int i4) {
        try {
            for (ViewPager2.OnPageChangeCallback onPageChangeCallback : this.f8116a) {
                onPageChangeCallback.onPageScrolled(i2, f4, i4);
            }
        } catch (ConcurrentModificationException e4) {
            c(e4);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public void onPageSelected(int i2) {
        try {
            for (ViewPager2.OnPageChangeCallback onPageChangeCallback : this.f8116a) {
                onPageChangeCallback.onPageSelected(i2);
            }
        } catch (ConcurrentModificationException e4) {
            c(e4);
        }
    }
}
