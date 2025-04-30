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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.CloudDownButn1;
/* compiled from: CloudListItem3Binding.java */
/* loaded from: classes3.dex */
public final class y6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26803a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26804b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f26805c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final CloudDownButn1 f26806d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f26807e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f26808f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f26809g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final LinearLayout f26810h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f26811i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SimpleDraweeView f26812j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f26813k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f26814l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f26815m;

    private y6(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull CloudDownButn1 cloudDownButn1, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f26803a = linearLayout;
        this.f26804b = textView;
        this.f26805c = textView2;
        this.f26806d = cloudDownButn1;
        this.f26807e = linearLayout2;
        this.f26808f = linearLayout3;
        this.f26809g = linearLayout4;
        this.f26810h = linearLayout5;
        this.f26811i = textView3;
        this.f26812j = simpleDraweeView;
        this.f26813k = textView4;
        this.f26814l = textView5;
        this.f26815m = textView6;
    }

    @NonNull
    public static y6 a(@NonNull View view) {
        int i2 = R.id.authorname;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.authorname);
        if (textView != null) {
            i2 = R.id.backUp;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.backUp);
            if (textView2 != null) {
                i2 = R.id.downButton;
                CloudDownButn1 cloudDownButn1 = (CloudDownButn1) ViewBindings.findChildViewById(view, R.id.downButton);
                if (cloudDownButn1 != null) {
                    i2 = R.id.ll_author;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_author);
                    if (linearLayout != null) {
                        i2 = R.id.ll_info;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_info);
                        if (linearLayout2 != null) {
                            i2 = R.id.ll_vip;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.ll_vip);
                            if (linearLayout3 != null) {
                                LinearLayout linearLayout4 = (LinearLayout) view;
                                i2 = R.id.shape;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.shape);
                                if (textView3 != null) {
                                    i2 = R.id.simv;
                                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.simv);
                                    if (simpleDraweeView != null) {
                                        i2 = R.id.tv_name;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                        if (textView4 != null) {
                                            i2 = R.id.tvcouldnum;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tvcouldnum);
                                            if (textView5 != null) {
                                                i2 = R.id.tvgoodpraisenum;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tvgoodpraisenum);
                                                if (textView6 != null) {
                                                    return new y6(linearLayout4, textView, textView2, cloudDownButn1, linearLayout, linearLayout2, linearLayout3, linearLayout4, textView3, simpleDraweeView, textView4, textView5, textView6);
                                                }
                                            }
                                        }
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
    public static y6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.cloud_list_item3, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26803a;
    }
}
