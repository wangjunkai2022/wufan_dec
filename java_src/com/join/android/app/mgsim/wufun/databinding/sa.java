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
/* compiled from: DialogCloudFirstBinding.java */
/* loaded from: classes3.dex */
public final class sa implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24749a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24750b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f24751c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24752d;

    private sa(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2) {
        this.f24749a = linearLayout;
        this.f24750b = textView;
        this.f24751c = imageView;
        this.f24752d = textView2;
    }

    @NonNull
    public static sa a(@NonNull View view) {
        int i2 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i2 = R.id.cloud_select_img;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cloud_select_img);
            if (imageView != null) {
                i2 = R.id.ok;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.ok);
                if (textView2 != null) {
                    return new sa((LinearLayout) view, textView, imageView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static sa c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sa d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_cloud_first, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24749a;
    }
}
