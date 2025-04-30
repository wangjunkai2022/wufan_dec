package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.component.xrecyclerview.XQuickRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: FragmentFindMiniGameBinding.java */
/* loaded from: classes3.dex */
public final class lg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22138a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f22139b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final PtrClassicFrameLayout f22140c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final XQuickRecyclerView f22141d;

    private lg(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull XQuickRecyclerView xQuickRecyclerView) {
        this.f22138a = relativeLayout;
        this.f22139b = linearLayout;
        this.f22140c = ptrClassicFrameLayout;
        this.f22141d = xQuickRecyclerView;
    }

    @NonNull
    public static lg a(@NonNull View view) {
        int i2 = R.id.iv_nome;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_nome);
        if (linearLayout != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i2 = R.id.xrv_list;
                XQuickRecyclerView xQuickRecyclerView = (XQuickRecyclerView) ViewBindings.findChildViewById(view, R.id.xrv_list);
                if (xQuickRecyclerView != null) {
                    return new lg((RelativeLayout) view, linearLayout, ptrClassicFrameLayout, xQuickRecyclerView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static lg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_find_mini_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22138a;
    }
}
