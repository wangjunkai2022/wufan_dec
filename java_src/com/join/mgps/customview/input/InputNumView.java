package com.join.mgps.customview.input;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.input.InputView_Num;
/* loaded from: classes3.dex */
public class InputNumView extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    private Context f46923a;

    /* renamed from: b  reason: collision with root package name */
    private View f46924b;

    /* renamed from: c  reason: collision with root package name */
    private GridView f46925c;

    /* renamed from: d  reason: collision with root package name */
    private InputView_Num f46926d;

    /* renamed from: e  reason: collision with root package name */
    private d f46927e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f46928f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (InputNumView.this.f46927e != null) {
                InputNumView.this.f46927e.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements AdapterView.OnItemClickListener {
        b() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j4) {
            if (i2 == 11) {
                InputNumView.this.f46926d.c();
            } else if (i2 == 10) {
                InputNumView.this.f46926d.a("0", true);
            } else if (i2 == 9) {
            } else {
                InputNumView.this.f46926d.a(String.valueOf(i2 + 1), true);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements InputView_Num.a {
        c() {
        }

        @Override // com.join.mgps.customview.input.InputView_Num.a
        public void a(String str) {
            if (InputNumView.this.f46927e != null) {
                InputNumView.this.f46927e.b(str);
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface d {
        void a();

        void b(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class e extends BaseAdapter {
        e() {
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return 12;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i2) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i2) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(int i2, View view, ViewGroup viewGroup) {
            View inflate = LayoutInflater.from(InputNumView.this.f46923a).inflate(R.layout.item_inputviewlist, viewGroup, false);
            TextView textView = (TextView) inflate.findViewById(R.id.myInputPwdListItem_tv);
            if (i2 == 9) {
                textView.setVisibility(8);
                inflate.findViewById(R.id.myInputPwdListItem_delete).setVisibility(8);
            } else if (i2 == 10) {
                inflate.findViewById(R.id.myInputPwdListItem_delete).setVisibility(8);
                textView.setVisibility(0);
                textView.setText("0");
            } else if (i2 == 11) {
                inflate.findViewById(R.id.myInputPwdListItem_delete).setVisibility(0);
                textView.setVisibility(8);
            } else {
                textView.setText((i2 + 1) + "");
                inflate.findViewById(R.id.myInputPwdListItem_delete).setVisibility(8);
                textView.setVisibility(0);
            }
            return inflate;
        }
    }

    public InputNumView(Context context) {
        super(context);
        e();
    }

    private void f() {
        this.f46924b.setOnClickListener(new a());
        this.f46925c.setOnItemClickListener(new b());
        this.f46926d.setOnFinishListener(new c());
    }

    public void d() {
        this.f46926d.b();
    }

    public void e() {
        Context context = getContext();
        this.f46923a = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.layout_input, this);
        this.f46928f = (TextView) inflate.findViewById(R.id.tv_title);
        this.f46924b = inflate.findViewById(R.id.iv_close);
        this.f46925c = (GridView) inflate.findViewById(R.id.MyPwdInput_list);
        this.f46926d = (InputView_Num) findViewById(R.id.MyPwdInput_inputpwd);
        this.f46925c.setAdapter((ListAdapter) new e());
        f();
    }

    public void setCurrentPwd(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            this.f46926d.a(String.valueOf(str.charAt(i2)), false);
        }
    }

    public void setListener(d dVar) {
        this.f46927e = dVar;
    }

    public void setNumLengthAndIsPwd(int i2, boolean z3) {
        this.f46926d.setNumLengthAndIsPwd(i2, z3);
    }

    public void setTitle(String str) {
        this.f46928f.setText(str);
    }

    public InputNumView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        e();
    }

    public InputNumView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        e();
    }
}
