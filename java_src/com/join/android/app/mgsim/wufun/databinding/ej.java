package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: GameInformationCommentTopBinding.java */
/* loaded from: classes3.dex */
public final class ej implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f19806a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f19807b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f19808c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f19809d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f19810e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f19811f;

    private ej(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f19806a = linearLayout;
        this.f19807b = textView;
        this.f19808c = textView2;
        this.f19809d = textView3;
        this.f19810e = textView4;
        this.f19811f = textView5;
    }

    @NonNull
    public static ej a(@NonNull View view) {
        int i2 = R.id.comment_number;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.comment_number);
        if (textView != null) {
            i2 = R.id.more;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.more);
            if (textView2 != null) {
                i2 = R.id.textView3;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.textView3);
                if (textView3 != null) {
                    i2 = R.id.textView9;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.textView9);
                    if (textView4 != null) {
                        i2 = R.id.xx;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.xx);
                        if (textView5 != null) {
                            return new ej((LinearLayout) view, textView, textView2, textView3, textView4, textView5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static ej c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static ej d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.game_information_comment_top, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f19806a;
    }
}
