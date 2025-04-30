package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ImageDetailPagerPopupwindowBinding.java */
/* loaded from: classes3.dex */
public final class jo implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f21517a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f21518b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21519c;

    private jo(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f21517a = linearLayout;
        this.f21518b = textView;
        this.f21519c = textView2;
    }

    @NonNull
    public static jo a(@NonNull View view) {
        int i2 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i2 = R.id.saveImage;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.saveImage);
            if (textView2 != null) {
                return new jo((LinearLayout) view, textView, textView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static jo c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static jo d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.image_detail_pager_popupwindow, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f21517a;
    }
}
