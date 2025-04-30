package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogLocalgameTwoViewBinding.java */
/* loaded from: classes3.dex */
public final class fc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f20089a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f20090b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f20091c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20092d;

    private fc(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f20089a = relativeLayout;
        this.f20090b = button;
        this.f20091c = textView;
        this.f20092d = textView2;
    }

    @NonNull
    public static fc a(@NonNull View view) {
        int i2 = R.id.localGameTwoBt;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.localGameTwoBt);
        if (button != null) {
            i2 = R.id.localGameTwoContentTv;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.localGameTwoContentTv);
            if (textView != null) {
                i2 = R.id.localGameTwoTitleTv;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.localGameTwoTitleTv);
                if (textView2 != null) {
                    return new fc((RelativeLayout) view, button, textView, textView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static fc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static fc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_localgame_two_view, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f20089a;
    }
}
