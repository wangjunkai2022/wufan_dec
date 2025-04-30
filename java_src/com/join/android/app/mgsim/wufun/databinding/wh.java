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
/* compiled from: FragmentRankItemBinding.java */
/* loaded from: classes3.dex */
public final class wh implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26188a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final XListView2 f26189b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PtrClassicFrameLayout f26190c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f26191d;

    private wh(@NonNull RelativeLayout relativeLayout, @NonNull XListView2 xListView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull RelativeLayout relativeLayout2) {
        this.f26188a = relativeLayout;
        this.f26189b = xListView2;
        this.f26190c = ptrClassicFrameLayout;
        this.f26191d = relativeLayout2;
    }

    @NonNull
    public static wh a(@NonNull View view) {
        int i2 = R.id.classifyListView;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.classifyListView);
        if (xListView2 != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                return new wh(relativeLayout, xListView2, ptrClassicFrameLayout, relativeLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static wh c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wh d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_rank_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26188a;
    }
}
