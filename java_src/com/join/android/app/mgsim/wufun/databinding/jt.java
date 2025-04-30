package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LayoutEmuPluginDialogBinding.java */
/* loaded from: classes3.dex */
public final class jt implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f21544a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f21545b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21546c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21547d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f21548e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21549f;

    private jt(@NonNull ConstraintLayout constraintLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f21544a = constraintLayout;
        this.f21545b = imageView;
        this.f21546c = textView;
        this.f21547d = textView2;
        this.f21548e = textView3;
        this.f21549f = textView4;
    }

    @NonNull
    public static jt a(@NonNull View view) {
        int i2 = R.id.icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon);
        if (imageView != null) {
            i2 = R.id.skip;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.skip);
            if (textView != null) {
                i2 = R.id.subTitle;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.subTitle);
                if (textView2 != null) {
                    i2 = R.id.submit;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.submit);
                    if (textView3 != null) {
                        i2 = R.id.title;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                        if (textView4 != null) {
                            return new jt((ConstraintLayout) view, imageView, textView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static jt c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jt d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_emu_plugin_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f21544a;
    }
}
