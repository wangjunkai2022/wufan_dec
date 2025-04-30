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
/* compiled from: HandshankKeyTitleIncludeBinding.java */
/* loaded from: classes3.dex */
public final class qn implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24030a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f24031b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f24032c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f24033d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f24034e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f24035f;

    private qn(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull Button button2, @NonNull RelativeLayout relativeLayout, @NonNull TextView textView) {
        this.f24030a = linearLayout;
        this.f24031b = imageView;
        this.f24032c = button;
        this.f24033d = button2;
        this.f24034e = relativeLayout;
        this.f24035f = textView;
    }

    @NonNull
    public static qn a(@NonNull View view) {
        int i2 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.backImage);
        if (imageView != null) {
            i2 = R.id.errButn;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.errButn);
            if (button != null) {
                i2 = R.id.okButn;
                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.okButn);
                if (button2 != null) {
                    i2 = R.id.relativeLayout;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.relativeLayout);
                    if (relativeLayout != null) {
                        i2 = R.id.titleText;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.titleText);
                        if (textView != null) {
                            return new qn((LinearLayout) view, imageView, button, button2, relativeLayout, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static qn c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qn d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.handshank_key_title_include, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24030a;
    }
}
