package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: WufunloginSplashActivityBinding.java */
/* loaded from: classes3.dex */
public final class te0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f25222a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25223b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25224c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RecyclerView f25225d;

    private te0(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull RecyclerView recyclerView) {
        this.f25222a = constraintLayout;
        this.f25223b = imageView;
        this.f25224c = textView;
        this.f25225d = recyclerView;
    }

    @NonNull
    public static te0 a(@NonNull View view) {
        int i2 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            i2 = R.id.login;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.login);
            if (textView != null) {
                i2 = R.id.mRecyclerView;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.mRecyclerView);
                if (recyclerView != null) {
                    return new te0((ConstraintLayout) view, imageView, textView, recyclerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static te0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static te0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.wufunlogin_splash_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f25222a;
    }
}
