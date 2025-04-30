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
/* compiled from: FailedLayoutIncludeBinding.java */
/* loaded from: classes3.dex */
public final class re implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24364a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24365b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f24366c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f24367d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f24368e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Button f24369f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f24370g;

    private re(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView2, @NonNull Button button, @NonNull TextView textView2) {
        this.f24364a = linearLayout;
        this.f24365b = textView;
        this.f24366c = imageView;
        this.f24367d = linearLayout2;
        this.f24368e = imageView2;
        this.f24369f = button;
        this.f24370g = textView2;
    }

    @NonNull
    public static re a(@NonNull View view) {
        int i2 = R.id.failedMessage;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.failedMessage);
        if (textView != null) {
            i2 = R.id.lodingBackImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lodingBackImage);
            if (imageView != null) {
                LinearLayout linearLayout = (LinearLayout) view;
                i2 = R.id.relodingimag;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.relodingimag);
                if (imageView2 != null) {
                    i2 = R.id.setNetwork;
                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.setNetwork);
                    if (button != null) {
                        i2 = R.id.setting;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.setting);
                        if (textView2 != null) {
                            return new re(linearLayout, textView, imageView, linearLayout, imageView2, button, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static re c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static re d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.failed_layout_include, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24364a;
    }
}
