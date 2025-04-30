package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
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
/* compiled from: WufungameInstallappfirstDialogBinding.java */
/* loaded from: classes3.dex */
public final class qe0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23971a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f23972b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CheckBox f23973c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f23974d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23975e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23976f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SimpleDraweeView f23977g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final SimpleDraweeView f23978h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final LinearLayout f23979i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f23980j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final LinearLayout f23981k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f23982l;

    private qe0(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull CheckBox checkBox, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull SimpleDraweeView simpleDraweeView, @NonNull SimpleDraweeView simpleDraweeView2, @NonNull LinearLayout linearLayout, @NonNull TextView textView4, @NonNull LinearLayout linearLayout2, @NonNull TextView textView5) {
        this.f23971a = relativeLayout;
        this.f23972b = textView;
        this.f23973c = checkBox;
        this.f23974d = imageView;
        this.f23975e = textView2;
        this.f23976f = textView3;
        this.f23977g = simpleDraweeView;
        this.f23978h = simpleDraweeView2;
        this.f23979i = linearLayout;
        this.f23980j = textView4;
        this.f23981k = linearLayout2;
        this.f23982l = textView5;
    }

    @NonNull
    public static qe0 a(@NonNull View view) {
        int i2 = R.id.appshow;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.appshow);
        if (textView != null) {
            i2 = R.id.checkbox;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.checkbox);
            if (checkBox != null) {
                i2 = R.id.close;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
                if (imageView != null) {
                    i2 = R.id.gameName;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.gameName);
                    if (textView2 != null) {
                        i2 = R.id.goH5;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.goH5);
                        if (textView3 != null) {
                            i2 = R.id.icon;
                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.icon);
                            if (simpleDraweeView != null) {
                                i2 = R.id.img;
                                SimpleDraweeView simpleDraweeView2 = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.img);
                                if (simpleDraweeView2 != null) {
                                    i2 = R.id.main;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.main);
                                    if (linearLayout != null) {
                                        i2 = R.id.message;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.message);
                                        if (textView4 != null) {
                                            i2 = R.id.moreSelecter;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.moreSelecter);
                                            if (linearLayout2 != null) {
                                                i2 = R.id.startButn;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.startButn);
                                                if (textView5 != null) {
                                                    return new qe0((RelativeLayout) view, textView, checkBox, imageView, textView2, textView3, simpleDraweeView, simpleDraweeView2, linearLayout, textView4, linearLayout2, textView5);
                                                }
                                            }
                                        }
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
    public static qe0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static qe0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.wufungame_installappfirst_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23971a;
    }
}
