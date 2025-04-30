package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LoadingImageView;
import com.join.mgps.customview.LoadingLayout;
import com.join.mgps.customview.SlidingTabLayoutNoViewPager;
import com.join.mgps.customview.swiperefresh.SwipeRefresh;
/* compiled from: ActivityClassifyGameBinding.java */
/* loaded from: classes3.dex */
public final class l implements ViewBinding {
    @NonNull
    public final TextView A;
    @NonNull
    public final TextView B;
    @NonNull
    public final Toolbar C;
    @NonNull
    public final ImageView D;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21927a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21928b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final AppBarLayout f21929c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final CollapsingToolbarLayout f21930d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21931e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f21932f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f21933g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LoadingImageView f21934h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f21935i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final LinearLayout f21936j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f21937k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LoadingLayout f21938l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final FrameLayout f21939m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final CoordinatorLayout f21940n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final LinearLayout f21941o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f21942p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ImageView f21943q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final SwipeRefresh f21944r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final ImageView f21945s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f21946t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final TextView f21947u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final Button f21948v;
    @NonNull

    /* renamed from: w  reason: collision with root package name */
    public final TextView f21949w;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    public final SlidingTabLayoutNoViewPager f21950x;
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    public final SlidingTabLayoutNoViewPager f21951y;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    public final SlidingTabLayoutNoViewPager f21952z;

    private l(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull AppBarLayout appBarLayout, @NonNull CollapsingToolbarLayout collapsingToolbarLayout, @NonNull TextView textView, @NonNull View view, @NonNull LinearLayout linearLayout2, @NonNull LoadingImageView loadingImageView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LoadingLayout loadingLayout, @NonNull FrameLayout frameLayout, @NonNull CoordinatorLayout coordinatorLayout, @NonNull LinearLayout linearLayout5, @NonNull TextView textView2, @NonNull ImageView imageView2, @NonNull SwipeRefresh swipeRefresh, @NonNull ImageView imageView3, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull Button button, @NonNull TextView textView5, @NonNull SlidingTabLayoutNoViewPager slidingTabLayoutNoViewPager, @NonNull SlidingTabLayoutNoViewPager slidingTabLayoutNoViewPager2, @NonNull SlidingTabLayoutNoViewPager slidingTabLayoutNoViewPager3, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull Toolbar toolbar, @NonNull ImageView imageView4) {
        this.f21927a = relativeLayout;
        this.f21928b = linearLayout;
        this.f21929c = appBarLayout;
        this.f21930d = collapsingToolbarLayout;
        this.f21931e = textView;
        this.f21932f = view;
        this.f21933g = linearLayout2;
        this.f21934h = loadingImageView;
        this.f21935i = imageView;
        this.f21936j = linearLayout3;
        this.f21937k = linearLayout4;
        this.f21938l = loadingLayout;
        this.f21939m = frameLayout;
        this.f21940n = coordinatorLayout;
        this.f21941o = linearLayout5;
        this.f21942p = textView2;
        this.f21943q = imageView2;
        this.f21944r = swipeRefresh;
        this.f21945s = imageView3;
        this.f21946t = textView3;
        this.f21947u = textView4;
        this.f21948v = button;
        this.f21949w = textView5;
        this.f21950x = slidingTabLayoutNoViewPager;
        this.f21951y = slidingTabLayoutNoViewPager2;
        this.f21952z = slidingTabLayoutNoViewPager3;
        this.A = textView6;
        this.B = textView7;
        this.C = toolbar;
        this.D = imageView4;
    }

