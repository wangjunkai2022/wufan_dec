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
/* compiled from: MgFightLayoutBinding.java */
/* loaded from: classes3.dex */
public final class cx implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19112a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f19113b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f19114c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final PtrClassicFrameLayout f19115d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final tc0 f19116e;

    private cx(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull XListView2 xListView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull tc0 tc0Var) {
        this.f19112a = linearLayout;
        this.f19113b = linearLayout2;
        this.f19114c = xListView2;
        this.f19115d = ptrClassicFrameLayout;
        this.f19116e = tc0Var;
    }

    @NonNull
    public static cx a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.fightListView;
        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.fightListView);
        if (xListView2 != null) {
            i2 = R.id.mPtrFrame;
            PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
            if (ptrClassicFrameLayout != null) {
                i2 = R.id.top_lay;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.top_lay);
                if (findChildViewById != null) {
                    return new cx(linearLayout, linearLayout, xListView2, ptrClassicFrameLayout, tc0.a(findChildViewById));
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static cx c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static cx d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mg_fight_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19112a;
    }
}
