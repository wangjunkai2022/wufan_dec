package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityPapayDetialBinding.java */
/* loaded from: classes3.dex */
public final class m1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22294a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22295b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22296c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22297d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22298e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f22299f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f22300g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f22301h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f22302i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f22303j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f22304k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f22305l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f22306m;

    private m1(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7, @NonNull TextView textView8, @NonNull TextView textView9, @NonNull TextView textView10, @NonNull TextView textView11, @NonNull TextView textView12) {
        this.f22294a = linearLayout;
        this.f22295b = textView;
        this.f22296c = textView2;
        this.f22297d = textView3;
        this.f22298e = textView4;
        this.f22299f = textView5;
        this.f22300g = textView6;
        this.f22301h = textView7;
        this.f22302i = textView8;
        this.f22303j = textView9;
        this.f22304k = textView10;
        this.f22305l = textView11;
        this.f22306m = textView12;
    }

    @NonNull
    public static m1 a(@NonNull View view) {
        int i2 = R.id.money;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.money);
        if (textView != null) {
            i2 = R.id.orderName;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.orderName);
            if (textView2 != null) {
                i2 = R.id.orderType;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.orderType);
                if (textView3 != null) {
                    i2 = R.id.payOderId;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.payOderId);
                    if (textView4 != null) {
                        i2 = R.id.payTime;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.payTime);
                        if (textView5 != null) {
                            i2 = R.id.payType;
                            TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.payType);
                            if (textView6 != null) {
                                i2 = R.id.textView12;
                                TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.textView12);
                                if (textView7 != null) {
                                    i2 = R.id.textView20;
                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(view, R.id.textView20);
                                    if (textView8 != null) {
                                        i2 = R.id.textView23;
                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, R.id.textView23);
                                        if (textView9 != null) {
                                            i2 = R.id.textView24;
                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(view, R.id.textView24);
                                            if (textView10 != null) {
                                                i2 = R.id.textView25;
                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(view, R.id.textView25);
                                                if (textView11 != null) {
                                                    i2 = R.id.textView27;
                                                    TextView textView12 = (TextView) ViewBindings.findChildViewById(view, R.id.textView27);
                                                    if (textView12 != null) {
                                                        return new m1((LinearLayout) view, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12);
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
    public static m1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static m1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_papay_detial, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22294a;
    }
}
