package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: SharedGameBinding.java */
/* loaded from: classes3.dex */
public final class kb0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21794a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final SimpleDraweeView f21795b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f21796c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21797d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f21798e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21799f;

    private kb0(@NonNull RelativeLayout relativeLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull Button button, @NonNull TextView textView3) {
        this.f21794a = relativeLayout;
        this.f21795b = simpleDraweeView;
        this.f21796c = textView;
        this.f21797d = textView2;
        this.f21798e = button;
        this.f21799f = textView3;
    }

    @NonNull
    public static kb0 a(@NonNull View view) {
        int i2 = R.id.game_icon;
        SimpleDraweeView simpleDraweeView = (SimpleDraweeView) ViewBindings.findChildViewById(view, R.id.game_icon);
        if (simpleDraweeView != null) {
            i2 = R.id.game_info;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.game_info);
            if (textView != null) {
                i2 = R.id.game_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.game_name);
                if (textView2 != null) {
                    i2 = R.id.ok;
                    Button button = (Button) ViewBindings.findChildViewById(view, R.id.ok);
                    if (button != null) {
                        i2 = R.id.title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                        if (textView3 != null) {
                            return new kb0((RelativeLayout) view, simpleDraweeView, textView, textView2, button, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static kb0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static kb0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.shared_game, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21794a;
    }
}
