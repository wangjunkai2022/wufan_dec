package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: LiveContrybutionActivityBinding.java */
/* loaded from: classes3.dex */
public final class nv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22993a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final PtrClassicFrameLayout f22994b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22995c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final XListView2 f22996d;

    private nv(@NonNull RelativeLayout relativeLayout, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull TextView textView, @NonNull XListView2 xListView2) {
        this.f22993a = relativeLayout;
        this.f22994b = ptrClassicFrameLayout;
        this.f22995c = textView;
        this.f22996d = xListView2;
    }

    @NonNull
    public static nv a(@NonNull View view) {
        int i2 = R.id.mPtrFrame;
        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
        if (ptrClassicFrameLayout != null) {
            i2 = R.id.nodata;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.nodata);
            if (textView != null) {
                i2 = R.id.rankListView;
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.rankListView);
                if (xListView2 != null) {
                    return new nv((RelativeLayout) view, ptrClassicFrameLayout, textView, xListView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static nv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static nv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.live_contrybution_activity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22993a;
    }
}
