package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import com.join.mgps.ptr.PtrClassicFrameLayout;
/* compiled from: ItemRecommedFragmentBinding.java */
/* loaded from: classes3.dex */
public final class pr implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23722a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23723b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f23724c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f23725d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final PtrClassicFrameLayout f23726e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final XListView2 f23727f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f23728g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f23729h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f23730i;

    private pr(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull XListView2 xListView2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f23722a = linearLayout;
        this.f23723b = imageView;
        this.f23724c = linearLayout2;
        this.f23725d = linearLayout3;
        this.f23726e = ptrClassicFrameLayout;
        this.f23727f = xListView2;
        this.f23728g = relativeLayout;
        this.f23729h = textView;
        this.f23730i = textView2;
    }

    @NonNull
    public static pr a(@NonNull View view) {
        int i2 = R.id.iv_redbroadcast;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_redbroadcast);
        if (imageView != null) {
            i2 = R.id.ll_lookdetail;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_lookdetail);
            if (linearLayout != null) {
                i2 = R.id.ll_nodata;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_nodata);
                if (linearLayout2 != null) {
                    i2 = R.id.myswip;
                    PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) ViewBindings.findChildViewById(view, R.id.myswip);
                    if (ptrClassicFrameLayout != null) {
                        i2 = R.id.rcy_recommed;
                        XListView2 xListView2 = (XListView2) ViewBindings.findChildViewById(view, R.id.rcy_recommed);
                        if (xListView2 != null) {
                            i2 = R.id.rl_showtitle_bc;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_showtitle_bc);
                            if (relativeLayout != null) {
                                i2 = R.id.tv_show_nodata;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_show_nodata);
                                if (textView != null) {
                                    i2 = R.id.tv_showtitle_bc;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_showtitle_bc);
                                    if (textView2 != null) {
                                        return new pr((LinearLayout) view, imageView, linearLayout, linearLayout2, ptrClassicFrameLayout, xListView2, relativeLayout, textView, textView2);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static pr c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pr d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_recommed_fragment, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23722a;
    }
}
