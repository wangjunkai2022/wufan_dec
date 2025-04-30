package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: DialogForumBinding.java */
/* loaded from: classes3.dex */
public final class rb implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24323a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f24324b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f24325c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24326d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f24327e;

    private rb(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f24323a = linearLayout;
        this.f24324b = button;
        this.f24325c = button2;
        this.f24326d = textView;
        this.f24327e = textView2;
    }

    @NonNull
    public static rb a(@NonNull View view) {
        int i2 = R.id.negative_btn;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.negative_btn);
        if (button != null) {
            i2 = R.id.positive_btn;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.positive_btn);
            if (button2 != null) {
                i2 = R.id.tip_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tip_content);
                if (textView != null) {
                    i2 = R.id.tip_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tip_title);
                    if (textView2 != null) {
                        return new rb((LinearLayout) view, button, button2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static rb c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static rb d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.dialog_forum, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24323a;
    }
}
