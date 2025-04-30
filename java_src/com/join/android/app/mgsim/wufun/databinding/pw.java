package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;
/* compiled from: MediacontrollerBinding.java */
/* loaded from: classes3.dex */
public final class pw implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f23746a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageButton f23747b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageButton f23748c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final SeekBar f23749d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f23750e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f23751f;

    private pw(@NonNull LinearLayout linearLayout, @NonNull ImageButton imageButton, @NonNull ImageButton imageButton2, @NonNull SeekBar seekBar, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f23746a = linearLayout;
        this.f23747b = imageButton;
        this.f23748c = imageButton2;
        this.f23749d = seekBar;
        this.f23750e = textView;
        this.f23751f = textView2;
    }

    @NonNull
    public static pw a(@NonNull View view) {
        int i2 = R.id.mediacontroller_full_screen;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.mediacontroller_full_screen);
        if (imageButton != null) {
            i2 = R.id.mediacontroller_play_pause;
            ImageButton imageButton2 = (ImageButton) ViewBindings.findChildViewById(view, R.id.mediacontroller_play_pause);
            if (imageButton2 != null) {
                i2 = R.id.mediacontroller_seekbar;
                SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(view, R.id.mediacontroller_seekbar);
                if (seekBar != null) {
                    i2 = R.id.mediacontroller_time_current;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.mediacontroller_time_current);
                    if (textView != null) {
                        i2 = R.id.mediacontroller_time_total;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.mediacontroller_time_total);
                        if (textView2 != null) {
                            return new pw((LinearLayout) view, imageButton, imageButton2, seekBar, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
    }

    @NonNull
    public static pw c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static pw d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z3) {
        View inflate = layoutInflater.inflate(R.layout.mediacontroller, viewGroup, false);
        if (z3) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f23746a;
    }
}
