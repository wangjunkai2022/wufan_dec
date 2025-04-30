package com.youth.banner;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.youth.banner.loader.ImageLoaderInterface;
import com.youth.banner.view.BannerViewPager;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class Banner extends FrameLayout implements ViewPager.OnPageChangeListener {
    private List<String> A;
    private List B;
    private List<View> C;
    private List<ImageView> D;
    private Context E;
    private BannerViewPager F;
    private TextView G;
    private TextView H;
    private TextView I;
    private LinearLayout J;
    private LinearLayout K;

    /* renamed from: a  reason: collision with root package name */
    public String f64813a;

    /* renamed from: b  reason: collision with root package name */
    private int f64814b;

    /* renamed from: c  reason: collision with root package name */
    private int f64815c;

    /* renamed from: d  reason: collision with root package name */
    private int f64816d;

    /* renamed from: e  reason: collision with root package name */
    private int f64817e;

    /* renamed from: f  reason: collision with root package name */
    private int f64818f;

    /* renamed from: g  reason: collision with root package name */
    private int f64819g;

    /* renamed from: h  reason: collision with root package name */
    private int f64820h;

    /* renamed from: i  reason: collision with root package name */
    private int f64821i;

    /* renamed from: j  reason: collision with root package name */
    private int f64822j;

    /* renamed from: k  reason: collision with root package name */
    private int f64823k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f64824l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f64825m;

    /* renamed from: n  reason: collision with root package name */
    private int f64826n;

    /* renamed from: n0  reason: collision with root package name */
    private LinearLayout f64827n0;

    /* renamed from: o  reason: collision with root package name */
    private int f64828o;

    /* renamed from: o0  reason: collision with root package name */
    private ImageView f64829o0;

    /* renamed from: p  reason: collision with root package name */
    private int f64830p;

    /* renamed from: p0  reason: collision with root package name */
    private ImageLoaderInterface f64831p0;

    /* renamed from: q  reason: collision with root package name */
    private int f64832q;

    /* renamed from: q0  reason: collision with root package name */
    private b f64833q0;

    /* renamed from: r  reason: collision with root package name */
    private int f64834r;

    /* renamed from: r0  reason: collision with root package name */
    private ViewPager.OnPageChangeListener f64835r0;

    /* renamed from: s  reason: collision with root package name */
    private int f64836s;

    /* renamed from: s0  reason: collision with root package name */
    private com.youth.banner.b f64837s0;

    /* renamed from: t  reason: collision with root package name */
    private int f64838t;

    /* renamed from: t0  reason: collision with root package name */
    private v2.a f64839t0;

    /* renamed from: u  reason: collision with root package name */
    private int f64840u;

    /* renamed from: u0  reason: collision with root package name */
    private v2.b f64841u0;

    /* renamed from: v  reason: collision with root package name */
    private int f64842v;

    /* renamed from: v0  reason: collision with root package name */
    private DisplayMetrics f64843v0;

    /* renamed from: w  reason: collision with root package name */
    private int f64844w;

    /* renamed from: w0  reason: collision with root package name */
    private e f64845w0;

    /* renamed from: x  reason: collision with root package name */
    private int f64846x;

    /* renamed from: x0  reason: collision with root package name */
    private final Runnable f64847x0;

    /* renamed from: y  reason: collision with root package name */
    private int f64848y;

    /* renamed from: z  reason: collision with root package name */
    private int f64849z;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (Banner.this.f64842v <= 1 || !Banner.this.f64824l) {
                return;
            }
            Banner banner = Banner.this;
            banner.f64844w = (banner.f64844w % (Banner.this.f64842v + 1)) + 1;
            if (Banner.this.f64844w == 1) {
                Banner.this.F.setCurrentItem(Banner.this.f64844w, false);
                Banner.this.f64845w0.d(Banner.this.f64847x0);
                return;
            }
            Banner.this.F.setCurrentItem(Banner.this.f64844w);
            Banner.this.f64845w0.h(Banner.this.f64847x0, Banner.this.f64822j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b extends PagerAdapter {

        /* loaded from: classes3.dex */
        class a implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f64852a;

            a(int i2) {
                this.f64852a = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                String str = Banner.this.f64813a;
                Banner.this.f64839t0.OnBannerClick(this.f64852a);
            }
        }

        /* renamed from: com.youth.banner.Banner$b$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class View$OnClickListenerC0438b implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f64854a;

            View$OnClickListenerC0438b(int i2) {
                this.f64854a = i2;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Banner.this.f64841u0.OnBannerClick(Banner.this.L(this.f64854a));
            }
        }

        b() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i2, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return Banner.this.C.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i2) {
            viewGroup.addView((View) Banner.this.C.get(i2));
            View view = (View) Banner.this.C.get(i2);
            if (Banner.this.f64839t0 != null) {
                view.setOnClickListener(new a(i2));
            }
            if (Banner.this.f64841u0 != null) {
                view.setOnClickListener(new View$OnClickListenerC0438b(i2));
            }
            return view;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }
    }

    public Banner(Context context) {
        this(context, null);
    }

    private void G() {
        if (this.A.size() == this.B.size()) {
            int i2 = this.f64834r;
            if (i2 != -1) {
                this.f64827n0.setBackgroundColor(i2);
            }
            if (this.f64832q != -1) {
                this.f64827n0.setLayoutParams(new RelativeLayout.LayoutParams(-1, this.f64832q));
            }
            int i4 = this.f64836s;
            if (i4 != -1) {
                this.G.setTextColor(i4);
            }
            int i5 = this.f64838t;
            if (i5 != -1) {
                this.G.setTextSize(0, i5);
            }
            List<String> list = this.A;
            if (list == null || list.size() <= 0) {
                return;
            }
            this.G.setText(this.A.get(0));
            this.G.setVisibility(0);
            this.f64827n0.setVisibility(0);
            return;
        }
        throw new RuntimeException("[Banner] --> The number of titles and images is different");
    }

    private void l() {
        LinearLayout.LayoutParams layoutParams;
        this.D.clear();
        this.J.removeAllViews();
        this.K.removeAllViews();
        for (int i2 = 0; i2 < this.f64842v; i2++) {
            ImageView imageView = new ImageView(this.E);
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            if (i2 == 0) {
                layoutParams = new LinearLayout.LayoutParams(this.f64817e, this.f64818f);
                imageView.setImageResource(this.f64826n);
            } else {
                layoutParams = new LinearLayout.LayoutParams(this.f64815c, this.f64816d);
                imageView.setImageResource(this.f64828o);
            }
            int i4 = this.f64814b;
            layoutParams.leftMargin = i4;
            layoutParams.rightMargin = i4;
            this.D.add(imageView);
            int i5 = this.f64821i;
            if (i5 == 1 || i5 == 4) {
                this.J.addView(imageView, layoutParams);
            } else if (i5 == 5) {
                this.K.addView(imageView, layoutParams);
            }
        }
    }

    private void m(Context context, AttributeSet attributeSet) {
        if (attributeSet == null) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Banner);
        this.f64815c = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Banner_indicator_width, this.f64819g);
        this.f64816d = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Banner_indicator_height, this.f64819g);
        this.f64817e = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Banner_indicator_selected_width, this.f64819g);
        this.f64818f = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Banner_indicator_selected_height, this.f64819g);
        this.f64814b = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Banner_indicator_margin, 5);
        this.f64826n = obtainStyledAttributes.getResourceId(R.styleable.Banner_indicator_drawable_selected, R.drawable.gray_radius);
        this.f64828o = obtainStyledAttributes.getResourceId(R.styleable.Banner_indicator_drawable_unselected, R.drawable.white_radius);
        this.f64849z = obtainStyledAttributes.getInt(R.styleable.Banner_image_scale_type, this.f64849z);
        this.f64822j = obtainStyledAttributes.getInt(R.styleable.Banner_delay_time, 2000);
        this.f64823k = obtainStyledAttributes.getInt(R.styleable.Banner_scroll_time, 800);
        this.f64824l = obtainStyledAttributes.getBoolean(R.styleable.Banner_is_auto_play, true);
        this.f64834r = obtainStyledAttributes.getColor(R.styleable.Banner_title_background, -1);
        this.f64832q = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Banner_title_height, -1);
        this.f64836s = obtainStyledAttributes.getColor(R.styleable.Banner_title_textcolor, -1);
        this.f64838t = obtainStyledAttributes.getDimensionPixelSize(R.styleable.Banner_title_textsize, -1);
        this.f64830p = obtainStyledAttributes.getResourceId(R.styleable.Banner_banner_layout, this.f64830p);
        this.f64820h = obtainStyledAttributes.getResourceId(R.styleable.Banner_banner_default_image, R.drawable.no_banner);
        obtainStyledAttributes.recycle();
    }

    private void n() {
        this.C.clear();
        int i2 = this.f64821i;
        if (i2 == 1 || i2 == 4 || i2 == 5) {
            l();
        } else if (i2 == 3) {
            TextView textView = this.H;
            textView.setText("1/" + this.f64842v);
        } else if (i2 == 2) {
            TextView textView2 = this.I;
            textView2.setText("1/" + this.f64842v);
        }
    }

    private void o(Context context, AttributeSet attributeSet) {
        this.C.clear();
        m(context, attributeSet);
        View inflate = LayoutInflater.from(context).inflate(this.f64830p, (ViewGroup) this, true);
        this.f64829o0 = (ImageView) inflate.findViewById(R.id.bannerDefaultImage);
        this.F = (BannerViewPager) inflate.findViewById(R.id.bannerViewPager);
        this.f64827n0 = (LinearLayout) inflate.findViewById(R.id.titleView);
        this.J = (LinearLayout) inflate.findViewById(R.id.circleIndicator);
        this.K = (LinearLayout) inflate.findViewById(R.id.indicatorInside);
        this.G = (TextView) inflate.findViewById(R.id.bannerTitle);
        this.I = (TextView) inflate.findViewById(R.id.numIndicator);
        this.H = (TextView) inflate.findViewById(R.id.numIndicatorInside);
        this.f64829o0.setImageResource(this.f64820h);
        p();
    }

    private void p() {
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            com.youth.banner.b bVar = new com.youth.banner.b(this.F.getContext());
            this.f64837s0 = bVar;
            bVar.a(this.f64823k);
            declaredField.set(this.F, this.f64837s0);
        } catch (Exception e4) {
            e4.getMessage();
        }
    }

    private void setImageList(List<?> list) {
        Object obj;
        if (list != null && list.size() > 0) {
            this.f64829o0.setVisibility(8);
            n();
            int i2 = 0;
            while (true) {
                int i4 = this.f64842v;
                if (i2 > i4 + 1) {
                    return;
                }
                if (i2 == 0) {
                    obj = list.get(i4 - 1);
                } else if (i2 == i4 + 1) {
                    obj = list.get(0);
                } else {
                    obj = list.get(i2 - 1);
                }
                ImageLoaderInterface imageLoaderInterface = this.f64831p0;
                View createImageView = imageLoaderInterface != null ? imageLoaderInterface.createImageView(this.E, obj) : null;
                if (createImageView == null) {
                    createImageView = new ImageView(this.E);
                }
                setScaleType(createImageView);
                this.C.add(createImageView);
                ImageLoaderInterface imageLoaderInterface2 = this.f64831p0;
                if (imageLoaderInterface2 != null) {
                    imageLoaderInterface2.displayImage(this.E, obj, createImageView);
                }
                i2++;
            }
        } else {
            this.f64829o0.setVisibility(0);
        }
    }

    private void setScaleType(View view) {
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            switch (this.f64849z) {
                case 0:
                    imageView.setScaleType(ImageView.ScaleType.CENTER);
                    return;
                case 1:
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    return;
                case 2:
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    return;
                case 3:
                    imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
                    return;
                case 4:
                    imageView.setScaleType(ImageView.ScaleType.FIT_END);
                    return;
                case 5:
                    imageView.setScaleType(ImageView.ScaleType.FIT_START);
                    return;
                case 6:
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    return;
                case 7:
                    imageView.setScaleType(ImageView.ScaleType.MATRIX);
                    return;
                default:
                    return;
            }
        }
    }

    private void u() {
        int i2 = this.f64842v > 1 ? 0 : 8;
        int i4 = this.f64821i;
        if (i4 == 1) {
            this.J.setVisibility(i2);
        } else if (i4 == 2) {
            this.I.setVisibility(i2);
        } else if (i4 == 3) {
            this.H.setVisibility(i2);
            G();
        } else if (i4 == 4) {
            this.J.setVisibility(i2);
            G();
        } else if (i4 != 5) {
        } else {
            this.K.setVisibility(i2);
            G();
        }
    }

    private void w() {
        int i2 = this.f64840u;
        if (i2 != 0) {
            this.f64844w = i2;
        } else {
            this.f64844w = 1;
        }
        b bVar = this.f64833q0;
        if (bVar == null) {
            this.f64833q0 = new b();
            this.F.addOnPageChangeListener(this);
            this.F.setAdapter(this.f64833q0);
        } else {
            bVar.notifyDataSetChanged();
        }
        this.F.setFocusable(true);
        this.F.setCurrentItem(this.f64844w);
        int i4 = this.f64846x;
        if (i4 != -1) {
            this.J.setGravity(i4);
        }
        if (this.f64825m && this.f64842v > 1) {
            this.F.setScrollable(true);
        } else {
            this.F.setScrollable(false);
        }
        if (this.f64824l) {
            J();
        }
    }

    public Banner A(int i2) {
        if (i2 == 5) {
            this.f64846x = 19;
        } else if (i2 == 6) {
            this.f64846x = 17;
        } else if (i2 == 7) {
            this.f64846x = 21;
        }
        return this;
    }

    public Banner B(int i2) {
        BannerViewPager bannerViewPager = this.F;
        if (bannerViewPager != null) {
            bannerViewPager.setOffscreenPageLimit(i2);
        }
        return this;
    }

    @Deprecated
    public Banner C(v2.a aVar) {
        this.f64839t0 = aVar;
        return this;
    }

    public Banner D(v2.b bVar) {
        this.f64841u0 = bVar;
        return this;
    }

    public Banner E(boolean z3, ViewPager.PageTransformer pageTransformer) {
        this.F.setPageTransformer(z3, pageTransformer);
        return this;
    }

    public Banner F(int i2) {
        this.f64840u = i2;
        return this;
    }

    public Banner H(boolean z3) {
        this.f64825m = z3;
        return this;
    }

    public Banner I() {
        u();
        setImageList(this.B);
        w();
        return this;
    }

    public void J() {
        this.f64845w0.i(this.f64847x0);
        this.f64845w0.h(this.f64847x0, this.f64822j);
    }

    public void K() {
        this.f64845w0.i(this.f64847x0);
    }

    public int L(int i2) {
        int i4 = this.f64842v;
        int i5 = i4 != 0 ? (i2 - 1) % i4 : 0;
        return i5 < 0 ? i5 + i4 : i5;
    }

    public void M(int i2) {
        this.J.setVisibility(8);
        this.I.setVisibility(8);
        this.H.setVisibility(8);
        this.K.setVisibility(8);
        this.G.setVisibility(8);
        this.f64827n0.setVisibility(8);
        this.f64821i = i2;
        I();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f64824l) {
            int action = motionEvent.getAction();
            if (action == 1 || action == 3 || action == 4) {
                J();
            } else if (action == 0) {
                K();
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i2) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.f64835r0;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(i2);
        }
        if (i2 == 0) {
            int i4 = this.f64844w;
            if (i4 == 0) {
                this.F.setCurrentItem(this.f64842v, false);
            } else if (i4 == this.f64842v + 1) {
                this.F.setCurrentItem(1, false);
            }
        } else if (i2 != 1) {
        } else {
            int i5 = this.f64844w;
            int i6 = this.f64842v;
            if (i5 == i6 + 1) {
                this.F.setCurrentItem(1, false);
            } else if (i5 == 0) {
                this.F.setCurrentItem(i6, false);
            }
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i2, float f4, int i4) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.f64835r0;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(L(i2), f4, i4);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i2) {
        this.f64844w = i2;
        ViewPager.OnPageChangeListener onPageChangeListener = this.f64835r0;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(L(i2));
        }
        int i4 = this.f64821i;
        if (i4 == 1 || i4 == 4 || i4 == 5) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.f64817e, this.f64818f);
            int i5 = this.f64814b;
            layoutParams.leftMargin = i5;
            layoutParams.rightMargin = i5;
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(this.f64815c, this.f64816d);
            int i6 = this.f64814b;
            layoutParams2.leftMargin = i6;
            layoutParams2.rightMargin = i6;
            List<ImageView> list = this.D;
            int i7 = this.f64842v;
            list.get(((this.f64848y - 1) + i7) % i7).setImageResource(this.f64828o);
            List<ImageView> list2 = this.D;
            int i8 = this.f64842v;
            list2.get(((this.f64848y - 1) + i8) % i8).setLayoutParams(layoutParams2);
            List<ImageView> list3 = this.D;
            int i9 = i2 - 1;
            int i10 = this.f64842v;
            list3.get((i9 + i10) % i10).setImageResource(this.f64826n);
            List<ImageView> list4 = this.D;
            int i11 = this.f64842v;
            list4.get((i9 + i11) % i11).setLayoutParams(layoutParams);
            this.f64848y = i2;
        }
        if (i2 == 0) {
            i2 = this.f64842v;
        }
        if (i2 > this.f64842v) {
            i2 = 1;
        }
        int i12 = this.f64821i;
        if (i12 == 2) {
            this.I.setText(i2 + net.lingala.zip4j.util.e.F0 + this.f64842v);
        } else if (i12 != 3) {
            if (i12 == 4) {
                this.G.setText(this.A.get(i2 - 1));
            } else if (i12 != 5) {
            } else {
                this.G.setText(this.A.get(i2 - 1));
            }
        } else {
            this.H.setText(i2 + net.lingala.zip4j.util.e.F0 + this.f64842v);
            this.G.setText(this.A.get(i2 - 1));
        }
    }

    public Banner q(boolean z3) {
        this.f64824l = z3;
        return this;
    }

    public void r() {
        this.f64845w0.k(null);
    }

    public Banner s(Class<? extends ViewPager.PageTransformer> cls) {
        try {
            E(true, cls.newInstance());
        } catch (Exception unused) {
        }
        return this;
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f64835r0 = onPageChangeListener;
    }

    public Banner t(int i2) {
        this.f64821i = i2;
        return this;
    }

    public void update(List<?> list, List<String> list2) {
        this.A.clear();
        this.A.addAll(list2);
        update(list);
    }

    public Banner v(List<String> list) {
        this.A = list;
        return this;
    }

    public Banner x(int i2) {
        this.f64822j = i2;
        return this;
    }

    public Banner y(ImageLoaderInterface imageLoaderInterface) {
        this.f64831p0 = imageLoaderInterface;
        return this;
    }

    public Banner z(List<?> list) {
        this.B.addAll(list);
        this.f64842v = list.size();
        return this;
    }

    public Banner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Banner(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f64813a = "banner";
        this.f64814b = 5;
        this.f64821i = 1;
        this.f64822j = 2000;
        this.f64823k = 800;
        this.f64824l = true;
        this.f64825m = true;
        this.f64826n = R.drawable.gray_radius;
        this.f64828o = R.drawable.white_radius;
        this.f64830p = R.layout.banner;
        this.f64842v = 0;
        this.f64846x = -1;
        this.f64848y = 1;
        this.f64849z = 1;
        this.f64845w0 = new e();
        this.f64847x0 = new a();
        this.E = context;
        this.A = new ArrayList();
        this.B = new ArrayList();
        this.C = new ArrayList();
        this.D = new ArrayList();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.f64843v0 = displayMetrics;
        this.f64819g = displayMetrics.widthPixels / 80;
        o(context, attributeSet);
    }

    public void update(List<?> list) {
        this.B.clear();
        this.C.clear();
        this.D.clear();
        this.B.addAll(list);
        this.f64842v = this.B.size();
        I();
    }
}
