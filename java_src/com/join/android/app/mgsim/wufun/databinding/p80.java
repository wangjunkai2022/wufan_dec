package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PopModStandInstallBinding.java */
/* loaded from: classes3.dex */
public final class p80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f23515a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23516b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final SimpleDraweeView f23517c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23518d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23519e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f23520f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f23521g;

    private p80(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull View view, @NonNull View view2) {
        this.f23515a = constraintLayout;
        this.f23516b = textView;
        this.f23517c = simpleDraweeView;
        this.f23518d = textView2;
        this.f23519e = textView3;
        this.f23520f = view;
        this.f23521g = view2;
    }

    @NonNull
    public static p80 a(@NonNull View view) {
        int i2 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i2 = R.id.icon;
            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
            if (simpleDraweeView != null) {
                i2 = R.id.install;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.install);
                if (textView2 != null) {
                    i2 = R.id.name;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                    if (textView3 != null) {
                        i2 = R.id.view5;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.view5);
                        if (findChildViewById != null) {
                            i2 = R.id.view8;
                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.view8);
                            if (findChildViewById2 != null) {
                                return new p80((ConstraintLayout) view, textView, simpleDraweeView, textView2, textView3, findChildViewById, findChildViewById2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static p80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static p80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.pop_mod_stand_install, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f23515a;
    }
}
