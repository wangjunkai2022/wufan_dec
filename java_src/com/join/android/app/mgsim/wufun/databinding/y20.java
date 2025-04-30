package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.LeftGalleryLayout;
/* compiled from: MgpapamainGalleryItemBinding.java */
/* loaded from: classes3.dex */
public final class y20 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LeftGalleryLayout f26770a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f26771b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LeftGalleryLayout f26772c;

    private y20(@NonNull LeftGalleryLayout leftGalleryLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LeftGalleryLayout leftGalleryLayout2) {
        this.f26770a = leftGalleryLayout;
        this.f26771b = simpleDraweeView;
        this.f26772c = leftGalleryLayout2;
    }

    @NonNull
    public static y20 a(@NonNull View view) {
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.intersting_itemback);
        if (simpleDraweeView != null) {
            LeftGalleryLayout leftGalleryLayout = (LeftGalleryLayout) view;
            return new y20(leftGalleryLayout, simpleDraweeView, leftGalleryLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.intersting_itemback)));
    }

    @NonNull
    public static y20 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y20 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mgpapamain_gallery_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LeftGalleryLayout getRoot() {
        return this.f26770a;
    }
}
