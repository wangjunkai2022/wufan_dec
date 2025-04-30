package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GiftDetailActivityBinding.java */
/* loaded from: classes3.dex */
public final class kn implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21865a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21866b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f21867c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21868d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21869e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21870f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f21871g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f21872h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ScrollView f21873i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final qc0 f21874j;

    private kn(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull ScrollView scrollView, @NonNull qc0 qc0Var) {
        this.f21865a = linearLayout;
        this.f21866b = textView;
        this.f21867c = simpleDraweeView;
        this.f21868d = textView2;
        this.f21869e = textView3;
        this.f21870f = textView4;
        this.f21871g = textView5;
        this.f21872h = textView6;
        this.f21873i = scrollView;
        this.f21874j = qc0Var;
    }

    @NonNull
    public static kn a(@NonNull View view) {
        int i2 = R.id.giftContent;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.giftContent);
        if (textView != null) {
            i2 = R.id.giftIcon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.giftIcon);
            if (simpleDraweeView != null) {
                i2 = R.id.giftMethod;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.giftMethod);
                if (textView2 != null) {
                    i2 = R.id.giftNameTv;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.giftNameTv);
                    if (textView3 != null) {
                        i2 = R.id.giftTime;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.giftTime);
                        if (textView4 != null) {
                            i2 = R.id.saveCodeContent;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.saveCodeContent);
                            if (textView5 != null) {
                                i2 = R.id.saveCodeTv;
                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.saveCodeTv);
                                if (textView6 != null) {
                                    i2 = R.id.scrollView;
                                    ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(view, R.id.scrollView);
                                    if (scrollView != null) {
                                        i2 = R.id.title_bar_layout;
                                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.title_bar_layout);
                                        if (findChildViewById != null) {
                                            return new kn((LinearLayout) view, textView, simpleDraweeView, textView2, textView3, textView4, textView5, textView6, scrollView, qc0.a(findChildViewById));
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
    public static kn c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static kn d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gift_detail_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21865a;
    }
}
