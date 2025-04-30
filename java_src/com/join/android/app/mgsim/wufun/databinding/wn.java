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
/* compiled from: HandshankTitleIncludeBinding.java */
/* loaded from: classes3.dex */
public final class wn implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26224a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f26225b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f26226c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26227d;

    private wn(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull TextView textView) {
        this.f26224a = relativeLayout;
        this.f26225b = imageView;
        this.f26226c = button;
        this.f26227d = textView;
    }

    @NonNull
    public static wn a(@NonNull View view) {
        int i2 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.backImage);
        if (imageView != null) {
            i2 = R.id.rightButn;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.rightButn);
            if (button != null) {
                i2 = R.id.titleText;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                if (textView != null) {
                    return new wn((RelativeLayout) view, imageView, button, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static wn c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static wn d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.handshank_title_include, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26224a;
    }
}
