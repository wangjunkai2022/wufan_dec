package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.facebook.drawee.view.SimpleDraweeView;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.customview.WrapContentGridView;
/* compiled from: SearchRecommendLayoutBinding.java */
/* loaded from: classes3.dex */
public final class xa0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26501a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f26502b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f26503c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f26504d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final FlowLayout f26505e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final WrapContentGridView f26506f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final FlowLayout f26507g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f26508h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f26509i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f26510j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f26511k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f26512l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f26513m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final LinearLayout f26514n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final LinearLayout f26515o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final LinearLayout f26516p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final LinearLayout f26517q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final LinearLayout f26518r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TabLayout f26519s;
    @NonNull

    /* renamed from: t  reason: collision with root package name */
    public final TextView f26520t;
    @NonNull

    /* renamed from: u  reason: collision with root package name */
    public final ViewPager f26521u;
    @NonNull

    /* renamed from: v  reason: collision with root package name */
    public final WrapContentGridView f26522v;

    private xa0(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull FlowLayout flowLayout, @NonNull WrapContentGridView wrapContentGridView, @NonNull FlowLayout flowLayout2, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull LinearLayout linearLayout6, @NonNull LinearLayout linearLayout7, @NonNull LinearLayout linearLayout8, @NonNull LinearLayout linearLayout9, @NonNull LinearLayout linearLayout10, @NonNull TabLayout tabLayout, @NonNull TextView textView2, @NonNull ViewPager viewPager, @NonNull WrapContentGridView wrapContentGridView2) {
        this.f26501a = relativeLayout;
        this.f26502b = simpleDraweeView;
        this.f26503c = linearLayout;
        this.f26504d = linearLayout2;
        this.f26505e = flowLayout;
        this.f26506f = wrapContentGridView;
        this.f26507g = flowLayout2;
        this.f26508h = textView;
        this.f26509i = imageView;
        this.f26510j = imageView2;
        this.f26511k = linearLayout3;
        this.f26512l = linearLayout4;
        this.f26513m = linearLayout5;
        this.f26514n = linearLayout6;
        this.f26515o = linearLayout7;
        this.f26516p = linearLayout8;
        this.f26517q = linearLayout9;
        this.f26518r = linearLayout10;
        this.f26519s = tabLayout;
        this.f26520t = textView2;
        this.f26521u = viewPager;
        this.f26522v = wrapContentGridView2;
    }

    @NonNull
    public static xa0 a(@NonNull View view) {
        int i2 = R.id.ad;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.ad);
        if (simpleDraweeView != null) {
            i2 = R.id.allGameRanking;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.allGameRanking);
            if (linearLayout != null) {
                i2 = R.id.emulatorGameRanking;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.emulatorGameRanking);
                if (linearLayout2 != null) {
                    i2 = R.id.flowLayout;
                    FlowLayout flowLayout = (FlowLayout) ViewBindings.findChildViewById(view, R.id.flowLayout);
                    if (flowLayout != null) {
                        i2 = R.id.gameListGrid;
                        WrapContentGridView wrapContentGridView = (WrapContentGridView) ViewBindings.findChildViewById(view, R.id.gameListGrid);
                        if (wrapContentGridView != null) {
                            i2 = R.id.guessLickFlow;
                            FlowLayout flowLayout2 = (FlowLayout) ViewBindings.findChildViewById(view, R.id.guessLickFlow);
                            if (flowLayout2 != null) {
                                i2 = R.id.guessliketext;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.guessliketext);
                                if (textView != null) {
                                    i2 = R.id.imageView48;
                                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView48);
                                    if (imageView != null) {
                                        i2 = R.id.ivRefresh;
                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivRefresh);
                                        if (imageView2 != null) {
                                            i2 = R.id.llCategories;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llCategories);
                                            if (linearLayout3 != null) {
                                                i2 = R.id.llGameList;
                                                LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llGameList);
                                                if (linearLayout4 != null) {
                                                    i2 = R.id.llHotSearch;
                                                    LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llHotSearch);
                                                    if (linearLayout5 != null) {
                                                        i2 = R.id.llHotTag;
                                                        LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llHotTag);
                                                        if (linearLayout6 != null) {
                                                            i2 = R.id.llRecent;
                                                            LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llRecent);
                                                            if (linearLayout7 != null) {
                                                                i2 = R.id.onlineGameRanking;
                                                                LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.onlineGameRanking);
                                                                if (linearLayout8 != null) {
                                                                    i2 = R.id.refreshGameList;
                                                                    LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.refreshGameList);
                                                                    if (linearLayout9 != null) {
                                                                        i2 = R.id.singleGameRanking;
                                                                        LinearLayout linearLayout10 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.singleGameRanking);
                                                                        if (linearLayout10 != null) {
                                                                            i2 = R.id.tabLayout;
                                                                            TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabLayout);
                                                                            if (tabLayout != null) {
                                                                                i2 = R.id.textView38;
                                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView38);
                                                                                if (textView2 != null) {
                                                                                    i2 = R.id.viewPager;
                                                                                    ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                                                                                    if (viewPager != null) {
                                                                                        i2 = R.id.wrapGridView;
                                                                                        WrapContentGridView wrapContentGridView2 = (WrapContentGridView) ViewBindings.findChildViewById(view, R.id.wrapGridView);
                                                                                        if (wrapContentGridView2 != null) {
                                                                                            return new xa0((RelativeLayout) view, simpleDraweeView, linearLayout, linearLayout2, flowLayout, wrapContentGridView, flowLayout2, textView, imageView, imageView2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, linearLayout8, linearLayout9, linearLayout10, tabLayout, textView2, viewPager, wrapContentGridView2);
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
    public static xa0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static xa0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.search_recommend_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26501a;
    }
}
