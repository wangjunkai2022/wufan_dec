package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogArenaRoomTypeBinding.java */
/* loaded from: classes3.dex */
public final class ra implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f24289a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f24290b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f24291c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f24292d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f24293e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RadioButton f24294f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RadioButton f24295g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final RelativeLayout f24296h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final RadioButton f24297i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final RadioButton f24298j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final RelativeLayout f24299k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final RadioButton f24300l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final RadioButton f24301m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f24302n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f24303o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f24304p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final TextView f24305q;

    private ra(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull RadioButton radioButton, @NonNull RadioButton radioButton2, @NonNull RelativeLayout relativeLayout2, @NonNull RadioButton radioButton3, @NonNull RadioButton radioButton4, @NonNull RelativeLayout relativeLayout3, @NonNull RadioButton radioButton5, @NonNull RadioButton radioButton6, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f24289a = relativeLayout;
        this.f24290b = textView;
        this.f24291c = textView2;
        this.f24292d = imageView;
        this.f24293e = linearLayout;
        this.f24294f = radioButton;
        this.f24295g = radioButton2;
        this.f24296h = relativeLayout2;
        this.f24297i = radioButton3;
        this.f24298j = radioButton4;
        this.f24299k = relativeLayout3;
        this.f24300l = radioButton5;
        this.f24301m = radioButton6;
        this.f24302n = textView3;
        this.f24303o = textView4;
        this.f24304p = textView5;
        this.f24305q = textView6;
    }

    @NonNull
    public static ra a(@NonNull View view) {
        int i2 = R.id.copyTv;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.copyTv);
        if (textView != null) {
            i2 = R.id.finishButn;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.finishButn);
            if (textView2 != null) {
                i2 = R.id.iv_arrow_net_archive;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_arrow_net_archive);
                if (imageView != null) {
                    i2 = R.id.iv_close;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_close);
                    if (linearLayout != null) {
                        i2 = R.id.iv_switch_onlook;
                        RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, R.id.iv_switch_onlook);
                        if (radioButton != null) {
                            i2 = R.id.iv_switch_onlook_n;
                            RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, R.id.iv_switch_onlook_n);
                            if (radioButton2 != null) {
                                i2 = R.id.rl_net_archive;
                                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_net_archive);
                                if (relativeLayout != null) {
                                    i2 = R.id.rl_setNo_pwd;
                                    RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rl_setNo_pwd);
                                    if (radioButton3 != null) {
                                        i2 = R.id.rl_set_pwd;
                                        RadioButton radioButton4 = (RadioButton) ViewBindings.findChildViewById(view, R.id.rl_set_pwd);
                                        if (radioButton4 != null) {
                                            i2 = R.id.rl_top;
                                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_top);
                                            if (relativeLayout2 != null) {
                                                i2 = R.id.roomTypeAllLL;
                                                RadioButton radioButton5 = (RadioButton) ViewBindings.findChildViewById(view, R.id.roomTypeAllLL);
                                                if (radioButton5 != null) {
                                                    i2 = R.id.roomTypePhoneLL;
                                                    RadioButton radioButton6 = (RadioButton) ViewBindings.findChildViewById(view, R.id.roomTypePhoneLL);
                                                    if (radioButton6 != null) {
                                                        i2 = R.id.roomxingzhiT;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.roomxingzhiT);
                                                        if (textView3 != null) {
                                                            i2 = R.id.tv_archive_name;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_archive_name);
                                                            if (textView4 != null) {
                                                                i2 = R.id.tv_roomNum;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_roomNum);
                                                                if (textView5 != null) {
                                                                    i2 = R.id.tv_title;
                                                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                                                    if (textView6 != null) {
                                                                        return new ra((RelativeLayout) view, textView, textView2, imageView, linearLayout, radioButton, radioButton2, relativeLayout, radioButton3, radioButton4, relativeLayout2, radioButton5, radioButton6, textView3, textView4, textView5, textView6);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ra c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ra d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_arena_room_type, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f24289a;
    }
}
