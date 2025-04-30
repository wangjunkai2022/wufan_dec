package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.DownloadViewStroke;
/* compiled from: ClassifyMainadLayoutBinding.java */
/* loaded from: classes3.dex */
public final class o6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23142a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f23143b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final DownloadViewStroke f23144c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f23145d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23146e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23147f;

    private o6(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull DownloadViewStroke downloadViewStroke, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f23142a = relativeLayout;
        this.f23143b = simpleDraweeView;
        this.f23144c = downloadViewStroke;
        this.f23145d = simpleDraweeView2;
        this.f23146e = textView;
        this.f23147f = textView2;
    }

    @NonNull
    public static o6 a(@NonNull View view) {
        int i2 = R.id.adImageView;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.adImageView);
        if (simpleDraweeView != null) {
            i2 = R.id.downView;
            DownloadViewStroke downloadViewStroke = (DownloadViewStroke) ViewBindings.findChildViewById(view, R.id.downView);
            if (downloadViewStroke != null) {
                i2 = R.id.gameIcon;
                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.gameIcon);
                if (simpleDraweeView2 != null) {
                    i2 = R.id.gameInfo;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gameInfo);
                    if (textView != null) {
                        i2 = R.id.gameName;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.gameName);
                        if (textView2 != null) {
                            return new o6((RelativeLayout) view, simpleDraweeView, downloadViewStroke, simpleDraweeView2, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static o6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static o6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.classify_mainad_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23142a;
    }
}
