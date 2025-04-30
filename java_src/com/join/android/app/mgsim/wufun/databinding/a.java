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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: AboutActivityBinding.java */
/* loaded from: classes3.dex */
public final class a implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f17922a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f17923b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f17924c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f17925d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f17926e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f17927f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f17928g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RelativeLayout f17929h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f17930i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final qc0 f17931j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f17932k;

    private a(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull RelativeLayout relativeLayout4, @NonNull TextView textView2, @NonNull qc0 qc0Var, @NonNull TextView textView3) {
        this.f17922a = linearLayout;
        this.f17923b = imageView;
        this.f17924c = imageView2;
        this.f17925d = textView;
        this.f17926e = relativeLayout;
        this.f17927f = relativeLayout2;
        this.f17928g = relativeLayout3;
        this.f17929h = relativeLayout4;
        this.f17930i = textView2;
        this.f17931j = qc0Var;
        this.f17932k = textView3;
    }

    @NonNull
    public static a a(@NonNull View view) {
        int i2 = R.id.arrowImageAbout;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.arrowImageAbout);
        if (imageView != null) {
            i2 = R.id.imageView;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView);
            if (imageView2 != null) {
                i2 = R.id.mzsm;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.mzsm);
                if (textView != null) {
                    i2 = R.id.papaLayout;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.papaLayout);
                    if (relativeLayout != null) {
                        i2 = R.id.papaNetLayout;
                        RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.papaNetLayout);
                        if (relativeLayout2 != null) {
                            i2 = R.id.papaStatementLayout;
                            RelativeLayout relativeLayout3 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.papaStatementLayout);
                            if (relativeLayout3 != null) {
                                i2 = R.id.papaWeibo;
                                RelativeLayout relativeLayout4 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.papaWeibo);
                                if (relativeLayout4 != null) {
                                    i2 = R.id.syxy;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.syxy);
                                    if (textView2 != null) {
                                        i2 = R.id.title_bar_layout;
                                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.title_bar_layout);
                                        if (findChildViewById != null) {
                                            qc0 a4 = qc0.a(findChildViewById);
                                            i2 = R.id.yszc;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.yszc);
                                            if (textView3 != null) {
                                                return new a((LinearLayout) view, imageView, imageView2, textView, relativeLayout, relativeLayout2, relativeLayout3, relativeLayout4, textView2, a4, textView3);
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
    public static a c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.about_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f17922a;
    }
}
