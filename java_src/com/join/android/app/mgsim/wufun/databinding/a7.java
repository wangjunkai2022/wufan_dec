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
/* compiled from: CloudMainBinding.java */
/* loaded from: classes3.dex */
public final class a7 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f18029a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f18030b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f18031c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f18032d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f18033e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f18034f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f18035g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RelativeLayout f18036h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f18037i;

    private a7(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView3) {
        this.f18029a = linearLayout;
        this.f18030b = imageView;
        this.f18031c = imageView2;
        this.f18032d = textView;
        this.f18033e = linearLayout2;
        this.f18034f = linearLayout3;
        this.f18035g = textView2;
        this.f18036h = relativeLayout;
        this.f18037i = textView3;
    }

    @NonNull
    public static a7 a(@NonNull View view) {
        int i2 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.backImage);
        if (imageView != null) {
            i2 = R.id.backups;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.backups);
            if (imageView2 != null) {
                i2 = R.id.cloudRom;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cloudRom);
                if (textView != null) {
                    i2 = R.id.lay_1;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lay_1);
                    if (linearLayout != null) {
                        i2 = R.id.lay_2;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.lay_2);
                        if (linearLayout2 != null) {
                            i2 = R.id.localRom;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.localRom);
                            if (textView2 != null) {
                                i2 = R.id.relativeLayout;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relativeLayout);
                                if (relativeLayout != null) {
                                    i2 = R.id.titleText;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                                    if (textView3 != null) {
                                        return new a7((LinearLayout) view, imageView, imageView2, textView, linearLayout, linearLayout2, textView2, relativeLayout, textView3);
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
    public static a7 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a7 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.cloud_main, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f18029a;
    }
}
