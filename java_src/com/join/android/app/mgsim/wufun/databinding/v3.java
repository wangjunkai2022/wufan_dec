package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: BindPhoneActivityNewBinding.java */
/* loaded from: classes3.dex */
public final class v3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25699a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f25700b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f25701c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f25702d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f25703e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25704f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25705g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f25706h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final EditText f25707i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f25708j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final EditText f25709k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final EditText f25710l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f25711m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final LinearLayout f25712n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final SimpleDraweeView f25713o;

    private v3(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull EditText editText, @NonNull TextView textView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull EditText editText2, @NonNull TextView textView5, @NonNull EditText editText3, @NonNull EditText editText4, @NonNull TextView textView6, @NonNull LinearLayout linearLayout3, @NonNull SimpleDraweeView simpleDraweeView) {
        this.f25699a = relativeLayout;
        this.f25700b = linearLayout;
        this.f25701c = editText;
        this.f25702d = textView;
        this.f25703e = linearLayout2;
        this.f25704f = textView2;
        this.f25705g = textView3;
        this.f25706h = textView4;
        this.f25707i = editText2;
        this.f25708j = textView5;
        this.f25709k = editText3;
        this.f25710l = editText4;
        this.f25711m = textView6;
        this.f25712n = linearLayout3;
        this.f25713o = simpleDraweeView;
    }

    @NonNull
    public static v3 a(@NonNull View view) {
        int i2 = R.id.changeNickNameLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.changeNickNameLayout);
        if (linearLayout != null) {
            i2 = R.id.code;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.code);
            if (editText != null) {
                i2 = R.id.codeTime;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.codeTime);
                if (textView != null) {
                    i2 = R.id.editPhone;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.editPhone);
                    if (linearLayout2 != null) {
                        i2 = R.id.hintPhone;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.hintPhone);
                        if (textView2 != null) {
                            i2 = R.id.nextStep;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.nextStep);
                            if (textView3 != null) {
                                i2 = R.id.nextStep2;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.nextStep2);
                                if (textView4 != null) {
                                    i2 = R.id.nickName;
                                    EditText editText2 = (EditText) ViewBindings.findChildViewById(view, R.id.nickName);
                                    if (editText2 != null) {
                                        i2 = R.id.nickNameBution;
                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.nickNameBution);
                                        if (textView5 != null) {
                                            i2 = R.id.password;
                                            EditText editText3 = (EditText) ViewBindings.findChildViewById(view, R.id.password);
                                            if (editText3 != null) {
                                                i2 = R.id.phoneNumber;
                                                EditText editText4 = (EditText) ViewBindings.findChildViewById(view, R.id.phoneNumber);
                                                if (editText4 != null) {
                                                    i2 = R.id.phoneShow;
                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.phoneShow);
                                                    if (textView6 != null) {
                                                        i2 = R.id.setPassLayout;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.setPassLayout);
                                                        if (linearLayout3 != null) {
                                                            i2 = R.id.userIcon;
                                                            SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.userIcon);
                                                            if (simpleDraweeView != null) {
                                                                return new v3((RelativeLayout) view, linearLayout, editText, textView, linearLayout2, textView2, textView3, textView4, editText2, textView5, editText3, editText4, textView6, linearLayout3, simpleDraweeView);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static v3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.bind_phone_activity_new, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25699a;
    }
}
