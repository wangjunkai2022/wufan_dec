package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: PopLableListSortBinding.java */
/* loaded from: classes3.dex */
public final class n80 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f22788a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RadioButton f22789b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RadioButton f22790c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final RadioButton f22791d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final RadioGroup f22792e;

    private n80(@NonNull RelativeLayout relativeLayout, @NonNull RadioButton radioButton, @NonNull RadioButton radioButton2, @NonNull RadioButton radioButton3, @NonNull RadioGroup radioGroup) {
        this.f22788a = relativeLayout;
        this.f22789b = radioButton;
        this.f22790c = radioButton2;
        this.f22791d = radioButton3;
        this.f22792e = radioGroup;
    }

    @NonNull
    public static n80 a(@NonNull View view) {
        int i2 = R.id.radioButton_hot;
        RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, R.id.radioButton_hot);
        if (radioButton != null) {
            i2 = R.id.radioButton_mostReply;
            RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, R.id.radioButton_mostReply);
            if (radioButton2 != null) {
                i2 = R.id.radioButton_new;
                RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(view, R.id.radioButton_new);
                if (radioButton3 != null) {
                    i2 = R.id.rgSort;
                    RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, R.id.rgSort);
                    if (radioGroup != null) {
                        return new n80((RelativeLayout) view, radioButton, radioButton2, radioButton3, radioGroup);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static n80 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n80 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.pop_lable_list_sort, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f22788a;
    }
}
