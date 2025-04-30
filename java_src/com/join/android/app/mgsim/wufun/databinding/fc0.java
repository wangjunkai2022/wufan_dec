package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: StubBuildQrCodeBinding.java */
/* loaded from: classes3.dex */
public final class fc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20093a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f20094b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f20095c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20096d;

    private fc0(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2) {
        this.f20093a = relativeLayout;
        this.f20094b = textView;
        this.f20095c = imageView;
        this.f20096d = textView2;
    }

    @NonNull
    public static fc0 a(@NonNull View view) {
        int i2 = R.id.qr_code_declare_txt;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.qr_code_declare_txt);
        if (textView != null) {
            i2 = R.id.qr_code_img;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.qr_code_img);
            if (imageView != null) {
                i2 = R.id.ssidTxt;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.ssidTxt);
                if (textView2 != null) {
                    return new fc0((RelativeLayout) view, textView, imageView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static fc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.stub_build_qr_code, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20093a;
    }
}
