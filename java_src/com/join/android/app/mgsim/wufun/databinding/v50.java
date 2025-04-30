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
/* compiled from: NoneLayoutInclude2Binding.java */
/* loaded from: classes3.dex */
public final class v50 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f25750a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25751b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25752c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f25753d;

    private v50(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull ImageView imageView) {
        this.f25750a = linearLayout;
        this.f25751b = linearLayout2;
        this.f25752c = textView;
        this.f25753d = imageView;
    }

    @NonNull
    public static v50 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i2 = R.id.noneMessage;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.noneMessage);
        if (textView != null) {
            i2 = R.id.noneReloadImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.noneReloadImage);
            if (imageView != null) {
                return new v50(linearLayout, linearLayout, textView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static v50 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v50 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.none_layout_include2, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f25750a;
    }
}
