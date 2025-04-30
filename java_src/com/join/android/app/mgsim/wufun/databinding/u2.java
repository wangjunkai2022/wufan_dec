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
/* compiled from: AlbumItemBinding.java */
/* loaded from: classes3.dex */
public final class u2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25370a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25371b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f25372c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25373d;

    private u2(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2) {
        this.f25370a = relativeLayout;
        this.f25371b = textView;
        this.f25372c = imageView;
        this.f25373d = textView2;
    }

    @NonNull
    public static u2 a(@NonNull View view) {
        int i2 = R.id.album_count;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.album_count);
        if (textView != null) {
            i2 = R.id.album_cover;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.album_cover);
            if (imageView != null) {
                i2 = R.id.album_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.album_name);
                if (textView2 != null) {
                    return new u2((RelativeLayout) view, textView, imageView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static u2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.album_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25370a;
    }
}
