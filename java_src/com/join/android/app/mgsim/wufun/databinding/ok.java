package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.MViewpagerV4;
import it.sephiroth.android.library.widget.HListView;
/* compiled from: GamedetailItemImgNaviV1Binding.java */
/* loaded from: classes3.dex */
public final class ok implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f23286a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final HListView f23287b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f23288c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final MViewpagerV4 f23289d;

    private ok(@NonNull ConstraintLayout constraintLayout, @NonNull HListView hListView, @NonNull LinearLayout linearLayout, @NonNull MViewpagerV4 mViewpagerV4) {
        this.f23286a = constraintLayout;
        this.f23287b = hListView;
        this.f23288c = linearLayout;
        this.f23289d = mViewpagerV4;
    }

    @NonNull
    public static ok a(@NonNull View view) {
        int i2 = R.id.hlv_top_list;
        HListView hListView = (HListView) ViewBindings.findChildViewById(view, R.id.hlv_top_list);
        if (hListView != null) {
            i2 = R.id.ll_top_images;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_top_images);
            if (linearLayout != null) {
                i2 = R.id.viewPager1;
                MViewpagerV4 mViewpagerV4 = (MViewpagerV4) ViewBindings.findChildViewById(view, R.id.viewPager1);
                if (mViewpagerV4 != null) {
                    return new ok((ConstraintLayout) view, hListView, linearLayout, mViewpagerV4);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ok c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ok d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.gamedetail_item_img_navi_v1, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f23286a;
    }
}
