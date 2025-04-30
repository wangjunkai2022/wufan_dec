package com.join.mgps.customview.input;

import android.content.Context;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.b0;
import com.join.mgps.Util.d2;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class InputView_Num extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f46934a;

    /* renamed from: b  reason: collision with root package name */
    private a f46935b;

    /* renamed from: c  reason: collision with root package name */
    private List<String> f46936c;

    /* renamed from: d  reason: collision with root package name */
    private List<EditText> f46937d;

    /* renamed from: e  reason: collision with root package name */
    private int f46938e;

    /* loaded from: classes3.dex */
    public interface a {
        void a(String str);
    }

    public InputView_Num(Context context) {
        super(context);
        this.f46934a = 5;
        this.f46936c = new ArrayList();
        this.f46937d = new ArrayList();
        this.f46938e = -1;
    }

    private void d(TextView textView, String str) {
        if (d2.h(str)) {
            textView.setBackgroundResource(R.drawable.bg_input_rect);
        } else {
            textView.setBackgroundResource(R.drawable.bg_input_rect_hasinput);
        }
        textView.setText(str);
    }

    private String getNums() {
        StringBuilder sb = new StringBuilder();
        for (String str : this.f46936c) {
            sb.append(str);
        }
        return sb.toString();
    }

    public void a(String str, boolean z3) {
        int i2 = this.f46938e + 1;
        this.f46938e = i2;
        if (i2 >= this.f46934a) {
            this.f46938e = i2 - 1;
            return;
        }
        this.f46936c.add(str);
        d(this.f46937d.get(this.f46938e), str);
        if (this.f46938e == this.f46934a - 1 && z3) {
            this.f46938e = 0;
            this.f46935b.a(getNums());
        }
    }

    public void b() {
        List<EditText> list = this.f46937d;
        if (list != null) {
            list.clear();
            this.f46937d = null;
        }
        List<String> list2 = this.f46936c;
        if (list2 != null) {
            list2.clear();
            this.f46936c = null;
        }
        this.f46938e = 0;
    }

    public void c() {
        List<String> list;
        int i2 = this.f46938e;
        if (i2 < 0 || (list = this.f46936c) == null) {
            return;
        }
        if (i2 < list.size()) {
            this.f46936c.remove(this.f46938e);
            d(this.f46937d.get(this.f46938e), "");
            int i4 = this.f46938e - 1;
            this.f46938e = i4;
            if (i4 < 0) {
                this.f46935b.a("");
                this.f46938e = 0;
                return;
            }
            return;
        }
        int i5 = this.f46938e - 1;
        this.f46938e = i5;
        if (i5 < 0) {
            this.f46935b.a("");
            this.f46938e = 0;
        }
    }

    public void setNumLengthAndIsPwd(int i2, boolean z3) {
        int a4 = b0.a(getContext(), 9.0f);
        this.f46934a = i2;
        this.f46937d.clear();
        this.f46936c.clear();
        for (int i4 = 0; i4 < this.f46934a; i4++) {
            View inflate = LayoutInflater.from(getContext()).inflate(R.layout.layout_rect_box, (ViewGroup) null);
            EditText editText = (EditText) inflate.findViewById(R.id.et_value);
            if (z3) {
                editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
            }
            this.f46937d.add(editText);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            if (i4 != this.f46934a - 1) {
                layoutParams.rightMargin = a4;
            }
            addView(inflate, layoutParams);
        }
    }

    public void setOnFinishListener(a aVar) {
        this.f46935b = aVar;
    }

    public InputView_Num(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f46934a = 5;
        this.f46936c = new ArrayList();
        this.f46937d = new ArrayList();
        this.f46938e = -1;
    }
}
