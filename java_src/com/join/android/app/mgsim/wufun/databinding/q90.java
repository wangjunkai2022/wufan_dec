package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: RecomeWifiItemBinding.java */
/* loaded from: classes3.dex */
public final class q90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23910a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23911b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CheckBox f23912c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f23913d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f23914e;

    private q90(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull CheckBox checkBox, @NonNull SimpleDraweeView simpleDraweeView, @NonNull RelativeLayout relativeLayout2) {
        this.f23910a = relativeLayout;
        this.f23911b = textView;
        this.f23912c = checkBox;
        this.f23913d = simpleDraweeView;
        this.f23914e = relativeLayout2;
    }

    @NonNull
    public static q90 a(@NonNull View view) {
        int i2 = R.id.appName;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appName);
        if (textView != null) {
            i2 = R.id.box;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.box);
            if (checkBox != null) {
                i2 = R.id.icon;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                if (simpleDraweeView != null) {
                    i2 = R.id.re;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.re);
                    if (relativeLayout != null) {
                        return new q90((RelativeLayout) view, textView, checkBox, simpleDraweeView, relativeLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static q90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.recome_wifi_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23910a;
    }
}
