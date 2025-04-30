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
/* compiled from: IncludeChatAddBinding.java */
/* loaded from: classes3.dex */
public final class no implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22948a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f22949b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f22950c;

    private no(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull ImageView imageView) {
        this.f22948a = relativeLayout;
        this.f22949b = textView;
        this.f22950c = imageView;
    }

    @NonNull
    public static no a(@NonNull View view) {
        int i2 = R.id.footer_tip;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.footer_tip);
        if (textView != null) {
            i2 = R.id.image_add;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.image_add);
            if (imageView != null) {
                return new no((RelativeLayout) view, textView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static no c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static no d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.include_chat_add, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22948a;
    }
}
