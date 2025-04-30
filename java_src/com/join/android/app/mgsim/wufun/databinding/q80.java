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
/* compiled from: PopMyGameDeleteGameBinding.java */
/* loaded from: classes3.dex */
public final class q80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f23899a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23900b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23901c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f23902d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23903e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f23904f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f23905g;

    private q80(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3, @NonNull View view, @NonNull View view2) {
        this.f23899a = constraintLayout;
        this.f23900b = textView;
        this.f23901c = textView2;
        this.f23902d = simpleDraweeView;
        this.f23903e = textView3;
        this.f23904f = view;
        this.f23905g = view2;
    }

    @NonNull
    public static q80 a(@NonNull View view) {
        int i2 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i2 = R.id.delete;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.delete);
            if (textView2 != null) {
                i2 = R.id.icon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                if (simpleDraweeView != null) {
                    i2 = R.id.name;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                    if (textView3 != null) {
                        i2 = R.id.view5;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.view5);
                        if (findChildViewById != null) {
                            i2 = R.id.view8;
                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.view8);
                            if (findChildViewById2 != null) {
                                return new q80((ConstraintLayout) view, textView, textView2, simpleDraweeView, textView3, findChildViewById, findChildViewById2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static q80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.pop_my_game_delete_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f23899a;
    }
}
