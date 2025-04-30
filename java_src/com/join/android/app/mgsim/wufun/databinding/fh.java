package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
/* compiled from: FragmentMyGameBinding.java */
/* loaded from: classes3.dex */
public final class fh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f20138a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ConstraintLayout f20139b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20140c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f20141d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20142e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f20143f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final XListView2 f20144g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f20145h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final kh f20146i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f20147j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f20148k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final ImageView f20149l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final LinearLayout f20150m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final ConstraintLayout f20151n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final ImageView f20152o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final ImageView f20153p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final View f20154q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final TextView f20155r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f20156s;

    private fh(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ImageView imageView, @NonNull View view, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull XListView2 xListView2, @NonNull LinearLayout linearLayout, @NonNull kh khVar, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout2, @NonNull ConstraintLayout constraintLayout3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull View view2, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f20138a = constraintLayout;
        this.f20139b = constraintLayout2;
        this.f20140c = imageView;
        this.f20141d = view;
        this.f20142e = textView;
        this.f20143f = imageView2;
        this.f20144g = xListView2;
        this.f20145h = linearLayout;
        this.f20146i = khVar;
        this.f20147j = textView2;
        this.f20148k = textView3;
        this.f20149l = imageView3;
        this.f20150m = linearLayout2;
        this.f20151n = constraintLayout3;
        this.f20152o = imageView4;
        this.f20153p = imageView5;
        this.f20154q = view2;
        this.f20155r = textView4;
        this.f20156s = textView5;
    }

    @NonNull
    public static fh a(@NonNull View view) {
        int i2 = R.id.appbar;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.appbar);
        if (constraintLayout != null) {
            i2 = R.id.back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
            if (imageView != null) {
                i2 = R.id.filter;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.filter);
                if (findChildViewById != null) {
                    i2 = R.id.filterArr;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.filterArr);
                    if (textView != null) {
                        i2 = R.id.ivOnlineCouponBottomClose;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivOnlineCouponBottomClose);
                        if (imageView2 != null) {
                            i2 = R.id.listView;
                            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listView);
                            if (xListView2 != null) {
                                i2 = R.id.llOnlineCouponBottom;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.llOnlineCouponBottom);
                                if (linearLayout != null) {
                                    i2 = R.id.needUpdate;
                                    View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.needUpdate);
                                    if (findChildViewById2 != null) {
                                        kh a4 = kh.a(findChildViewById2);
                                        i2 = R.id.plugProgress;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.plugProgress);
                                        if (textView2 != null) {
                                            i2 = R.id.plugType;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.plugType);
                                            if (textView3 != null) {
                                                i2 = R.id.plugs;
                                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.plugs);
                                                if (imageView3 != null) {
                                                    i2 = R.id.plugsDownloadTip;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.plugsDownloadTip);
                                                    if (linearLayout2 != null) {
                                                        ConstraintLayout constraintLayout2 = (ConstraintLayout) view;
                                                        i2 = R.id.search;
                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.search);
                                                        if (imageView4 != null) {
                                                            i2 = R.id.settings;
                                                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.settings);
                                                            if (imageView5 != null) {
                                                                i2 = R.id.statubar;
                                                                View findChildViewById3 = ViewBindings.findChildViewById(view, R.id.statubar);
                                                                if (findChildViewById3 != null) {
                                                                    i2 = R.id.title;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                                                                    if (textView4 != null) {
                                                                        i2 = R.id.tvOnlineCouponBottomDesc;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tvOnlineCouponBottomDesc);
                                                                        if (textView5 != null) {
                                                                            return new fh(constraintLayout2, constraintLayout, imageView, findChildViewById, textView, imageView2, xListView2, linearLayout, a4, textView2, textView3, imageView3, linearLayout2, constraintLayout2, imageView4, imageView5, findChildViewById3, textView4, textView5);
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
    public static fh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_my_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f20138a;
    }
}
