package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityKeyMapHeadIncludeBinding.java */
/* loaded from: classes3.dex */
public final class u0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25350a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25351b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f25352c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f25353d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f25354e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25355f;

    private u0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull RelativeLayout relativeLayout2, @NonNull Button button2, @NonNull TextView textView) {
        this.f25350a = relativeLayout;
        this.f25351b = imageView;
        this.f25352c = button;
        this.f25353d = relativeLayout2;
        this.f25354e = button2;
        this.f25355f = textView;
    }

    @NonNull
    public static u0 a(@NonNull View view) {
        int i2 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.backImage);
        if (imageView != null) {
            i2 = R.id.okButn;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.okButn);
            if (button != null) {
                RelativeLayout relativeLayout = (RelativeLayout) view;
                i2 = R.id.resetButn;
                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.resetButn);
                if (button2 != null) {
                    i2 = R.id.titleText;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                    if (textView != null) {
                        return new u0(relativeLayout, imageView, button, relativeLayout, button2, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static u0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_key_map_head_include, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25350a;
    }
}
