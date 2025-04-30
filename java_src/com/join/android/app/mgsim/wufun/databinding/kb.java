package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogFightDisconnectBinding.java */
/* loaded from: classes3.dex */
public final class kb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f21788a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f21789b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f21790c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f21791d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f21792e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f21793f;

    private kb(@NonNull RelativeLayout relativeLayout, @NonNull ImageView imageView, @NonNull Button button, @NonNull TextView textView, @NonNull Button button2, @NonNull TextView textView2) {
        this.f21788a = relativeLayout;
        this.f21789b = imageView;
        this.f21790c = button;
        this.f21791d = textView;
        this.f21792e = button2;
        this.f21793f = textView2;
    }

    @NonNull
    public static kb a(@NonNull View view) {
        int i2 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.back);
        if (imageView != null) {
            i2 = R.id.cancel;
            Button button = (Button) ViewBindings.findChildViewById(view, R.id.cancel);
            if (button != null) {
                i2 = R.id.info;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.info);
                if (textView != null) {
                    i2 = R.id.research;
                    Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.research);
                    if (button2 != null) {
                        i2 = R.id.title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                        if (textView2 != null) {
                            return new kb((RelativeLayout) view, imageView, button, textView, button2, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static kb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static kb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_fight_disconnect, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f21788a;
    }
}
