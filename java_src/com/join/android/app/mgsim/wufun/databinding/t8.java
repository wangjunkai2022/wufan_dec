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
/* compiled from: CropTitleLayoutBinding.java */
/* loaded from: classes3.dex */
public final class t8 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25125a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f25126b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f25127c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f25128d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25129e;

    private t8(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull RelativeLayout relativeLayout2, @NonNull Button button, @NonNull TextView textView) {
        this.f25125a = relativeLayout;
        this.f25126b = imageView;
        this.f25127c = relativeLayout2;
        this.f25128d = button;
        this.f25129e = textView;
    }

    @NonNull
    public static t8 a(@NonNull View view) {
        int i2 = R.id.back_image;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back_image);
        if (imageView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            i2 = R.id.searchImage;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.searchImage);
            if (button != null) {
                i2 = R.id.title_textview;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title_textview);
                if (textView != null) {
                    return new t8(relativeLayout, imageView, relativeLayout, button, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static t8 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static t8 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.crop_title_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25125a;
    }
}
