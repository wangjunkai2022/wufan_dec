package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CornersLinearLayout;
/* compiled from: FragmentMoreIntroductionBinding.java */
/* loaded from: classes3.dex */
public final class eh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CornersLinearLayout f19764a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19765b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f19766c;

    private eh(@NonNull CornersLinearLayout cornersLinearLayout, @NonNull ImageView imageView, @NonNull RecyclerView recyclerView) {
        this.f19764a = cornersLinearLayout;
        this.f19765b = imageView;
        this.f19766c = recyclerView;
    }

    @NonNull
    public static eh a(@NonNull View view) {
        int i2 = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_close);
        if (imageView != null) {
            i2 = R.id.rv_list_data;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rv_list_data);
            if (recyclerView != null) {
                return new eh((CornersLinearLayout) view, imageView, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static eh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static eh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_more_introduction, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public CornersLinearLayout getRoot() {
        return this.f19764a;
    }
}
