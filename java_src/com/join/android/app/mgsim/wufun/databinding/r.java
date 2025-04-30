package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: ActivityDeveloperBinding.java */
/* loaded from: classes3.dex */
public final class r implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ScrollView f24115a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f24116b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f24117c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f24118d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Button f24119e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final Button f24120f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final Button f24121g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final Button f24122h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final Button f24123i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final Button f24124j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final Button f24125k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final Button f24126l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final Button f24127m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final EditText f24128n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final Button f24129o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final Button f24130p;
    @NonNull

    /* renamed from: q  reason: collision with root package name */
    public final Button f24131q;
    @NonNull

    /* renamed from: r  reason: collision with root package name */
    public final Button f24132r;
    @NonNull

    /* renamed from: s  reason: collision with root package name */
    public final TextView f24133s;

    private r(@NonNull ScrollView scrollView, @NonNull Button button, @NonNull Button button2, @NonNull Button button3, @NonNull Button button4, @NonNull Button button5, @NonNull Button button6, @NonNull Button button7, @NonNull Button button8, @NonNull Button button9, @NonNull Button button10, @NonNull Button button11, @NonNull Button button12, @NonNull EditText editText, @NonNull Button button13, @NonNull Button button14, @NonNull Button button15, @NonNull Button button16, @NonNull TextView textView) {
        this.f24115a = scrollView;
        this.f24116b = button;
        this.f24117c = button2;
        this.f24118d = button3;
        this.f24119e = button4;
        this.f24120f = button5;
        this.f24121g = button6;
        this.f24122h = button7;
        this.f24123i = button8;
        this.f24124j = button9;
        this.f24125k = button10;
        this.f24126l = button11;
        this.f24127m = button12;
        this.f24128n = editText;
        this.f24129o = button13;
        this.f24130p = button14;
        this.f24131q = button15;
        this.f24132r = button16;
        this.f24133s = textView;
    }

    @NonNull
    public static r a(@NonNull View view) {
        int i2 = R.id.btRegin;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btRegin);
        if (button != null) {
            i2 = R.id.btn_delete_file;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_delete_file);
            if (button2 != null) {
                i2 = R.id.btn_download_finish;
                Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.btn_download_finish);
                if (button3 != null) {
                    i2 = R.id.btnFCLoad;
                    Button button4 = (Button) ViewBindings.findChildViewById(view, R.id.btnFCLoad);
                    if (button4 != null) {
                        i2 = R.id.btnFCShow;
                        Button button5 = (Button) ViewBindings.findChildViewById(view, R.id.btnFCShow);
                        if (button5 != null) {
                            i2 = R.id.btn_install_a;
                            Button button6 = (Button) ViewBindings.findChildViewById(view, R.id.btn_install_a);
                            if (button6 != null) {
                                i2 = R.id.btn_install_b;
                                Button button7 = (Button) ViewBindings.findChildViewById(view, R.id.btn_install_b);
                                if (button7 != null) {
                                    i2 = R.id.btn_notify;
                                    Button button8 = (Button) ViewBindings.findChildViewById(view, R.id.btn_notify);
                                    if (button8 != null) {
                                        i2 = R.id.btnRewardLoad;
                                        Button button9 = (Button) ViewBindings.findChildViewById(view, R.id.btnRewardLoad);
                                        if (button9 != null) {
                                            i2 = R.id.btnRewardShow;
                                            Button button10 = (Button) ViewBindings.findChildViewById(view, R.id.btnRewardShow);
                                            if (button10 != null) {
                                                i2 = R.id.btnTTTools;
                                                Button button11 = (Button) ViewBindings.findChildViewById(view, R.id.btnTTTools);
                                                if (button11 != null) {
                                                    i2 = R.id.btnVideo;
                                                    Button button12 = (Button) ViewBindings.findChildViewById(view, R.id.btnVideo);
                                                    if (button12 != null) {
                                                        i2 = R.id.et_apk_path;
                                                        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.et_apk_path);
                                                        if (editText != null) {
                                                            i2 = R.id.install;
                                                            Button button13 = (Button) ViewBindings.findChildViewById(view, R.id.install);
                                                            if (button13 != null) {
                                                                i2 = R.id.launch;
                                                                Button button14 = (Button) ViewBindings.findChildViewById(view, R.id.launch);
                                                                if (button14 != null) {
                                                                    i2 = R.id.mustpaly;
                                                                    Button button15 = (Button) ViewBindings.findChildViewById(view, R.id.mustpaly);
                                                                    if (button15 != null) {
                                                                        i2 = R.id.start_app;
                                                                        Button button16 = (Button) ViewBindings.findChildViewById(view, R.id.start_app);
                                                                        if (button16 != null) {
                                                                            i2 = R.id.tv_match;
                                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_match);
                                                                            if (textView != null) {
                                                                                return new r((ScrollView) view, button, button2, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12, editText, button13, button14, button15, button16, textView);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static r c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static r d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.activity_developer, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ScrollView getRoot() {
        return this.f24115a;
    }
}
