package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: NowWufunActivityLayoutBinding.java */
/* loaded from: classes3.dex */
public final class g60 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20332a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20333b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20334c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final FrameLayout f20335d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20336e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20337f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f20338g;

    private g60(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull FrameLayout frameLayout, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f20332a = linearLayout;
        this.f20333b = textView;
        this.f20334c = textView2;
        this.f20335d = frameLayout;
        this.f20336e = textView3;
        this.f20337f = textView4;
        this.f20338g = textView5;
    }

    @NonNull
    public static g60 a(@NonNull View view) {
        int i2 = R.id.broadcast;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.broadcast);
        if (textView != null) {
            i2 = R.id.everdayFind;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.everdayFind);
            if (textView2 != null) {
                i2 = R.id.fragmentLayout;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.fragmentLayout);
                if (frameLayout != null) {
                    i2 = R.id.nowWufun;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.nowWufun);
                    if (textView3 != null) {
                        i2 = R.id.tallk;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tallk);
                        if (textView4 != null) {
                            i2 = R.id.todayNew;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.todayNew);
                            if (textView5 != null) {
                                return new g60((LinearLayout) view, textView, textView2, frameLayout, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static g60 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g60 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.now_wufun_activity_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20332a;
    }
}
