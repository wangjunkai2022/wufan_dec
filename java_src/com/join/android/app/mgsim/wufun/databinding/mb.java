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
/* compiled from: DialogFightMismatchBinding.java */
/* loaded from: classes3.dex */
public final class mb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22453a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22454b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f22455c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f22456d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22457e;

    private mb(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f22453a = relativeLayout;
        this.f22454b = imageView;
        this.f22455c = button;
        this.f22456d = textView;
        this.f22457e = textView2;
    }

    @NonNull
    public static mb a(@NonNull View view) {
        int i2 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i2 = R.id.cancel;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.cancel);
            if (button != null) {
                i2 = R.id.info;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.info);
                if (textView != null) {
                    i2 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView2 != null) {
                        return new mb((RelativeLayout) view, imageView, button, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static mb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static mb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_fight_mismatch, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22453a;
    }
}
