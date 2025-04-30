package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: FragmentCommuntityBinding.java */
/* loaded from: classes3.dex */
public final class gg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20446a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f20447b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final XListView2 f20448c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final PtrClassicFrameLayout f20449d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20450e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f20451f;

    private gg(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull XListView2 xListView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout3) {
        this.f20446a = linearLayout;
        this.f20447b = linearLayout2;
        this.f20448c = xListView2;
        this.f20449d = ptrClassicFrameLayout;
        this.f20450e = textView;
        this.f20451f = linearLayout3;
    }

    @NonNull
    public static gg a(@NonNull View view) {
        int i2 = R.id.iv_nome;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_nome);
        if (linearLayout != null) {
            i2 = R.id.listview;
            XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.listview);
            if (xListView2 != null) {
                i2 = R.id.myswip;
                PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.myswip);
                if (ptrClassicFrameLayout != null) {
                    i2 = R.id.redTips;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.redTips);
                    if (textView != null) {
                        i2 = R.id.thumbslayout;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.thumbslayout);
                        if (linearLayout2 != null) {
                            return new gg((LinearLayout) view, linearLayout, xListView2, ptrClassicFrameLayout, textView, linearLayout2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static gg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static gg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_communtity, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20446a;
    }
}
