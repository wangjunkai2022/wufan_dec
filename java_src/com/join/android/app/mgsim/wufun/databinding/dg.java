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
/* compiled from: FragmentCloudListBinding.java */
/* loaded from: classes3.dex */
public final class dg implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19359a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f19360b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f19361c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f19362d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final PtrClassicFrameLayout f19363e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final XListView2 f19364f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RelativeLayout f19365g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f19366h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f19367i;

    private dg(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull PtrClassicFrameLayout ptrClassicFrameLayout, @NonNull XListView2 xListView2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f19359a = linearLayout;
        this.f19360b = imageView;
        this.f19361c = linearLayout2;
        this.f19362d = linearLayout3;
        this.f19363e = ptrClassicFrameLayout;
        this.f19364f = xListView2;
        this.f19365g = relativeLayout;
        this.f19366h = textView;
        this.f19367i = textView2;
    }

    @NonNull
    public static dg a(@NonNull View view) {
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
                                        return new dg((LinearLayout) view, imageView, linearLayout, linearLayout2, ptrClassicFrameLayout, xListView2, relativeLayout, textView, textView2);
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
    public static dg c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static dg d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.fragment_cloud_list, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19359a;
    }
}
