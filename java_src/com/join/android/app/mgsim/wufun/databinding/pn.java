package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: HandshankKeySetTitleIncludeBinding.java */
/* loaded from: classes3.dex */
public final class pn implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23700a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23701b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f23702c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f23703d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f23704e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23705f;

    private pn(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull RelativeLayout relativeLayout, @NonNull Button button2, @NonNull TextView textView) {
        this.f23700a = linearLayout;
        this.f23701b = imageView;
        this.f23702c = button;
        this.f23703d = relativeLayout;
        this.f23704e = button2;
        this.f23705f = textView;
    }

    @NonNull
    public static pn a(@NonNull View view) {
        int i2 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.backImage);
        if (imageView != null) {
            i2 = R.id.okButn;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.okButn);
            if (button != null) {
                i2 = R.id.relativeLayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relativeLayout);
                if (relativeLayout != null) {
                    i2 = R.id.resetButn;
                    Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.resetButn);
                    if (button2 != null) {
                        i2 = R.id.titleText;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                        if (textView != null) {
                            return new pn((LinearLayout) view, imageView, button, relativeLayout, button2, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static pn c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pn d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.handshank_key_set_title_include, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23700a;
    }
}
