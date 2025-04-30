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
/* compiled from: DialogAddShortcutResultViewBinding.java */
/* loaded from: classes3.dex */
public final class ka implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21778a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f21779b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f21780c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f21781d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21782e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21783f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f21784g;

    private ka(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f21778a = relativeLayout;
        this.f21779b = imageView;
        this.f21780c = relativeLayout2;
        this.f21781d = imageView2;
        this.f21782e = textView;
        this.f21783f = textView2;
        this.f21784g = textView3;
    }

    @NonNull
    public static ka a(@NonNull View view) {
        int i2 = R.id.iv1;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv1);
        if (imageView != null) {
            i2 = R.id.rl1;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl1);
            if (relativeLayout != null) {
                i2 = R.id.shortcutCloseIv;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.shortcutCloseIv);
                if (imageView2 != null) {
                    i2 = R.id.shortcutCreateTv;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.shortcutCreateTv);
                    if (textView != null) {
                        i2 = R.id.tv1;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv1);
                        if (textView2 != null) {
                            i2 = R.id.tv2;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv2);
                            if (textView3 != null) {
                                return new ka((RelativeLayout) view, imageView, relativeLayout, imageView2, textView, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ka c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ka d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_add_shortcut_result_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21778a;
    }
}
