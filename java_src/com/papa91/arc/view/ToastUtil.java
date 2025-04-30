package com.papa91.arc.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import org.ppsspp.ppsspp.R;
/* loaded from: classes4.dex */
public class ToastUtil {
    private Toast toast;
    private LinearLayout toastView;

    public ToastUtil() {
    }

    public ToastUtil Indefinite(Context context, CharSequence charSequence, int i2) {
        LinearLayout linearLayout;
        if (this.toast != null && ((linearLayout = this.toastView) == null || linearLayout.getChildCount() <= 1)) {
            this.toast.setText(charSequence);
            this.toast.setDuration(i2);
        } else {
            this.toast = Toast.makeText(context, charSequence, i2);
            this.toastView = null;
        }
        return this;
    }

    public ToastUtil Long(Context context, CharSequence charSequence) {
        LinearLayout linearLayout;
        if (this.toast != null && ((linearLayout = this.toastView) == null || linearLayout.getChildCount() <= 1)) {
            this.toast.setText(charSequence);
            this.toast.setDuration(1);
        } else {
            this.toast = Toast.makeText(context, charSequence, 1);
            this.toastView = null;
        }
        return this;
    }

    public ToastUtil Short(Context context, CharSequence charSequence) {
        LinearLayout linearLayout;
        if (this.toast != null && ((linearLayout = this.toastView) == null || linearLayout.getChildCount() <= 1)) {
            this.toast.setText(charSequence);
            this.toast.setDuration(0);
        } else {
            this.toast = Toast.makeText(context, charSequence, 0);
            this.toastView = null;
        }
        return this;
    }

    public ToastUtil addView(View view, int i2) {
        LinearLayout linearLayout = (LinearLayout) this.toast.getView();
        this.toastView = linearLayout;
        linearLayout.addView(view, i2);
        return this;
    }

    public Toast getToast() {
        return this.toast;
    }

    public ToastUtil setToastBackground(int i2, int i4) {
        View view = this.toast.getView();
        if (view != null) {
            TextView textView = (TextView) view.findViewById(16908299);
            textView.setBackgroundResource(i4);
            textView.setTextColor(i2);
        }
        return this;
    }

    public ToastUtil setToastColor(int i2, int i4) {
        View view = this.toast.getView();
        if (view != null) {
            TextView textView = (TextView) view.findViewById(16908299);
            textView.setBackgroundColor(i4);
            textView.setTextColor(i2);
        }
        return this;
    }

    public ToastUtil show() {
        this.toast.show();
        return this;
    }

    public ToastUtil(Context context, View view, int i2) {
        Toast toast = new Toast(context);
        this.toast = toast;
        toast.setView(view);
        this.toast.setDuration(i2);
    }

    public static void show(Context context, String str) {
        if (context == null) {
            return;
        }
        Toast toast = new Toast(context);
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.toast_style, (ViewGroup) null);
        ((TextView) inflate.findViewById(R.id.message)).setText(str);
        toast.setView(inflate);
        toast.setDuration(1);
        toast.show();
    }

    public ToastUtil Indefinite(Context context, int i2, int i4) {
        LinearLayout linearLayout;
        if (this.toast != null && ((linearLayout = this.toastView) == null || linearLayout.getChildCount() <= 1)) {
            this.toast.setText(i2);
            this.toast.setDuration(i4);
        } else {
            this.toast = Toast.makeText(context, i2, i4);
            this.toastView = null;
        }
        return this;
    }

    public ToastUtil Long(Context context, int i2) {
        LinearLayout linearLayout;
        if (this.toast != null && ((linearLayout = this.toastView) == null || linearLayout.getChildCount() <= 1)) {
            this.toast.setText(i2);
            this.toast.setDuration(1);
        } else {
            this.toast = Toast.makeText(context, i2, 1);
            this.toastView = null;
        }
        return this;
    }

    public ToastUtil Short(Context context, int i2) {
        LinearLayout linearLayout;
        if (this.toast != null && ((linearLayout = this.toastView) == null || linearLayout.getChildCount() <= 1)) {
            this.toast.setText(i2);
            this.toast.setDuration(0);
        } else {
            this.toast = Toast.makeText(context, i2, 0);
            this.toastView = null;
        }
        return this;
    }
}
