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
/* compiled from: ItemCloudArchiveTypeBinding.java */
/* loaded from: classes3.dex */
public final class mp implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f22583a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22584b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22585c;

    private mp(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f22583a = frameLayout;
        this.f22584b = textView;
        this.f22585c = textView2;
    }

    @NonNull
    public static mp a(@NonNull View view) {
        int i2 = R.id.tvCountNew;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvCountNew);
        if (textView != null) {
            i2 = R.id.tvType;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvType);
            if (textView2 != null) {
                return new mp((FrameLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static mp c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static mp d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_cloud_archive_type, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f22583a;
    }
}
