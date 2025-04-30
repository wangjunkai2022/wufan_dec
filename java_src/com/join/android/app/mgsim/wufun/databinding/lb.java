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
/* compiled from: DialogFightEnteringroomFailedBinding.java */
/* loaded from: classes3.dex */
public final class lb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22088a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22089b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f22090c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f22091d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f22092e;

    private lb(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull Button button, @NonNull TextView textView2) {
        this.f22088a = relativeLayout;
        this.f22089b = imageView;
        this.f22090c = textView;
        this.f22091d = button;
        this.f22092e = textView2;
    }

    @NonNull
    public static lb a(@NonNull View view) {
        int i2 = R.id.cancel;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (imageView != null) {
            i2 = R.id.info;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.info);
            if (textView != null) {
                i2 = R.id.reJoin;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.reJoin);
                if (button != null) {
                    i2 = R.id.title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                    if (textView2 != null) {
                        return new lb((RelativeLayout) view, imageView, textView, button, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static lb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static lb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_fight_enteringroom_failed, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22088a;
    }
}
