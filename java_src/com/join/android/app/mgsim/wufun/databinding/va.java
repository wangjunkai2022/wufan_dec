package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogCloudPassBinding.java */
/* loaded from: classes3.dex */
public final class va implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25789a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25790b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f25791c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25792d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25793e;

    private va(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f25789a = linearLayout;
        this.f25790b = textView;
        this.f25791c = imageView;
        this.f25792d = textView2;
        this.f25793e = textView3;
    }

    @NonNull
    public static va a(@NonNull View view) {
        int i2 = R.id.per;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.per);
        if (textView != null) {
            i2 = R.id.status_icon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.status_icon);
            if (imageView != null) {
                i2 = R.id.sub;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.sub);
                if (textView2 != null) {
                    i2 = R.id.txt;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.txt);
                    if (textView3 != null) {
                        return new va((LinearLayout) view, textView, imageView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static va c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static va d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_cloud_pass, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25789a;
    }
}
