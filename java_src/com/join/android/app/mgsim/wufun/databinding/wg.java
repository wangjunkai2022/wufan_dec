package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: FragmentLableBinding.java */
/* loaded from: classes3.dex */
public final class wg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26184a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f26185b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f26186c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final PtrClassicFrameLayout f26187d;

    private wg(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull XListView2 xListView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout) {
        this.f26184a = linearLayout;
        this.f26185b = imageView;
        this.f26186c = xListView2;
        this.f26187d = ptrClassicFrameLayout;
    }

    @NonNull
    public static wg a(@NonNull View view) {
        int i2 = R.id.iv_no_data;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_no_data);
        if (imageView != null) {
            i2 = R.id.mListView;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.mListView);
            if (xListView2 != null) {
                i2 = R.id.mPtrFrame;
                PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                if (ptrClassicFrameLayout != null) {
                    return new wg((LinearLayout) view, imageView, xListView2, ptrClassicFrameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static wg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_lable, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26184a;
    }
}
