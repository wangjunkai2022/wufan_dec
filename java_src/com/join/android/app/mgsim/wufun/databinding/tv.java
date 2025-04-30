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
/* compiled from: LivePayInfoLayoutBinding.java */
/* loaded from: classes3.dex */
public final class tv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25315a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25316b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25317c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final PtrClassicFrameLayout f25318d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25319e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final XListView2 f25320f;

    private tv(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull TextView textView3, @NonNull XListView2 xListView2) {
        this.f25315a = linearLayout;
        this.f25316b = textView;
        this.f25317c = textView2;
        this.f25318d = ptrClassicFrameLayout;
        this.f25319e = textView3;
        this.f25320f = xListView2;
    }

    @NonNull
    public static tv a(@NonNull View view) {
        int i2 = R.id.allCharm;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.allCharm);
        if (textView != null) {
            i2 = R.id.hasUsedMoney;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.hasUsedMoney);
            if (textView2 != null) {
                i2 = R.id.mPtrFrame;
                PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.mPtrFrame);
                if (ptrClassicFrameLayout != null) {
                    i2 = R.id.noData;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.noData);
                    if (textView3 != null) {
                        i2 = R.id.rankListView;
                        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.rankListView);
                        if (xListView2 != null) {
                            return new tv((LinearLayout) view, textView, textView2, ptrClassicFrameLayout, textView3, xListView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static tv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static tv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.live_pay_info_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25315a;
    }
}
