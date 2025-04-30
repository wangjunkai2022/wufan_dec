package com.join.mgps.customview;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.screenshot.ScreenshotGamedetialBean;
import com.join.mgps.customview.SlidingTabLayout;
import com.join.mgps.dto.GamedetialModleFourBean;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class SlidingTabLayoutGameDetailImage extends HorizontalScrollView {

    /* renamed from: m  reason: collision with root package name */
    private static final int f46326m = 24;

    /* renamed from: n  reason: collision with root package name */
    private static final int f46327n = 16;

    /* renamed from: o  reason: collision with root package name */
    private static final int f46328o = 12;

    /* renamed from: a  reason: collision with root package name */
    private int f46329a;

    /* renamed from: b  reason: collision with root package name */
    private int f46330b;

    /* renamed from: c  reason: collision with root package name */
    private int f46331c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f46332d;

    /* renamed from: e  reason: collision with root package name */
    private ViewPager f46333e;

    /* renamed from: f  reason: collision with root package name */
    private SparseArray<String> f46334f;

    /* renamed from: g  reason: collision with root package name */
    private ViewPager.OnPageChangeListener f46335g;

    /* renamed from: h  reason: collision with root package name */
    private final l0 f46336h;

    /* renamed from: i  reason: collision with root package name */
    private int f46337i;

    /* renamed from: j  reason: collision with root package name */
    private List<View> f46338j;

    /* renamed from: k  reason: collision with root package name */
    private List<View> f46339k;

    /* renamed from: l  reason: collision with root package name */
    private GamedetialModleFourBean f46340l;

    /* loaded from: classes3.dex */
    private class b implements ViewPager.OnPageChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private int f46341a;

        private b() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i2) {
            this.f46341a = i2;
            if (SlidingTabLayoutGameDetailImage.this.f46335g != null) {
                SlidingTabLayoutGameDetailImage.this.f46335g.onPageScrollStateChanged(i2);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i2, float f4, int i4) {
            int childCount = SlidingTabLayoutGameDetailImage.this.f46336h.getChildCount();
            if (childCount == 0 || i2 < 0 || i2 >= childCount) {
                return;
            }
            SlidingTabLayoutGameDetailImage.this.f46336h.b(i2, f4);
            View childAt = SlidingTabLayoutGameDetailImage.this.f46336h.getChildAt(i2);
            SlidingTabLayoutGameDetailImage.this.l(i2, childAt != null ? (int) (childAt.getWidth() * f4) : 0);
            if (SlidingTabLayoutGameDetailImage.this.f46335g != null) {
                SlidingTabLayoutGameDetailImage.this.f46335g.onPageScrolled(i2, f4, i4);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i2) {
            if (this.f46341a == 0) {
                SlidingTabLayoutGameDetailImage.this.f46336h.b(i2, 0.0f);
                SlidingTabLayoutGameDetailImage.this.l(i2, 0);
            }
            int i4 = 0;
            while (i4 < SlidingTabLayoutGameDetailImage.this.f46336h.getChildCount()) {
                SlidingTabLayoutGameDetailImage.this.f46336h.getChildAt(i4).setSelected(i2 == i4);
                i4++;
            }
            if (SlidingTabLayoutGameDetailImage.this.f46335g != null) {
                SlidingTabLayoutGameDetailImage.this.f46335g.onPageSelected(i2);
            }
            for (int i5 = 0; i5 < SlidingTabLayoutGameDetailImage.this.f46338j.size(); i5++) {
                View view = (View) SlidingTabLayoutGameDetailImage.this.f46338j.get(i5);
                View view2 = (View) SlidingTabLayoutGameDetailImage.this.f46339k.get(i5);
                if (i5 == i2) {
                    view2.setVisibility(0);
                } else {
                    view2.setVisibility(4);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        private c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            for (int i2 = 0; i2 < SlidingTabLayoutGameDetailImage.this.f46336h.getChildCount(); i2++) {
                if (view == SlidingTabLayoutGameDetailImage.this.f46336h.getChildAt(i2)) {
                    SlidingTabLayoutGameDetailImage.this.f46333e.setCurrentItem(i2);
                    SlidingTabLayoutGameDetailImage.this.f46336h.getChildAt(i2).findViewById(R.id.indicator).setVisibility(0);
                } else {
                    SlidingTabLayoutGameDetailImage.this.f46336h.getChildAt(i2).findViewById(R.id.indicator).setVisibility(4);
                }
            }
        }
    }

    public SlidingTabLayoutGameDetailImage(Context context) {
        this(context, null);
    }

    private void k() {
        String path;
        ScreenshotGamedetialBean screenshotGamedetialBean;
        String str;
        ScreenshotGamedetialBean screenshotGamedetialBean2;
        PagerAdapter adapter = this.f46333e.getAdapter();
        c cVar = new c();
        this.f46338j.clear();
        this.f46339k.clear();
        for (int i2 = 0; i2 < adapter.getCount(); i2++) {
            View g4 = g(getContext());
            View findViewById = g4.findViewById(R.id.indicator);
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) g4.findViewById(R.id.image);
            TextView textView = (TextView) g4.findViewById(R.id.name);
            View findViewById2 = g4.findViewById(R.id.play);
            this.f46338j.add(g4);
            this.f46339k.add(findViewById);
            if (this.f46332d) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) g4.getLayoutParams();
                layoutParams.width = 0;
                layoutParams.weight = 1.0f;
                int i4 = this.f46337i;
                layoutParams.setMargins(i4, 0, i4, 0);
            }
            String str2 = "";
            if (j()) {
                if (i2 == 0) {
                    String game_info_top_pic = this.f46340l.getGame_info_top_pic();
                    findViewById2.setVisibility(0);
                    textView.setVisibility(8);
                    str = "";
                    str2 = game_info_top_pic;
                } else if (i()) {
                    str2 = this.f46340l.getGame_screen_shot().get(i2 - 1).getPic();
                    str = screenshotGamedetialBean2.getTitle() + "\n[ " + screenshotGamedetialBean2.getCount() + " ]";
                } else {
                    if (this.f46340l.getPic_info() != null) {
                        int i5 = i2 - 1;
                        if (this.f46340l.getPic_info().get(i5) != null && this.f46340l.getPic_info().get(i5).getRemote() != null) {
                            path = this.f46340l.getPic_info().get(i5).getRemote().getPath();
                            str2 = path;
                            str = "";
                        }
                    }
                    str = "";
                }
            } else if (i()) {
                str2 = this.f46340l.getGame_screen_shot().get(i2).getPic();
                str = screenshotGamedetialBean.getTitle() + "\n[ " + screenshotGamedetialBean.getCount() + " ]";
            } else {
                if (this.f46340l.getPic_info() != null && this.f46340l.getPic_info().get(i2) != null && this.f46340l.getPic_info().get(i2).getRemote() != null) {
                    path = this.f46340l.getPic_info().get(i2).getRemote().getPath();
                    str2 = path;
                    str = "";
                }
                str = "";
            }
            MyImageLoader.h(simpleDraweeView, str2);
            textView.setText(str);
            g4.setOnClickListener(cVar);
            String str3 = this.f46334f.get(i2, null);
            if (str3 != null) {
                g4.setContentDescription(str3);
            }
            this.f46336h.addView(g4);
            if (i2 == this.f46333e.getCurrentItem()) {
                g4.setSelected(true);
                findViewById.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(int i2, int i4) {
        View childAt;
        int childCount = this.f46336h.getChildCount();
        if (childCount == 0 || i2 < 0 || i2 >= childCount || (childAt = this.f46336h.getChildAt(i2)) == null) {
            return;
        }
        int left = childAt.getLeft() + i4;
        if (i2 > 0 || i4 > 0) {
            left -= this.f46329a;
        }
        scrollTo(left, 0);
    }

    protected View g(Context context) {
        return LayoutInflater.from(context).inflate(R.layout.sliding_tab_item_game_detail_image, (ViewGroup) this, false);
    }

    public int getMarginWidth() {
        return this.f46337i;
    }

    public ImageView h(Context context) {
        SimpleDraweeView simpleDraweeView = new SimpleDraweeView(context);
        simpleDraweeView.getHierarchy().H(R.drawable.main_normal_icon);
        simpleDraweeView.getHierarchy().B(R.drawable.main_normal_icon);
        simpleDraweeView.getHierarchy().V(RoundingParams.a());
        return simpleDraweeView;
    }

    boolean i() {
        GamedetialModleFourBean gamedetialModleFourBean = this.f46340l;
        return (gamedetialModleFourBean == null || gamedetialModleFourBean.getGame_screen_shot() == null || this.f46340l.getGame_screen_shot().size() <= 0) ? false : true;
    }

    boolean j() {
        return (TextUtils.isEmpty(this.f46340l.getGame_info_top_pic()) || TextUtils.isEmpty(this.f46340l.getGame_info_top_video_url())) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewPager viewPager = this.f46333e;
        if (viewPager != null) {
            l(viewPager.getCurrentItem(), 0);
        }
    }

    public void setContentDescription(int i2, String str) {
        this.f46334f.put(i2, str);
    }

    public void setCustomTabColorizer(SlidingTabLayout.d dVar) {
        this.f46336h.d(dVar);
    }

    public void setCustomTabView(int i2, int i4) {
        this.f46330b = i2;
        this.f46331c = i4;
    }

    public void setData(GamedetialModleFourBean gamedetialModleFourBean) {
        this.f46340l = gamedetialModleFourBean;
        if (this.f46333e != null) {
            k();
        }
    }

    public void setDistributeEvenly(boolean z3) {
        this.f46332d = z3;
    }

    public void setMarginWidth(int i2) {
        this.f46337i = i2;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f46335g = onPageChangeListener;
    }

    public void setSelectedIndicatorColors(int... iArr) {
        this.f46336h.e(iArr);
    }

    public void setViewPager(ViewPager viewPager) {
        this.f46336h.removeAllViews();
        this.f46333e = viewPager;
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(new b());
            k();
        }
    }

    public SlidingTabLayoutGameDetailImage(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayoutGameDetailImage(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f46334f = new SparseArray<>();
        this.f46338j = new ArrayList();
        this.f46339k = new ArrayList();
        this.f46340l = null;
        setHorizontalScrollBarEnabled(false);
        setFillViewport(true);
        this.f46329a = (int) (getResources().getDisplayMetrics().density * 24.0f);
        l0 l0Var = new l0(context);
        this.f46336h = l0Var;
        addView(l0Var, -1, -2);
    }
}
