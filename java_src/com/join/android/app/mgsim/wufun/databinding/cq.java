package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemGameDetailCloudArchiveTypeBinding.java */
/* loaded from: classes3.dex */
public final class cq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f19029a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19030b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19031c;

    private cq(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f19029a = frameLayout;
        this.f19030b = textView;
        this.f19031c = textView2;
    }

    @NonNull
    public static cq a(@NonNull View view) {
        int i2 = R.id.tvCountNew;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvCountNew);
        if (textView != null) {
            i2 = R.id.tvType;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvType);
            if (textView2 != null) {
                return new cq((FrameLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static cq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_game_detail_cloud_archive_type, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f19029a;
    }
}
