package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: InformationLayoutBinding.java */
/* loaded from: classes3.dex */
public final class to implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25269a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final PtrClassicFrameLayout f25270b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final qc0 f25271c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final XListView2 f25272d;

    private to(@NonNull LinearLayout linearLayout, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull qc0 qc0Var, @NonNull XListView2 xListView2) {
        this.f25269a = linearLayout;
        this.f25270b = ptrClassicFrameLayout;
        this.f25271c = qc0Var;
        this.f25272d = xListView2;
    }

    @NonNull
    public static to a(@NonNull View view) {
        int i2 = R.id.mPtrFrame;
        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
        if (ptrClassicFrameLayout != null) {
            i2 = R.id.title_bar_layout;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.title_bar_layout);
            if (findChildViewById != null) {
                qc0 a4 = qc0.a(findChildViewById);
                XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.xListView);
                if (xListView2 != null) {
                    return new to((LinearLayout) view, ptrClassicFrameLayout, a4, xListView2);
                }
                i2 = R.id.xListView;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static to c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static to d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.information_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25269a;
    }
}
