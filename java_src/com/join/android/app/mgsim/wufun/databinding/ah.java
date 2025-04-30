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
/* compiled from: FragmentMessageNoticeBinding.java */
/* loaded from: classes3.dex */
public final class ah implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18177a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f18178b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f18179c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final PtrClassicFrameLayout f18180d;

    private ah(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull XListView2 xListView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout) {
        this.f18177a = linearLayout;
        this.f18178b = linearLayout2;
        this.f18179c = xListView2;
        this.f18180d = ptrClassicFrameLayout;
    }

    @NonNull
    public static ah a(@NonNull View view) {
        int i2 = R.id.iv_nome;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_nome);
        if (linearLayout != null) {
            i2 = R.id.listview;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listview);
            if (xListView2 != null) {
                i2 = R.id.myswip;
                PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.myswip);
                if (ptrClassicFrameLayout != null) {
                    return new ah((LinearLayout) view, linearLayout, xListView2, ptrClassicFrameLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ah c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ah d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_message_notice, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18177a;
    }
}
