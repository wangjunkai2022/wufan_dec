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
/* compiled from: DialogVipAppVerticalViewBinding.java */
/* loaded from: classes3.dex */
public final class kd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21809a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f21810b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21811c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21812d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21813e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21814f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f21815g;

    private kd(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout) {
        this.f21809a = relativeLayout;
        this.f21810b = simpleDraweeView;
        this.f21811c = textView;
        this.f21812d = textView2;
        this.f21813e = textView3;
        this.f21814f = textView4;
        this.f21815g = linearLayout;
    }

    @NonNull
    public static kd a(@NonNull View view) {
        int i2 = R.id.mainDialogAdImg;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.mainDialogAdImg);
        if (simpleDraweeView != null) {
            i2 = R.id.mainDialogCancelTv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.mainDialogCancelTv);
            if (textView != null) {
                i2 = R.id.mainDialogContenTv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.mainDialogContenTv);
                if (textView2 != null) {
                    i2 = R.id.mainDialogOkIv;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.mainDialogOkIv);
                    if (textView3 != null) {
                        i2 = R.id.mainDialogTopTv;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.mainDialogTopTv);
                        if (textView4 != null) {
                            i2 = R.id.rootLl;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.rootLl);
                            if (linearLayout != null) {
                                return new kd((RelativeLayout) view, simpleDraweeView, textView, textView2, textView3, textView4, linearLayout);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static kd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static kd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_vip_app_vertical_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21809a;
    }
}
