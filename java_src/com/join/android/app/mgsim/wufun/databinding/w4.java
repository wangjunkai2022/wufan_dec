package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
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
/* compiled from: ChangeAccountNicknameLayoutBinding.java */
/* loaded from: classes3.dex */
public final class w4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f26045a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f26046b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f26047c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final EditText f26048d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f26049e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final SimpleDraweeView f26050f;

    private w4(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull EditText editText, @NonNull TextView textView, @NonNull SimpleDraweeView simpleDraweeView) {
        this.f26045a = relativeLayout;
        this.f26046b = linearLayout;
        this.f26047c = imageView;
        this.f26048d = editText;
        this.f26049e = textView;
        this.f26050f = simpleDraweeView;
    }

    @NonNull
    public static w4 a(@NonNull View view) {
        int i2 = R.id.changeNickNameLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.changeNickNameLayout);
        if (linearLayout != null) {
            i2 = R.id.close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.close);
            if (imageView != null) {
                i2 = R.id.nickName;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.nickName);
                if (editText != null) {
                    i2 = R.id.nickNameBution;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.nickNameBution);
                    if (textView != null) {
                        i2 = R.id.userIcon;
                        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.userIcon);
                        if (simpleDraweeView != null) {
                            return new w4((RelativeLayout) view, linearLayout, imageView, editText, textView, simpleDraweeView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static w4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.change_account_nickname_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f26045a;
    }
}
