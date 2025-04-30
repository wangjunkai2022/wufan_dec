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
/* compiled from: ItemInputviewlistBinding.java */
/* loaded from: classes3.dex */
public final class sq implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24931a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24932b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f24933c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24934d;

    private sq(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView) {
        this.f24931a = relativeLayout;
        this.f24932b = imageView;
        this.f24933c = relativeLayout2;
        this.f24934d = textView;
    }

    @NonNull
    public static sq a(@NonNull View view) {
        int i2 = R.id.myInputPwdListItem_delete;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.myInputPwdListItem_delete);
        if (imageView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.myInputPwdListItem_tv);
            if (textView != null) {
                return new sq(relativeLayout, imageView, relativeLayout, textView);
            }
            i2 = R.id.myInputPwdListItem_tv;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static sq c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static sq d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.item_inputviewlist, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24931a;
    }
}
