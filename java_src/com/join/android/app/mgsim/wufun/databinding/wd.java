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
/* compiled from: DownloadChoiceItemBinding.java */
/* loaded from: classes3.dex */
public final class wd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26159a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f26160b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f26161c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f26162d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26163e;

    private wd(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView2) {
        this.f26159a = relativeLayout;
        this.f26160b = textView;
        this.f26161c = imageView;
        this.f26162d = relativeLayout2;
        this.f26163e = textView2;
    }

    @NonNull
    public static wd a(@NonNull View view) {
        int i2 = R.id.downUrlName;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.downUrlName);
        if (textView != null) {
            i2 = R.id.imageView;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.imageView);
            if (imageView != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i2 = R.id.textView;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                if (textView2 != null) {
                    return new wd(relativeLayout, textView, imageView, relativeLayout, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static wd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.download_choice_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26159a;
    }
}
