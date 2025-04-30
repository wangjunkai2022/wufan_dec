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
/* compiled from: ListviewDownloadBinding.java */
/* loaded from: classes3.dex */
public final class ev implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19902a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19903b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f19904c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19905d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f19906e;

    private ev(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull Button button, @NonNull TextView textView2, @NonNull ImageView imageView) {
        this.f19902a = linearLayout;
        this.f19903b = textView;
        this.f19904c = button;
        this.f19905d = textView2;
        this.f19906e = imageView;
    }

    @NonNull
    public static ev a(@NonNull View view) {
        int i2 = R.id.createTime;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.createTime);
        if (textView != null) {
            i2 = R.id.install;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.install);
            if (button != null) {
                i2 = R.id.name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                if (textView2 != null) {
                    i2 = R.id.portrait;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.portrait);
                    if (imageView != null) {
                        return new ev((LinearLayout) view, textView, button, textView2, imageView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ev c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ev d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.listview_download, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19902a;
    }
}
