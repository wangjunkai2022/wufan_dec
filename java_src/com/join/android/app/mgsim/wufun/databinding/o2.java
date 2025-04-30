package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityWifiapItemBinding.java */
/* loaded from: classes3.dex */
public final class o2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23095a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23096b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f23097c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23098d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ProgressBar f23099e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23100f;

    private o2(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull ProgressBar progressBar, @NonNull TextView textView2) {
        this.f23095a = linearLayout;
        this.f23096b = imageView;
        this.f23097c = linearLayout2;
        this.f23098d = textView;
        this.f23099e = progressBar;
        this.f23100f = textView2;
    }

    @NonNull
    public static o2 a(@NonNull View view) {
        int i2 = R.id.connect_ok_image_wtitem;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.connect_ok_image_wtitem);
        if (imageView != null) {
            i2 = R.id.connect_ok_layout_wtitem;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.connect_ok_layout_wtitem);
            if (linearLayout != null) {
                i2 = R.id.connect_text_wtitem;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.connect_text_wtitem);
                if (textView != null) {
                    i2 = R.id.connecting_progressBar_wtitem;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.connecting_progressBar_wtitem);
                    if (progressBar != null) {
                        i2 = R.id.name_text_wtitem;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name_text_wtitem);
                        if (textView2 != null) {
                            return new o2((LinearLayout) view, imageView, linearLayout, textView, progressBar, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static o2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_wifiap_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23095a;
    }
}