    @NonNull
    public static l a(@NonNull View view) {
        int i2 = R.id.activity_classify_game;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.activity_classify_game);
        if (linearLayout != null) {
            i2 = R.id.appbar;
            AppBarLayout appBarLayout = (AppBarLayout) ViewBindings.findChildViewById(view, R.id.appbar);
            if (appBarLayout != null) {
                i2 = R.id.colltoobar;
                CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) ViewBindings.findChildViewById(view, R.id.colltoobar);
                if (collapsingToolbarLayout != null) {
                    i2 = R.id.failedMessage;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.failedMessage);
                    if (textView != null) {
                        i2 = R.id.line;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                        if (findChildViewById != null) {
                            i2 = R.id.loading_none;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loading_none);
                            if (linearLayout2 != null) {
                                i2 = R.id.loading_view;
                                LoadingImageView loadingImageView = (LoadingImageView) ViewBindings.findChildViewById(view, R.id.loading_view);
                                if (loadingImageView != null) {
                                    i2 = R.id.lodingBackImage;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lodingBackImage);
                                    if (imageView != null) {
                                        i2 = R.id.loding_faile;
                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loding_faile);
                                        if (linearLayout3 != null) {
                                            i2 = R.id.loding_layout;
                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.loding_layout);
                                            if (linearLayout4 != null) {
                                                i2 = R.id.mLoadingLayout;
                                                LoadingLayout loadingLayout = (LoadingLayout) ViewBindings.findChildViewById(view, R.id.mLoadingLayout);
                                                if (loadingLayout != null) {
                                                    i2 = R.id.mViewpagerV4;
                                                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.mViewpagerV4);
                                                    if (frameLayout != null) {
                                                        i2 = R.id.main_content;
                                                        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) ViewBindings.findChildViewById(view, R.id.main_content);
                                                        if (coordinatorLayout != null) {
                                                            i2 = R.id.nodata_layout;
                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.nodata_layout);
                                                            if (linearLayout5 != null) {
                                                                i2 = R.id.noneMessage;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.noneMessage);
                                                                if (textView2 != null) {
                                                                    i2 = R.id.noneReloadImage;
                                                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.noneReloadImage);
                                                                    if (imageView2 != null) {
                                                                        i2 = R.id.refreshx;
                                                                        SwipeRefresh swipeRefresh = (SwipeRefresh) ViewBindings.findChildViewById(view, R.id.refreshx);
                                                                        if (swipeRefresh != null) {
                                                                            i2 = R.id.relodingimag;
                                                                            ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.relodingimag);
                                                                            if (imageView3 != null) {
                                                                                i2 = R.id.selectedType;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.selectedType);
                                                                                if (textView3 != null) {
                                                                                    i2 = R.id.setAll;
                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.setAll);
                                                                                    if (textView4 != null) {
                                                                                        i2 = R.id.setNetwork;
                                                                                        Button button = (Button) ViewBindings.findChildViewById(view, R.id.setNetwork);
                                                                                        if (button != null) {
                                                                                            i2 = R.id.setting;
                                                                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.setting);
                                                                                            if (textView5 != null) {
                                                                                                i2 = R.id.table1;
                                                                                                SlidingTabLayoutNoViewPager slidingTabLayoutNoViewPager = (SlidingTabLayoutNoViewPager) ViewBindings.findChildViewById(view, R.id.table1);
                                                                                                if (slidingTabLayoutNoViewPager != null) {
                                                                                                    i2 = R.id.table2;
                                                                                                    SlidingTabLayoutNoViewPager slidingTabLayoutNoViewPager2 = (SlidingTabLayoutNoViewPager) ViewBindings.findChildViewById(view, R.id.table2);
                                                                                                    if (slidingTabLayoutNoViewPager2 != null) {
                                                                                                        i2 = R.id.table3;
                                                                                                        SlidingTabLayoutNoViewPager slidingTabLayoutNoViewPager3 = (SlidingTabLayoutNoViewPager) ViewBindings.findChildViewById(view, R.id.table3);
                                                                                                        if (slidingTabLayoutNoViewPager3 != null) {
                                                                                                            i2 = R.id.textView2;
                                                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.textView2);
                                                                                                            if (textView6 != null) {
                                                                                                                i2 = R.id.textView_nodata;
                                                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.textView_nodata);
                                                                                                                if (textView7 != null) {
                                                                                                                    i2 = R.id.toolbar;
                                                                                                                    Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                                                                                                                    if (toolbar != null) {
                                                                                                                        i2 = R.id.topImag;
                                                                                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.topImag);
                                                                                                                        if (imageView4 != null) {
                                                                                                                            return new l((RelativeLayout) view, linearLayout, appBarLayout, collapsingToolbarLayout, textView, findChildViewById, linearLayout2, loadingImageView, imageView, linearLayout3, linearLayout4, loadingLayout, frameLayout, coordinatorLayout, linearLayout5, textView2, imageView2, swipeRefresh, imageView3, textView3, textView4, button, textView5, slidingTabLayoutNoViewPager, slidingTabLayoutNoViewPager2, slidingTabLayoutNoViewPager3, textView6, textView7, toolbar, imageView4);
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static l c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_classify_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21927a;
    }
}
