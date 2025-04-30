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
/* compiled from: GameworldBangItemlayoutBinding.java */
/* loaded from: classes3.dex */
public final class fn implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20199a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20200b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20201c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20202d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f20203e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20204f;

    private fn(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView4) {
        this.f20199a = linearLayout;
        this.f20200b = textView;
        this.f20201c = textView2;
        this.f20202d = textView3;
        this.f20203e = simpleDraweeView;
        this.f20204f = textView4;
    }

    @NonNull
    public static fn a(@NonNull View view) {
        int i2 = R.id.mingci;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.mingci);
        if (textView != null) {
            i2 = R.id.shengchang;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.shengchang);
            if (textView2 != null) {
                i2 = R.id.shenglv;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.shenglv);
                if (textView3 != null) {
                    i2 = R.id.userIcon;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.userIcon);
                    if (simpleDraweeView != null) {
                        i2 = R.id.zhandouli;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.zhandouli);
                        if (textView4 != null) {
                            return new fn((LinearLayout) view, textView, textView2, textView3, simpleDraweeView, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static fn c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fn d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gameworld_bang_itemlayout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20199a;
    }
}
