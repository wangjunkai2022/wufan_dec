package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PopMyGameFilterItemBinding.java */
/* loaded from: classes3.dex */
public final class t80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f25130a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final View f25131b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f25132c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f25133d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25134e;

    private t80(@NonNull ConstraintLayout constraintLayout, @NonNull View view, @NonNull ImageView imageView, @NonNull View view2, @NonNull TextView textView) {
        this.f25130a = constraintLayout;
        this.f25131b = view;
        this.f25132c = imageView;
        this.f25133d = view2;
        this.f25134e = textView;
    }

    @NonNull
    public static t80 a(@NonNull View view) {
        int i2 = R.id.line;
        View findChildViewById = ViewBindings.findChildViewById(view, R.id.line);
        if (findChildViewById != null) {
            i2 = R.id.f17870r;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.f17870r);
            if (imageView != null) {
                i2 = R.id.rRect;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.rRect);
                if (findChildViewById2 != null) {
                    i2 = R.id.title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView != null) {
                        return new t80((ConstraintLayout) view, findChildViewById, imageView, findChildViewById2, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static t80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.pop_my_game_filter_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f25130a;
    }
}
