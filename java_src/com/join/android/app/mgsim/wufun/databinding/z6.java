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
import com.join.mgps.customview.CloudDownButn;
/* compiled from: CloudListItemBinding.java */
/* loaded from: classes3.dex */
public final class z6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27129a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f27130b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CloudDownButn f27131c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f27132d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f27133e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f27134f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f27135g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f27136h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f27137i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f27138j;

    private z6(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull CloudDownButn cloudDownButn, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f27129a = linearLayout;
        this.f27130b = textView;
        this.f27131c = cloudDownButn;
        this.f27132d = linearLayout2;
        this.f27133e = textView2;
        this.f27134f = simpleDraweeView;
        this.f27135g = textView3;
        this.f27136h = textView4;
        this.f27137i = textView5;
        this.f27138j = textView6;
    }

    @NonNull
    public static z6 a(@NonNull View view) {
        int i2 = R.id.backUp;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.backUp);
        if (textView != null) {
            i2 = R.id.downButton;
            CloudDownButn cloudDownButn = (CloudDownButn) ViewBindings.findChildViewById(view, R.id.downButton);
            if (cloudDownButn != null) {
                i2 = R.id.iv_more;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_more);
                if (linearLayout != null) {
                    i2 = R.id.shape;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.shape);
                    if (textView2 != null) {
                        i2 = R.id.simv;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.simv);
                        if (simpleDraweeView != null) {
                            i2 = R.id.tv_evalute;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_evalute);
                            if (textView3 != null) {
                                i2 = R.id.tv_good;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_good);
                                if (textView4 != null) {
                                    i2 = R.id.tv_name;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_name);
                                    if (textView5 != null) {
                                        i2 = R.id.tv_time;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_time);
                                        if (textView6 != null) {
                                            return new z6((LinearLayout) view, textView, cloudDownButn, linearLayout, textView2, simpleDraweeView, textView3, textView4, textView5, textView6);
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
    public static z6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static z6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.cloud_list_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27129a;
    }
}
