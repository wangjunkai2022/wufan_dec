package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CloudRomItemBinding.java */
/* loaded from: classes3.dex */
public final class c7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f18792a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f18793b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f18794c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18795d;

    private c7(@NonNull FrameLayout frameLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f18792a = frameLayout;
        this.f18793b = simpleDraweeView;
        this.f18794c = textView;
        this.f18795d = textView2;
    }

    @NonNull
    public static c7 a(@NonNull View view) {
        int i2 = R.id.img;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img);
        if (simpleDraweeView != null) {
            i2 = R.id.name;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.name);
            if (textView != null) {
                i2 = R.id.time;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.time);
                if (textView2 != null) {
                    return new c7((FrameLayout) view, simpleDraweeView, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static c7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static c7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.cloud_rom_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f18792a;
    }
}
