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
/* compiled from: SdcardListItemBinding.java */
/* loaded from: classes3.dex */
public final class ja0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21425a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21426b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f21427c;

    private ja0(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView) {
        this.f21425a = linearLayout;
        this.f21426b = textView;
        this.f21427c = imageView;
    }

    @NonNull
    public static ja0 a(@NonNull View view) {
        int i2 = R.id.file_name;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.file_name);
        if (textView != null) {
            i2 = R.id.icon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
            if (imageView != null) {
                return new ja0((LinearLayout) view, textView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ja0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ja0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.sdcard_list_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21425a;
    }
}
