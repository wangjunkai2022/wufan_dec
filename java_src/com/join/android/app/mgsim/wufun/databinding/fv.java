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
/* compiled from: ListviewDownloadCenterDownloadingBinding.java */
/* loaded from: classes3.dex */
public final class fv implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20229a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f20230b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f20231c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f20232d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f20233e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f20234f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f20235g;

    private fv(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f20229a = linearLayout;
        this.f20230b = button;
        this.f20231c = button2;
        this.f20232d = imageView;
        this.f20233e = textView;
        this.f20234f = textView2;
        this.f20235g = textView3;
    }

    @NonNull
    public static fv a(@NonNull View view) {
        int i2 = R.id.btnOp;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btnOp);
        if (button != null) {
            i2 = R.id.del;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.del);
            if (button2 != null) {
                i2 = R.id.img;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img);
                if (imageView != null) {
                    i2 = R.id.name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                    if (textView != null) {
                        i2 = R.id.percentage;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.percentage);
                        if (textView2 != null) {
                            i2 = R.id.status;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.status);
                            if (textView3 != null) {
                                return new fv((LinearLayout) view, button, button2, imageView, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static fv c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fv d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.listview_download_center_downloading, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20229a;
    }
}
