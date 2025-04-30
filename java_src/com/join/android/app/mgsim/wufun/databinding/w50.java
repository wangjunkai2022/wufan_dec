package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: NoneLayoutIncludeBinding.java */
/* loaded from: classes3.dex */
public final class w50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f26060a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f26061b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f26062c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f26063d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f26064e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f26065f;

    private w50(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull ImageView imageView2, @NonNull TextView textView2) {
        this.f26060a = linearLayout;
        this.f26061b = linearLayout2;
        this.f26062c = imageView;
        this.f26063d = textView;
        this.f26064e = imageView2;
        this.f26065f = textView2;
    }

    @NonNull
    public static w50 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.lodingBackImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.lodingBackImage);
        if (imageView != null) {
            i2 = R.id.noneMessage;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.noneMessage);
            if (textView != null) {
                i2 = R.id.noneReloadImage;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.noneReloadImage);
                if (imageView2 != null) {
                    i2 = R.id.setAll;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.setAll);
                    if (textView2 != null) {
                        return new w50(linearLayout, linearLayout, imageView, textView, imageView2, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static w50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.none_layout_include, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f26060a;
    }
}
