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
/* compiled from: VwXscrollviewLayoutBinding.java */
/* loaded from: classes3.dex */
public final class ie0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21148a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f21149b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f21150c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f21151d;

    private ie0(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4) {
        this.f21148a = linearLayout;
        this.f21149b = linearLayout2;
        this.f21150c = linearLayout3;
        this.f21151d = linearLayout4;
    }

    @NonNull
    public static ie0 a(@NonNull View view) {
        int i2 = R.id.content_layout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.content_layout);
        if (linearLayout != null) {
            i2 = R.id.footer_layout;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.footer_layout);
            if (linearLayout2 != null) {
                i2 = R.id.header_layout;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.header_layout);
                if (linearLayout3 != null) {
                    return new ie0((LinearLayout) view, linearLayout, linearLayout2, linearLayout3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ie0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ie0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.vw_xscrollview_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21148a;
    }
}
