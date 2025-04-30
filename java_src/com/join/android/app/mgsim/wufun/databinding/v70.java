package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView;
/* compiled from: PapapayCenterLayoutBinding.java */
/* loaded from: classes3.dex */
public final class v70 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25769a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25770b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f25771c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25772d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final XListView f25773e;

    private v70(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull XListView xListView) {
        this.f25769a = linearLayout;
        this.f25770b = imageView;
        this.f25771c = linearLayout2;
        this.f25772d = textView;
        this.f25773e = xListView;
    }

    @NonNull
    public static v70 a(@NonNull View view) {
        int i2 = R.id.imageView8;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView8);
        if (imageView != null) {
            i2 = R.id.nodata;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.nodata);
            if (linearLayout != null) {
                i2 = R.id.textView22;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textView22);
                if (textView != null) {
                    i2 = R.id.xListView;
                    XListView xListView = (XListView) ViewBindings.findChildViewById(view, R.id.xListView);
                    if (xListView != null) {
                        return new v70((LinearLayout) view, imageView, linearLayout, textView, xListView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static v70 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v70 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.papapay_center_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25769a;
    }
}
