package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FailedLayoutIncludeDetailBinding.java */
/* loaded from: classes3.dex */
public final class se implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24826a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24827b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f24828c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f24829d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f24830e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Button f24831f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24832g;

    private se(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView2, @NonNull Button button, @NonNull TextView textView2) {
        this.f24826a = linearLayout;
        this.f24827b = textView;
        this.f24828c = imageView;
        this.f24829d = linearLayout2;
        this.f24830e = imageView2;
        this.f24831f = button;
        this.f24832g = textView2;
    }

    @NonNull
    public static se a(@NonNull View view) {
        int i2 = R.id.failedMessage;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.failedMessage);
        if (textView != null) {
            i2 = R.id.lodingBackImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lodingBackImage);
            if (imageView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i2 = R.id.relodingimag_detail;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.relodingimag_detail);
                if (imageView2 != null) {
                    i2 = R.id.setNetwork_detail;
                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.setNetwork_detail);
                    if (button != null) {
                        i2 = R.id.setting_detail;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.setting_detail);
                        if (textView2 != null) {
                            return new se(linearLayout, textView, imageView, linearLayout, imageView2, button, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static se c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static se d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.failed_layout_include_detail, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24826a;
    }
}
