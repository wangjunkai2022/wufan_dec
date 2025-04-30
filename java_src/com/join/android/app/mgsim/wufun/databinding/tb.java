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
/* compiled from: DialogGameRoomSeatBinding.java */
/* loaded from: classes3.dex */
public final class tb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25156a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f25157b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f25158c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f25159d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f25160e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25161f;

    private tb(@NonNull RelativeLayout relativeLayout, @NonNull Button button, @NonNull Button button2, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView) {
        this.f25156a = relativeLayout;
        this.f25157b = button;
        this.f25158c = button2;
        this.f25159d = linearLayout;
        this.f25160e = relativeLayout2;
        this.f25161f = textView;
    }

    @NonNull
    public static tb a(@NonNull View view) {
        int i2 = R.id.btn_position;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_position);
        if (button != null) {
            i2 = R.id.btn_report;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_report);
            if (button2 != null) {
                i2 = R.id.iv_close;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_close);
                if (linearLayout != null) {
                    i2 = R.id.rl_main;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.rl_main);
                    if (relativeLayout != null) {
                        i2 = R.id.tv_position;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_position);
                        if (textView != null) {
                            return new tb((RelativeLayout) view, button, button2, linearLayout, relativeLayout, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static tb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static tb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_game_room_seat, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25156a;
    }
}
