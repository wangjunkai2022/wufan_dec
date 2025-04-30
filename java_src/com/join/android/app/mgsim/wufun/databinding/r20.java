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
import com.join.android.app.mgsim.wufun.R;
import it.sephiroth.android.library.widget.HListView;
/* compiled from: MgpapaInterestingIncludeBinding.java */
/* loaded from: classes3.dex */
public final class r20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24173a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24174b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ViewPager f24175c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f24176d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final HListView f24177e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f24178f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24179g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24180h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f24181i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f24182j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f24183k;

    private r20(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ViewPager viewPager, @NonNull LinearLayout linearLayout, @NonNull HListView hListView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull LinearLayout linearLayout2) {
        this.f24173a = relativeLayout;
        this.f24174b = imageView;
        this.f24175c = viewPager;
        this.f24176d = linearLayout;
        this.f24177e = hListView;
        this.f24178f = textView;
        this.f24179g = textView2;
        this.f24180h = textView3;
        this.f24181i = textView4;
        this.f24182j = textView5;
        this.f24183k = linearLayout2;
    }

    @NonNull
    public static r20 a(@NonNull View view) {
        int i2 = R.id.imageView5;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView5);
        if (imageView != null) {
            i2 = R.id.interestingGallery;
            ViewPager viewPager = (ViewPager) ViewBindings.findChildViewById(view, R.id.interestingGallery);
            if (viewPager != null) {
                i2 = R.id.intersetingMore;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.intersetingMore);
                if (linearLayout != null) {
                    i2 = R.id.interstinglist;
                    HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.interstinglist);
                    if (hListView != null) {
                        i2 = R.id.mgpapinterstingTitle;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.mgpapinterstingTitle);
                        if (textView != null) {
                            i2 = R.id.textView;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                            if (textView2 != null) {
                                i2 = R.id.textView11;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView11);
                                if (textView3 != null) {
                                    i2 = R.id.textView2;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.textView2);
                                    if (textView4 != null) {
                                        i2 = R.id.textView6;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.textView6);
                                        if (textView5 != null) {
                                            i2 = R.id.top;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.top);
                                            if (linearLayout2 != null) {
                                                return new r20((RelativeLayout) view, imageView, viewPager, linearLayout, hListView, textView, textView2, textView3, textView4, textView5, linearLayout2);
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
    public static r20 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r20 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mgpapa_interesting_include, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24173a;
    }
}
