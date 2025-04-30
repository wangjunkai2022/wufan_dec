package me.relex.circleindicator;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import androidx.annotation.Nullable;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import java.util.Objects;
import me.relex.circleindicator.BaseCircleIndicator;
/* loaded from: classes5.dex */
public class CircleIndicator extends BaseCircleIndicator {

    /* renamed from: m  reason: collision with root package name */
    private ViewPager f72604m;

    /* renamed from: n  reason: collision with root package name */
    private final ViewPager.OnPageChangeListener f72605n;

    /* renamed from: o  reason: collision with root package name */
    private final DataSetObserver f72606o;

    /* loaded from: classes5.dex */
    class a implements ViewPager.OnPageChangeListener {
        a() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (CircleIndicator.this.f72604m.getAdapter() == null || CircleIndicator.this.f72604m.getAdapter().getCount() <= 0) {
                return;
            }
            CircleIndicator.this.b(i2);
        }
    }

    /* loaded from: classes5.dex */
    class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            super.onChanged();
            if (CircleIndicator.this.f72604m == null) {
                return;
            }
            PagerAdapter adapter = CircleIndicator.this.f72604m.getAdapter();
            int count = adapter != null ? adapter.getCount() : 0;
            if (count == CircleIndicator.this.getChildCount()) {
                return;
            }
            CircleIndicator circleIndicator = CircleIndicator.this;
            if (circleIndicator.f72601j < count) {
                circleIndicator.f72601j = circleIndicator.f72604m.getCurrentItem();
            } else {
                circleIndicator.f72601j = -1;
            }
            CircleIndicator.this.k();
        }
    }

    public CircleIndicator(Context context) {
        super(context);
        this.f72605n = new a();
        this.f72606o = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        PagerAdapter adapter = this.f72604m.getAdapter();
        e(adapter == null ? 0 : adapter.getCount(), this.f72604m.getCurrentItem());
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void b(int i2) {
        super.b(i2);
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void e(int i2, int i4) {
        super.e(i2, i4);
    }

    public DataSetObserver getDataSetObserver() {
        return this.f72606o;
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void h(me.relex.circleindicator.b bVar) {
        super.h(bVar);
    }

    @Override // me.relex.circleindicator.BaseCircleIndicator
    public /* bridge */ /* synthetic */ void setIndicatorCreatedListener(@Nullable BaseCircleIndicator.a aVar) {
        super.setIndicatorCreatedListener(aVar);
    }

    @Deprecated
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        ViewPager viewPager = this.f72604m;
        Objects.requireNonNull(viewPager, "can not find Viewpager , setViewPager first");
        viewPager.removeOnPageChangeListener(onPageChangeListener);
        this.f72604m.addOnPageChangeListener(onPageChangeListener);
    }

    public void setViewPager(@Nullable ViewPager viewPager) {
        this.f72604m = viewPager;
        if (viewPager == null || viewPager.getAdapter() == null) {
            return;
        }
        this.f72601j = -1;
        k();
        this.f72604m.removeOnPageChangeListener(this.f72605n);
        this.f72604m.addOnPageChangeListener(this.f72605n);
        this.f72605n.onPageSelected(this.f72604m.getCurrentItem());
    }

    public CircleIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f72605n = new a();
        this.f72606o = new b();
    }

    public CircleIndicator(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f72605n = new a();
        this.f72606o = new b();
    }

    @TargetApi(21)
    public CircleIndicator(Context context, AttributeSet attributeSet, int i2, int i4) {
        super(context, attributeSet, i2, i4);
        this.f72605n = new a();
        this.f72606o = new b();
    }
}
