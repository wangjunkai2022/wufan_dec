package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ItemStandaloneCompanyItemViewBinding.java */
/* loaded from: classes3.dex */
public final class ks implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21885a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f21886b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f21887c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21888d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f21889e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final View f21890f;

    private ks(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull View view, @NonNull View view2) {
        this.f21885a = linearLayout;
        this.f21886b = simpleDraweeView;
        this.f21887c = relativeLayout;
        this.f21888d = textView;
        this.f21889e = view;
        this.f21890f = view2;
    }

    @NonNull
    public static ks a(@NonNull View view) {
        int i2 = R.id.standAloneCompanyIv;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.standAloneCompanyIv);
        if (simpleDraweeView != null) {
            i2 = R.id.standAloneCompanyRootRl;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.standAloneCompanyRootRl);
            if (relativeLayout != null) {
                i2 = R.id.standAloneCompanyTv;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.standAloneCompanyTv);
                if (textView != null) {
                    i2 = R.id.standAloneLeftVi;
                    View findChildViewById = ViewBindings.findChildViewById(view, R.id.standAloneLeftVi);
                    if (findChildViewById != null) {
                        i2 = R.id.standAloneRightVi;
                        View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.standAloneRightVi);
                        if (findChildViewById2 != null) {
                            return new ks((LinearLayout) view, simpleDraweeView, relativeLayout, textView, findChildViewById, findChildViewById2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ks c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ks d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_standalone_company_item_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21885a;
    }
}
