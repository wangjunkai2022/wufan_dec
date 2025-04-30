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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SearchRankingListitemBinding.java */
/* loaded from: classes3.dex */
public final class wa0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26133a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26134b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f26135c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f26136d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f26137e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26138f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f26139g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f26140h;

    private wa0(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull View view, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f26133a = linearLayout;
        this.f26134b = textView;
        this.f26135c = simpleDraweeView;
        this.f26136d = view;
        this.f26137e = linearLayout2;
        this.f26138f = textView2;
        this.f26139g = textView3;
        this.f26140h = textView4;
    }

    @NonNull
    public static wa0 a(@NonNull View view) {
        int i2 = R.id.appName;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
        if (textView != null) {
            i2 = R.id.icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
            if (simpleDraweeView != null) {
                i2 = R.id.line;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
                if (findChildViewById != null) {
                    i2 = R.id.main;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
                    if (linearLayout != null) {
                        i2 = R.id.rankingNumber;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.rankingNumber);
                        if (textView2 != null) {
                            i2 = R.id.rankingNumberBack;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.rankingNumberBack);
                            if (textView3 != null) {
                                i2 = R.id.tag;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tag);
                                if (textView4 != null) {
                                    return new wa0((LinearLayout) view, textView, simpleDraweeView, findChildViewById, linearLayout, textView2, textView3, textView4);
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
    public static wa0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wa0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.search_ranking_listitem, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26133a;
    }
}
