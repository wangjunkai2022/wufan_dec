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
/* compiled from: DialogRoomSrvPlayModeTipBinding.java */
/* loaded from: classes3.dex */
public final class bd implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f18492a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f18493b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f18494c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RelativeLayout f18495d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f18496e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f18497f;

    private bd(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull TextView textView) {
        this.f18492a = relativeLayout;
        this.f18493b = button;
        this.f18494c = linearLayout;
        this.f18495d = relativeLayout2;
        this.f18496e = relativeLayout3;
        this.f18497f = textView;
    }

    @NonNull
    public static bd a(@NonNull View view) {
        int i2 = R.id.btnOk;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btnOk);
        if (button != null) {
            i2 = R.id.iv_close;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_close);
            if (linearLayout != null) {
                i2 = R.id.rl_main;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_main);
                if (relativeLayout != null) {
                    i2 = R.id.top;
                    RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.top);
                    if (relativeLayout2 != null) {
                        i2 = R.id.tv_top;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_top);
                        if (textView != null) {
                            return new bd((RelativeLayout) view, button, linearLayout, relativeLayout, relativeLayout2, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static bd c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static bd d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_room_srv_play_mode_tip, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f18492a;
    }
}
