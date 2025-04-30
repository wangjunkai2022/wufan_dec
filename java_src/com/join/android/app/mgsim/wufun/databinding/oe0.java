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
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: WufungameFirstDownpermissDialogBinding.java */
/* loaded from: classes3.dex */
public final class oe0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23249a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f23250b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f23251c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SimpleDraweeView f23252d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f23253e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RelativeLayout f23254f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f23255g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f23256h;

    private oe0(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f23249a = relativeLayout;
        this.f23250b = imageView;
        this.f23251c = textView;
        this.f23252d = simpleDraweeView;
        this.f23253e = linearLayout;
        this.f23254f = relativeLayout2;
        this.f23255g = textView2;
        this.f23256h = textView3;
    }

    @NonNull
    public static oe0 a(@NonNull View view) {
        int i2 = R.id.close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
        if (imageView != null) {
            i2 = R.id.gameName;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gameName);
            if (textView != null) {
                i2 = R.id.img;
                SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img);
                if (simpleDraweeView != null) {
                    i2 = R.id.main;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
                    if (linearLayout != null) {
                        RelativeLayout relativeLayout = (RelativeLayout) view;
                        i2 = R.id.settingInfo;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.settingInfo);
                        if (textView2 != null) {
                            i2 = R.id.startButn;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.startButn);
                            if (textView3 != null) {
                                return new oe0(relativeLayout, imageView, textView, simpleDraweeView, linearLayout, relativeLayout, textView2, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static oe0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static oe0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.wufungame_first_downpermiss_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23249a;
    }
}
