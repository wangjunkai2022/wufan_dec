package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.input.InputView_Num;
/* compiled from: LayoutInputBinding.java */
/* loaded from: classes3.dex */
public final class pt implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f23732a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final InputView_Num f23733b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final GridView f23734c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final LinearLayout f23735d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RelativeLayout f23736e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23737f;

    private pt(@NonNull RelativeLayout relativeLayout, @NonNull InputView_Num inputView_Num, @NonNull GridView gridView, @NonNull LinearLayout linearLayout, @NonNull RelativeLayout relativeLayout2, @NonNull TextView textView) {
        this.f23732a = relativeLayout;
        this.f23733b = inputView_Num;
        this.f23734c = gridView;
        this.f23735d = linearLayout;
        this.f23736e = relativeLayout2;
        this.f23737f = textView;
    }

    @NonNull
    public static pt a(@NonNull View view) {
        int i2 = R.id.MyPwdInput_inputpwd;
        InputView_Num inputView_Num = (InputView_Num) ViewBindings.findChildViewById(view, R.id.MyPwdInput_inputpwd);
        if (inputView_Num != null) {
            i2 = R.id.MyPwdInput_list;
            GridView gridView = (GridView) ViewBindings.findChildViewById(view, R.id.MyPwdInput_list);
            if (gridView != null) {
                i2 = R.id.iv_close;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.iv_close);
                if (linearLayout != null) {
                    i2 = R.id.top;
                    RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, R.id.top);
                    if (relativeLayout != null) {
                        i2 = R.id.tv_title;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                        if (textView != null) {
                            return new pt((RelativeLayout) view, inputView_Num, gridView, linearLayout, relativeLayout, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static pt c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pt d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.layout_input, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f23732a;
    }
}
