package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: HandshankItemBinding.java */
/* loaded from: classes3.dex */
public final class on implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f23316a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23317b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f23318c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f23319d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f23320e;

    private on(@NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull ImageView imageView2) {
        this.f23316a = frameLayout;
        this.f23317b = textView;
        this.f23318c = imageView;
        this.f23319d = textView2;
        this.f23320e = imageView2;
    }

    @NonNull
    public static on a(@NonNull View view) {
        int i2 = R.id.dsc;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dsc);
        if (textView != null) {
            i2 = R.id.handshank_blue_arrow_img;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.handshank_blue_arrow_img);
            if (imageView != null) {
                i2 = R.id.handshank_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.handshank_name);
                if (textView2 != null) {
                    i2 = R.id.img;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.img);
                    if (imageView2 != null) {
                        return new on((FrameLayout) view, textView, imageView, textView2, imageView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static on c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static on d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.handshank_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f23316a;
    }
}
