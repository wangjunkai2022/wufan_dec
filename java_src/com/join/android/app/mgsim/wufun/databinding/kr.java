package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.InterceptEventHorizontalScrollView;
/* compiled from: ItemPapaStandaloneRecBinding.java */
/* loaded from: classes3.dex */
public final class kr implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21883a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final InterceptEventHorizontalScrollView f21884b;

    private kr(@NonNull RelativeLayout relativeLayout, @NonNull InterceptEventHorizontalScrollView interceptEventHorizontalScrollView) {
        this.f21883a = relativeLayout;
        this.f21884b = interceptEventHorizontalScrollView;
    }

    @NonNull
    public static kr a(@NonNull View view) {
        InterceptEventHorizontalScrollView interceptEventHorizontalScrollView = (InterceptEventHorizontalScrollView) ViewBindings.findChildViewById(view, R.id.mHorizontalScrollView);
        if (interceptEventHorizontalScrollView != null) {
            return new kr((RelativeLayout) view, interceptEventHorizontalScrollView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.mHorizontalScrollView)));
    }

    @NonNull
    public static kr c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static kr d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_papa_standalone_rec, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21883a;
    }
}
