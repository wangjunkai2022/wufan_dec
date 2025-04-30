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
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PopMyGameDeletesouceGameBinding.java */
/* loaded from: classes3.dex */
public final class r80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f24269a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24270b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24271c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24272d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24273e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f24274f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final View f24275g;

    private r80(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull View view, @NonNull View view2) {
        this.f24269a = constraintLayout;
        this.f24270b = textView;
        this.f24271c = textView2;
        this.f24272d = textView3;
        this.f24273e = textView4;
        this.f24274f = view;
        this.f24275g = view2;
    }

    @NonNull
    public static r80 a(@NonNull View view) {
        int i2 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i2 = R.id.delete;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.delete);
            if (textView2 != null) {
                i2 = R.id.name;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                if (textView3 != null) {
                    i2 = R.id.title;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView4 != null) {
                        i2 = R.id.view5;
                        View findChildViewById = ViewBindings.findChildViewById(view, R.id.view5);
                        if (findChildViewById != null) {
                            i2 = R.id.view8;
                            View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.view8);
                            if (findChildViewById2 != null) {
                                return new r80((ConstraintLayout) view, textView, textView2, textView3, textView4, findChildViewById, findChildViewById2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static r80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.pop_my_game_deletesouce_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f24269a;
    }
}
