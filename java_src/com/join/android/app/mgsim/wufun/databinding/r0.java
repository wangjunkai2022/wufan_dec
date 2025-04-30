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
/* compiled from: ActivityGivePriceBinding.java */
/* loaded from: classes3.dex */
public final class r0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24134a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f24135b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f24136c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f24137d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f24138e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final PtrClassicFrameLayout f24139f;

    private r0(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull XListView2 xListView2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout) {
        this.f24134a = linearLayout;
        this.f24135b = linearLayout2;
        this.f24136c = xListView2;
        this.f24137d = linearLayout3;
        this.f24138e = linearLayout4;
        this.f24139f = ptrClassicFrameLayout;
    }

    @NonNull
    public static r0 a(@NonNull View view) {
        int i2 = R.id.iv_nome;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_nome);
        if (linearLayout != null) {
            i2 = R.id.listview;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listview);
            if (xListView2 != null) {
                i2 = R.id.ll_finsh;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_finsh);
                if (linearLayout2 != null) {
                    i2 = R.id.ll_title;
                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_title);
                    if (linearLayout3 != null) {
                        i2 = R.id.myswip;
                        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.myswip);
                        if (ptrClassicFrameLayout != null) {
                            return new r0((LinearLayout) view, linearLayout, xListView2, linearLayout2, linearLayout3, ptrClassicFrameLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static r0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_give_price, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24134a;
    }
}
