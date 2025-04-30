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
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: ClassifyListLayoutBinding.java */
/* loaded from: classes3.dex */
public final class l6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22029a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView2 f22030b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PtrClassicFrameLayout f22031c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f22032d;

    private l6(@NonNull RelativeLayout relativeLayout, @NonNull XListView2 xListView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull RelativeLayout relativeLayout2) {
        this.f22029a = relativeLayout;
        this.f22030b = xListView2;
        this.f22031c = ptrClassicFrameLayout;
        this.f22032d = relativeLayout2;
    }

    @NonNull
    public static l6 a(@NonNull View view) {
        int i2 = R.id.classifyListView;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.classifyListView);
        if (xListView2 != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                return new l6(relativeLayout, xListView2, ptrClassicFrameLayout, relativeLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static l6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.classify_list_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22029a;
    }
}
