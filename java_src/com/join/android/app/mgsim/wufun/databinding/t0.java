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
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityHavenDownBinding.java */
/* loaded from: classes3.dex */
public final class t0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25011a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25012b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25013c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f25014d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f25015e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25016f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f25017g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25018h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f25019i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final ImageView f25020j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f25021k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f25022l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RelativeLayout f25023m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final RecyclerView f25024n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final LinearLayout f25025o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f25026p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f25027q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final View f25028r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final View f25029s;

    private t0(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull TextView textView3, @NonNull LinearLayout linearLayout2, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull ImageView imageView2, @NonNull RelativeLayout relativeLayout2, @NonNull LinearLayout linearLayout3, @NonNull RelativeLayout relativeLayout3, @NonNull RecyclerView recyclerView, @NonNull LinearLayout linearLayout4, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull View view, @NonNull View view2) {
        this.f25011a = relativeLayout;
        this.f25012b = textView;
        this.f25013c = textView2;
        this.f25014d = imageView;
        this.f25015e = linearLayout;
        this.f25016f = textView3;
        this.f25017g = linearLayout2;
        this.f25018h = textView4;
        this.f25019i = textView5;
        this.f25020j = imageView2;
        this.f25021k = relativeLayout2;
        this.f25022l = linearLayout3;
        this.f25023m = relativeLayout3;
        this.f25024n = recyclerView;
        this.f25025o = linearLayout4;
        this.f25026p = textView6;
        this.f25027q = textView7;
        this.f25028r = view;
        this.f25029s = view2;
    }

    @NonNull
    public static t0 a(@NonNull View view) {
        int i2 = R.id.appName;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
        if (textView != null) {
            i2 = R.id.back1;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.back1);
            if (textView2 != null) {
                i2 = R.id.closeImage1;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.closeImage1);
                if (imageView != null) {
                    i2 = R.id.downFrom;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.downFrom);
                    if (linearLayout != null) {
                        i2 = R.id.downFromText;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.downFromText);
                        if (textView3 != null) {
                            i2 = R.id.forumData;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.forumData);
                            if (linearLayout2 != null) {
                                i2 = R.id.goVow;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.goVow);
                                if (textView4 != null) {
                                    i2 = R.id.goforumTagList;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.goforumTagList);
                                    if (textView5 != null) {
                                        i2 = R.id.imageView54;
                                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView54);
                                        if (imageView2 != null) {
                                            i2 = R.id.layoutq;
                                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.layoutq);
                                            if (relativeLayout != null) {
                                                i2 = R.id.linearLayoutx;
                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayoutx);
                                                if (linearLayout3 != null) {
                                                    RelativeLayout relativeLayout2 = (RelativeLayout) view;
                                                    i2 = R.id.recycleView;
                                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycleView);
                                                    if (recyclerView != null) {
                                                        i2 = R.id.showView;
                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.showView);
                                                        if (linearLayout4 != null) {
                                                            i2 = R.id.textView62;
                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.textView62);
                                                            if (textView6 != null) {
                                                                i2 = R.id.title1;
                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.title1);
                                                                if (textView7 != null) {
                                                                    i2 = R.id.topLayout;
                                                                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.topLayout);
                                                                    if (findChildViewById != null) {
                                                                        i2 = R.id.view6;
                                                                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.view6);
                                                                        if (findChildViewById2 != null) {
                                                                            return new t0(relativeLayout2, textView, textView2, imageView, linearLayout, textView3, linearLayout2, textView4, textView5, imageView2, relativeLayout, linearLayout3, relativeLayout2, recyclerView, linearLayout4, textView6, textView7, findChildViewById, findChildViewById2);
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
    public static t0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_haven_down, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25011a;
    }
}
