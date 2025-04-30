package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: FavoriteDialogBinding.java */
/* loaded from: classes3.dex */
public final class ve implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f25828a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f25829b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f25830c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f25831d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final CheckBox f25832e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f25833f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f25834g;

    private ve(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull Button button, @NonNull CheckBox checkBox, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f25828a = relativeLayout;
        this.f25829b = textView;
        this.f25830c = textView2;
        this.f25831d = button;
        this.f25832e = checkBox;
        this.f25833f = textView3;
        this.f25834g = textView4;
    }

    @NonNull
    public static ve a(@NonNull View view) {
        int i2 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.content);
        if (textView != null) {
            i2 = R.id.content1;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.content1);
            if (textView2 != null) {
                i2 = R.id.ok;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.ok);
                if (button != null) {
                    i2 = R.id.opt;
                    CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.opt);
                    if (checkBox != null) {
                        i2 = R.id.sub_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.sub_title);
                        if (textView3 != null) {
                            i2 = R.id.title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                            if (textView4 != null) {
                                return new ve((RelativeLayout) view, textView, textView2, button, checkBox, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ve c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ve d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.favorite_dialog, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f25828a;
    }
}
