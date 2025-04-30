package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: CodesBoxHeaderBinding.java */
/* loaded from: classes3.dex */
public final class f7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f20044a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f20045b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f20046c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f20047d;

    private f7(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView) {
        this.f20044a = linearLayout;
        this.f20045b = imageView;
        this.f20046c = relativeLayout;
        this.f20047d = textView;
    }

    @NonNull
    public static f7 a(@NonNull View view) {
        int i2 = R.id.emptyGiftPackage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.emptyGiftPackage);
        if (imageView != null) {
            i2 = R.id.emptyGiftPackageLayout;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.emptyGiftPackageLayout);
            if (relativeLayout != null) {
                i2 = R.id.textview_gift_get;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.textview_gift_get);
                if (textView != null) {
                    return new f7((LinearLayout) view, imageView, relativeLayout, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static f7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.codes_box_header, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f20044a;
    }
}
