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
/* compiled from: UnzipOrInstallFailedItemBinding.java */
/* loaded from: classes3.dex */
public final class yc0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26881a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f26882b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f26883c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26884d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26885e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26886f;

    private yc0(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f26881a = linearLayout;
        this.f26882b = imageView;
        this.f26883c = linearLayout2;
        this.f26884d = textView;
        this.f26885e = textView2;
        this.f26886f = textView3;
    }

    @NonNull
    public static yc0 a(@NonNull View view) {
        int i2 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
        if (imageView != null) {
            i2 = R.id.main;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
            if (linearLayout != null) {
                i2 = R.id.message;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.message);
                if (textView != null) {
                    i2 = R.id.subtitle;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.subtitle);
                    if (textView2 != null) {
                        i2 = R.id.title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                        if (textView3 != null) {
                            return new yc0((LinearLayout) view, imageView, linearLayout, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static yc0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yc0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.unzip_or_install_failed_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26881a;
    }
}
