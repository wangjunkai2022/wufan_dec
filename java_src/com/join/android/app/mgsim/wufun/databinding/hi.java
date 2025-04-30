package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GameBuildItemBinding.java */
/* loaded from: classes3.dex */
public final class hi implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20797a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RelativeLayout f20798b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f20799c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20800d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20801e;

    private hi(@NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f20797a = linearLayout;
        this.f20798b = relativeLayout;
        this.f20799c = simpleDraweeView;
        this.f20800d = textView;
        this.f20801e = textView2;
    }

    @NonNull
    public static hi a(@NonNull View view) {
        int i2 = R.id.rl_content;
        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_content);
        if (relativeLayout != null) {
            i2 = R.id.smv_icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.smv_icon);
            if (simpleDraweeView != null) {
                i2 = R.id.tv_size;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_size);
                if (textView != null) {
                    i2 = R.id.tv_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView2 != null) {
                        return new hi((LinearLayout) view, relativeLayout, simpleDraweeView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static hi c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static hi d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_build_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20797a;
    }
}
