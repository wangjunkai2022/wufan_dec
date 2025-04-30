package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FightIntroductionActivityBinding.java */
/* loaded from: classes3.dex */
public final class cf implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18901a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f18902b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f18903c;

    private cf(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2) {
        this.f18901a = relativeLayout;
        this.f18902b = imageView;
        this.f18903c = imageView2;
    }

    @NonNull
    public static cf a(@NonNull View view) {
        int i2 = R.id.cancel;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (imageView != null) {
            i2 = R.id.img;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.img);
            if (imageView2 != null) {
                return new cf((RelativeLayout) view, imageView, imageView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static cf c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cf d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fight_introduction_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18901a;
    }
}
