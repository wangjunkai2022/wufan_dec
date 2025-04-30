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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: LayoutMygameEditH5ItemBinding.java */
/* loaded from: classes3.dex */
public final class yt implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f27040a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f27041b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f27042c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f27043d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f27044e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f27045f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f27046g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f27047h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f27048i;

    private yt(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull ImageView imageView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ImageView imageView2, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull ImageView imageView3, @NonNull LinearLayout linearLayout3) {
        this.f27040a = linearLayout;
        this.f27041b = textView;
        this.f27042c = imageView;
        this.f27043d = simpleDraweeView;
        this.f27044e = imageView2;
        this.f27045f = linearLayout2;
        this.f27046g = textView2;
        this.f27047h = imageView3;
        this.f27048i = linearLayout3;
    }

    @NonNull
    public static yt a(@NonNull View view) {
        int i2 = R.id.appInfo;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appInfo);
        if (textView != null) {
            i2 = R.id.giftPackageSwitch;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.giftPackageSwitch);
            if (imageView != null) {
                i2 = R.id.img;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img);
                if (simpleDraweeView != null) {
                    i2 = R.id.isSelector;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.isSelector);
                    if (imageView2 != null) {
                        i2 = R.id.linearLayoutApp;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.linearLayoutApp);
                        if (linearLayout != null) {
                            i2 = R.id.name;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.name);
                            if (textView2 != null) {
                                i2 = R.id.notOpen;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.notOpen);
                                if (imageView3 != null) {
                                    i2 = R.id.status;
                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.status);
                                    if (linearLayout2 != null) {
                                        return new yt((LinearLayout) view, textView, imageView, simpleDraweeView, imageView2, linearLayout, textView2, imageView3, linearLayout2);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static yt c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static yt d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_mygame_edit_h5_item, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f27040a;
    }
}
