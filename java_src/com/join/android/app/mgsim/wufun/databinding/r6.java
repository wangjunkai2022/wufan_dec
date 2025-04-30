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
/* compiled from: CloudBackupsDetialLayoutBinding.java */
/* loaded from: classes3.dex */
public final class r6 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f24238a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f24239b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f24240c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f24241d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f24242e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f24243f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f24244g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f24245h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f24246i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Button f24247j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final TextView f24248k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final TextView f24249l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f24250m;

    private r6(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull LinearLayout linearLayout2, @NonNull TextView textView, @NonNull LinearLayout linearLayout3, @NonNull TextView textView2, @NonNull LinearLayout linearLayout4, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull Button button2, @NonNull TextView textView5, @NonNull TextView textView6, @NonNull TextView textView7) {
        this.f24238a = linearLayout;
        this.f24239b = button;
        this.f24240c = linearLayout2;
        this.f24241d = textView;
        this.f24242e = linearLayout3;
        this.f24243f = textView2;
        this.f24244g = linearLayout4;
        this.f24245h = textView3;
        this.f24246i = textView4;
        this.f24247j = button2;
        this.f24248k = textView5;
        this.f24249l = textView6;
        this.f24250m = textView7;
    }

    @NonNull
    public static r6 a(@NonNull View view) {
        int i2 = R.id.deletbutn;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.deletbutn);
        if (button != null) {
            i2 = R.id.gameHostory;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.gameHostory);
            if (linearLayout != null) {
                i2 = R.id.gameHostoryNumber;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.gameHostoryNumber);
                if (textView != null) {
                    i2 = R.id.gameKeySet;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.gameKeySet);
                    if (linearLayout2 != null) {
                        i2 = R.id.gameKeySetNumber;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.gameKeySetNumber);
                        if (textView2 != null) {
                            i2 = R.id.gameList;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.gameList);
                            if (linearLayout3 != null) {
                                i2 = R.id.gamelistnumber;
                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.gamelistnumber);
                                if (textView3 != null) {
                                    i2 = R.id.phoneType;
                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.phoneType);
                                    if (textView4 != null) {
                                        i2 = R.id.recoder;
                                        Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.recoder);
                                        if (button2 != null) {
                                            i2 = R.id.textView;
                                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.textView);
                                            if (textView5 != null) {
                                                i2 = R.id.textView3;
                                                TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.textView3);
                                                if (textView6 != null) {
                                                    i2 = R.id.timeText;
                                                    TextView textView7 = (TextView) ViewBindings.findChildViewById(view, R.id.timeText);
                                                    if (textView7 != null) {
                                                        return new r6((LinearLayout) view, button, linearLayout, textView, linearLayout2, textView2, linearLayout3, textView3, textView4, button2, textView5, textView6, textView7);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static r6 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r6 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.cloud_backups_detial_layout, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f24238a;
    }
}
