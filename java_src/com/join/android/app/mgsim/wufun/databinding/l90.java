package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: QqDialogLayoutBinding.java */
/* loaded from: classes3.dex */
public final class l90 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f22064a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f22065b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f22066c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f22067d;

    private l90(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull SimpleDraweeView simpleDraweeView) {
        this.f22064a = linearLayout;
        this.f22065b = imageView;
        this.f22066c = button;
        this.f22067d = simpleDraweeView;
    }

    @NonNull
    public static l90 a(@NonNull View view) {
        int i2 = R.id.closed;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.closed);
        if (imageView != null) {
            i2 = R.id.dialog_button_ok;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_button_ok);
            if (button != null) {
                i2 = R.id.images;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.images);
                if (simpleDraweeView != null) {
                    return new l90((LinearLayout) view, imageView, button, simpleDraweeView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static l90 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l90 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.qq_dialog_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f22064a;
    }
}
