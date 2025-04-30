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
import com.join.mgps.customview.ScratchView;
/* compiled from: VipCenterLuckdrawlLayoutBinding.java */
/* loaded from: classes3.dex */
public final class de0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19341a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f19342b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f19343c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19344d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f19345e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f19346f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f19347g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f19348h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f19349i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f19350j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ScratchView f19351k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f19352l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f19353m;

    private de0(@NonNull LinearLayout linearLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView3, @NonNull LinearLayout linearLayout4, @NonNull TextView textView3, @NonNull ScratchView scratchView, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f19341a = linearLayout;
        this.f19342b = simpleDraweeView;
        this.f19343c = linearLayout2;
        this.f19344d = textView;
        this.f19345e = simpleDraweeView2;
        this.f19346f = linearLayout3;
        this.f19347g = textView2;
        this.f19348h = simpleDraweeView3;
        this.f19349i = linearLayout4;
        this.f19350j = textView3;
        this.f19351k = scratchView;
        this.f19352l = textView4;
        this.f19353m = textView5;
    }

    @NonNull
    public static de0 a(@NonNull View view) {
        int i2 = R.id.prizeDataImg;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.prizeDataImg);
        if (simpleDraweeView != null) {
            i2 = R.id.prizeDataLayout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.prizeDataLayout);
            if (linearLayout != null) {
                i2 = R.id.prizeDataName;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.prizeDataName);
                if (textView != null) {
                    i2 = R.id.prizeListImg;
                    SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.prizeListImg);
                    if (simpleDraweeView2 != null) {
                        i2 = R.id.prizeListLayout;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.prizeListLayout);
                        if (linearLayout2 != null) {
                            i2 = R.id.prizeListName;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.prizeListName);
                            if (textView2 != null) {
                                i2 = R.id.prizeRuleImg;
                                SimpleDraweeView simpleDraweeView3 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.prizeRuleImg);
                                if (simpleDraweeView3 != null) {
                                    i2 = R.id.prizeRuleLayout;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.prizeRuleLayout);
                                    if (linearLayout3 != null) {
                                        i2 = R.id.prizeRuleName;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.prizeRuleName);
                                        if (textView3 != null) {
                                            i2 = R.id.scratch;
                                            ScratchView scratchView = (ScratchView) ViewBindings.findChildViewById(view, R.id.scratch);
                                            if (scratchView != null) {
                                                i2 = R.id.scratchBack;
                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.scratchBack);
                                                if (textView4 != null) {
                                                    i2 = R.id.todayScratchNumber;
                                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.todayScratchNumber);
                                                    if (textView5 != null) {
                                                        return new de0((LinearLayout) view, simpleDraweeView, linearLayout, textView, simpleDraweeView2, linearLayout2, textView2, simpleDraweeView3, linearLayout3, textView3, scratchView, textView4, textView5);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static de0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static de0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.vip_center_luckdrawl_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19341a;
    }
}
