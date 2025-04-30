package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogKickoutRoomInfoBinding.java */
/* loaded from: classes3.dex */
public final class bc implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18477a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f18478b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f18479c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f18480d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f18481e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f18482f;

    private bc(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull Button button2, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f18477a = relativeLayout;
        this.f18478b = button;
        this.f18479c = button2;
        this.f18480d = linearLayout;
        this.f18481e = textView;
        this.f18482f = textView2;
    }

    @NonNull
    public static bc a(@NonNull View view) {
        int i2 = R.id.btn_cancel;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_cancel);
        if (button != null) {
            i2 = R.id.btn_ok;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_ok);
            if (button2 != null) {
                i2 = R.id.iv_close;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_close);
                if (linearLayout != null) {
                    i2 = R.id.tv_title;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                    if (textView != null) {
                        i2 = R.id.tv_top;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_top);
                        if (textView2 != null) {
                            return new bc((RelativeLayout) view, button, button2, linearLayout, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static bc c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bc d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_kickout_room_info, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18477a;
    }
}
