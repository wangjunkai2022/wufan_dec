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
/* compiled from: ItemGameroomListHeadereBinding.java */
/* loaded from: classes3.dex */
public final class rq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24484a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24485b;

    private rq(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView) {
        this.f24484a = relativeLayout;
        this.f24485b = imageView;
    }

    @NonNull
    public static rq a(@NonNull View view) {
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_create_room);
        if (imageView != null) {
            return new rq((RelativeLayout) view, imageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.iv_create_room)));
    }

    @NonNull
    public static rq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_gameroom_list_headere, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24484a;
    }
}
