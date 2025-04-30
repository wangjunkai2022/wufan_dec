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
/* compiled from: GameSingleConpanyLayoutBinding.java */
/* loaded from: classes3.dex */
public final class mj implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22545a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final PtrClassicFrameLayout f22546b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f22547c;

    private mj(@NonNull RelativeLayout relativeLayout, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull XListView2 xListView2) {
        this.f22545a = relativeLayout;
        this.f22546b = ptrClassicFrameLayout;
        this.f22547c = xListView2;
    }

    @NonNull
    public static mj a(@NonNull View view) {
        int i2 = R.id.mPtrFrame;
        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
        if (ptrClassicFrameLayout != null) {
            i2 = R.id.rankListView;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.rankListView);
            if (xListView2 != null) {
                return new mj((RelativeLayout) view, ptrClassicFrameLayout, xListView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static mj c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static mj d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_single_conpany_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22545a;
    }
}
