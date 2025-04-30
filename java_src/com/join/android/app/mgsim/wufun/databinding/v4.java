package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.SlidingTabLayout6;
/* compiled from: CategroyGamelistActivityBinding.java */
/* loaded from: classes3.dex */
public final class v4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f25722a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SlidingTabLayout6 f25723b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25724c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25725d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25726e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f25727f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25728g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f25729h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f25730i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f25731j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f25732k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RecyclerView f25733l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f25734m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final sc0 f25735n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final LinearLayout f25736o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final RecyclerView f25737p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ViewPager f25738q;

    private v4(@NonNull ConstraintLayout constraintLayout, @NonNull SlidingTabLayout6 slidingTabLayout6, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull View view, @NonNull TextView textView4, @NonNull LinearLayout linearLayout, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull RecyclerView recyclerView, @NonNull TextView textView8, @NonNull sc0 sc0Var, @NonNull LinearLayout linearLayout2, @NonNull RecyclerView recyclerView2, @NonNull ViewPager viewPager) {
        this.f25722a = constraintLayout;
        this.f25723b = slidingTabLayout6;
        this.f25724c = textView;
        this.f25725d = textView2;
        this.f25726e = textView3;
        this.f25727f = view;
        this.f25728g = textView4;
        this.f25729h = linearLayout;
        this.f25730i = textView5;
        this.f25731j = textView6;
        this.f25732k = textView7;
        this.f25733l = recyclerView;
        this.f25734m = textView8;
        this.f25735n = sc0Var;
        this.f25736o = linearLayout2;
        this.f25737p = recyclerView2;
        this.f25738q = viewPager;
    }

    @NonNull
    public static v4 a(@NonNull View view) {
        int i2 = R.id.featureLayout;
        SlidingTabLayout6 slidingTabLayout6 = (SlidingTabLayout6) ViewBindings.findChildViewById(view, R.id.featureLayout);
        if (slidingTabLayout6 != null) {
            i2 = R.id.featureTypeText;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.featureTypeText);
            if (textView != null) {
                i2 = R.id.filter;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.filter);
                if (textView2 != null) {
                    i2 = R.id.gameTypeText;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.gameTypeText);
                    if (textView3 != null) {
                        i2 = R.id.line;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                        if (findChildViewById != null) {
                            i2 = R.id.modelTypeText;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.modelTypeText);
                            if (textView4 != null) {
                                i2 = R.id.moretag;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.moretag);
                                if (linearLayout != null) {
                                    i2 = R.id.okButn;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.okButn);
                                    if (textView5 != null) {
                                        i2 = R.id.playTypeText;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.playTypeText);
                                        if (textView6 != null) {
                                            i2 = R.id.resetButn;
                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.resetButn);
                                            if (textView7 != null) {
                                                i2 = R.id.tabRecyclerview;
                                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.tabRecyclerview);
                                                if (recyclerView != null) {
                                                    i2 = R.id.themeTypeText;
                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.themeTypeText);
                                                    if (textView8 != null) {
                                                        i2 = R.id.titleLayout;
                                                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.titleLayout);
                                                        if (findChildViewById2 != null) {
                                                            sc0 a4 = sc0.a(findChildViewById2);
                                                            i2 = R.id.typeMainLayout;
                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.typeMainLayout);
                                                            if (linearLayout2 != null) {
                                                                i2 = R.id.typeRecyclerview;
                                                                RecyclerView recyclerView2 = (RecyclerView) ViewBindings.findChildViewById(view, R.id.typeRecyclerview);
                                                                if (recyclerView2 != null) {
                                                                    i2 = R.id.viewPager;
                                                                    ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                                                                    if (viewPager != null) {
                                                                        return new v4((ConstraintLayout) view, slidingTabLayout6, textView, textView2, textView3, findChildViewById, textView4, linearLayout, textView5, textView6, textView7, recyclerView, textView8, a4, linearLayout2, recyclerView2, viewPager);
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
    public static v4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.categroy_gamelist_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f25722a;
    }
}
