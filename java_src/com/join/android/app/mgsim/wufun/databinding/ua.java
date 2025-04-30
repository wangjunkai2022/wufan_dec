package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogCloudNoticeVipBinding.java */
/* loaded from: classes3.dex */
public final class ua implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25468a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25469b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CheckBox f25470c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f25471d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f25472e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25473f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25474g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25475h;

    private ua(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull CheckBox checkBox, @NonNull ImageView imageView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f25468a = relativeLayout;
        this.f25469b = textView;
        this.f25470c = checkBox;
        this.f25471d = imageView;
        this.f25472e = textView2;
        this.f25473f = textView3;
        this.f25474g = textView4;
        this.f25475h = textView5;
    }

    @NonNull
    public static ua a(@NonNull View view) {
        int i2 = R.id.cancle;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancle);
        if (textView != null) {
            i2 = R.id.checkBox;
            CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.checkBox);
            if (checkBox != null) {
                i2 = R.id.close;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
                if (imageView != null) {
                    i2 = R.id.content;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.content);
                    if (textView2 != null) {
                        i2 = R.id.ok;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.ok);
                        if (textView3 != null) {
                            i2 = R.id.title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                            if (textView4 != null) {
                                i2 = R.id.tv_vip;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_vip);
                                if (textView5 != null) {
                                    return new ua((RelativeLayout) view, textView, checkBox, imageView, textView2, textView3, textView4, textView5);
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
    public static ua c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ua d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_cloud_notice_vip, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25468a;
    }
}
