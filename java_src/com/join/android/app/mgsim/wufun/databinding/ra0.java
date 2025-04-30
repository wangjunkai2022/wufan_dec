package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.join.android.app.mgsim.wufun.R;
import com.zhy.view.flowlayout.TagFlowLayout3;
/* compiled from: SearchListActivity1Binding.java */
/* loaded from: classes3.dex */
public final class ra0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f24306a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ListView f24307b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f24308c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TagFlowLayout3 f24309d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f24310e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ConstraintLayout f24311f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ConstraintLayout f24312g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final EditText f24313h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ImageView f24314i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TagFlowLayout3 f24315j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f24316k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f24317l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TabLayout f24318m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final View f24319n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f24320o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f24321p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final ViewPager f24322q;

    private ra0(@NonNull ConstraintLayout constraintLayout, @NonNull ListView listView, @NonNull ImageView imageView, @NonNull TagFlowLayout3 tagFlowLayout3, @NonNull ImageView imageView2, @NonNull ConstraintLayout constraintLayout2, @NonNull ConstraintLayout constraintLayout3, @NonNull EditText editText, @NonNull ImageView imageView3, @NonNull TagFlowLayout3 tagFlowLayout32, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView4, @NonNull TabLayout tabLayout, @NonNull View view, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ViewPager viewPager) {
        this.f24306a = constraintLayout;
        this.f24307b = listView;
        this.f24308c = imageView;
        this.f24309d = tagFlowLayout3;
        this.f24310e = imageView2;
        this.f24311f = constraintLayout2;
        this.f24312g = constraintLayout3;
        this.f24313h = editText;
        this.f24314i = imageView3;
        this.f24315j = tagFlowLayout32;
        this.f24316k = linearLayout;
        this.f24317l = imageView4;
        this.f24318m = tabLayout;
        this.f24319n = view;
        this.f24320o = textView;
        this.f24321p = textView2;
        this.f24322q = viewPager;
    }

    @NonNull
    public static ra0 a(@NonNull View view) {
        int i2 = R.id.autoListView;
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.autoListView);
        if (listView != null) {
            i2 = R.id.back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
            if (imageView != null) {
                i2 = R.id.classifies;
                TagFlowLayout3 tagFlowLayout3 = (TagFlowLayout3) ViewBindings.findChildViewById(view, R.id.classifies);
                if (tagFlowLayout3 != null) {
                    i2 = R.id.clear;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.clear);
                    if (imageView2 != null) {
                        i2 = R.id.constraintLayout3;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.constraintLayout3);
                        if (constraintLayout != null) {
                            i2 = R.id.constraintLayout6;
                            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.constraintLayout6);
                            if (constraintLayout2 != null) {
                                i2 = R.id.input;
                                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.input);
                                if (editText != null) {
                                    i2 = R.id.iv_filter;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_filter);
                                    if (imageView3 != null) {
                                        i2 = R.id.languages;
                                        TagFlowLayout3 tagFlowLayout32 = (TagFlowLayout3) ViewBindings.findChildViewById(view, R.id.languages);
                                        if (tagFlowLayout32 != null) {
                                            i2 = R.id.ll_filter;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_filter);
                                            if (linearLayout != null) {
                                                i2 = R.id.search;
                                                ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.search);
                                                if (imageView4 != null) {
                                                    i2 = R.id.tabLayout;
                                                    TabLayout tabLayout = (TabLayout) ViewBindings.findChildViewById(view, R.id.tabLayout);
                                                    if (tabLayout != null) {
                                                        i2 = R.id.tagBackground;
                                                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.tagBackground);
                                                        if (findChildViewById != null) {
                                                            i2 = R.id.tv_filter_close;
                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_filter_close);
                                                            if (textView != null) {
                                                                i2 = R.id.tv_filter_confirm;
                                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_filter_confirm);
                                                                if (textView2 != null) {
                                                                    i2 = R.id.viewPager;
                                                                    ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.viewPager);
                                                                    if (viewPager != null) {
                                                                        return new ra0((ConstraintLayout) view, listView, imageView, tagFlowLayout3, imageView2, constraintLayout, constraintLayout2, editText, imageView3, tagFlowLayout32, linearLayout, imageView4, tabLayout, findChildViewById, textView, textView2, viewPager);
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
    public static ra0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ra0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.search_list_activity1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f24306a;
    }
}
