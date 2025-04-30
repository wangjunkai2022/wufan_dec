package com.join.mgps.customview;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.IntentUtil;
/* loaded from: classes3.dex */
public class ForumLoadingView extends RelativeLayout {

    /* renamed from: k  reason: collision with root package name */
    public static final int f45515k = 1;

    /* renamed from: l  reason: collision with root package name */
    public static final int f45516l = 2;

    /* renamed from: m  reason: collision with root package name */
    public static final int f45517m = 4;

    /* renamed from: n  reason: collision with root package name */
    public static final int f45518n = 9;

    /* renamed from: o  reason: collision with root package name */
    public static final int f45519o = 10;

    /* renamed from: p  reason: collision with root package name */
    public static final int f45520p = 16;

    /* renamed from: a  reason: collision with root package name */
    private Context f45521a;

    /* renamed from: b  reason: collision with root package name */
    private View f45522b;

    /* renamed from: c  reason: collision with root package name */
    private View f45523c;

    /* renamed from: d  reason: collision with root package name */
    private ImageView f45524d;

    /* renamed from: e  reason: collision with root package name */
    private TextView f45525e;

    /* renamed from: f  reason: collision with root package name */
    private View f45526f;

    /* renamed from: g  reason: collision with root package name */
    private Button f45527g;

    /* renamed from: h  reason: collision with root package name */
    protected int f45528h;

    /* renamed from: i  reason: collision with root package name */
    private Handler f45529i;

    /* renamed from: j  reason: collision with root package name */
    private e f45530j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum HandleId {
        LOADING,
        LOADING_SUCCESS,
        LOADING_FAILED,
        SET_RELOADING_VISIBILITY,
        SET_FAILED_IMG_VISIBILITY,
        SET_FAILED_IMG_RES,
        SET_FAILED_RELOADING_RES,
        SET_FAILED_MSG
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goWirelessSettings(view.getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumLoadingView.this.f45530j != null) {
                ForumLoadingView.this.f45530j.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (ForumLoadingView.this.f45530j != null) {
                ForumLoadingView.this.f45530j.a(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class d extends Handler {
        d() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            try {
                int i2 = message.what;
                if (i2 == HandleId.LOADING.ordinal()) {
                    ForumLoadingView.this.n();
                } else if (i2 == HandleId.LOADING_FAILED.ordinal()) {
                    ForumLoadingView.this.o();
                } else if (i2 == HandleId.LOADING_SUCCESS.ordinal()) {
                    ForumLoadingView.this.p(true);
                } else if (i2 == HandleId.SET_FAILED_IMG_VISIBILITY.ordinal()) {
                    ForumLoadingView.this.setFailedImgVisibilityP(message.arg1);
                } else if (i2 == HandleId.SET_RELOADING_VISIBILITY.ordinal()) {
                    ForumLoadingView.this.setReloadingVisibilityP(message.arg1);
                } else if (i2 == HandleId.SET_FAILED_IMG_RES.ordinal()) {
                    ForumLoadingView.this.setFailedImgResP(message.arg1);
                } else if (i2 == HandleId.SET_FAILED_RELOADING_RES.ordinal()) {
                    ForumLoadingView.this.setFailedReloadingResP(message.arg1);
                } else if (i2 == HandleId.SET_FAILED_MSG.ordinal()) {
                    ForumLoadingView.this.setFailedMsgP((String) message.obj);
                }
                ForumLoadingView.this.invalidate();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
    }

    /* loaded from: classes3.dex */
    public static abstract class e {

        /* renamed from: a  reason: collision with root package name */
        ForumLoadingView f45535a;

        public e(ForumLoadingView forumLoadingView) {
            this.f45535a = forumLoadingView;
        }

        public void a(View view) {
            Context context = view.getContext();
            if (this.f45535a.getLoadingState() == 9) {
                IntentUtil.getInstance().goWirelessSettings(context);
            } else if (this.f45535a.getLoadingState() == 10) {
                com.join.mgps.Util.i0.E0(context);
            }
        }

        public void b() {
        }

        public void c(boolean z3) {
        }
    }

    public ForumLoadingView(Context context) {
        super(context);
        this.f45528h = 1;
        k(context);
    }

    private void k(Context context) {
        this.f45521a = context;
        View inflate = LayoutInflater.from(context).inflate(R.layout.loding_layout_include, (ViewGroup) null);
        this.f45522b = inflate.findViewById(R.id.loding_layout);
        View inflate2 = LayoutInflater.from(context).inflate(R.layout.failed_layout_include, (ViewGroup) null);
        this.f45523c = inflate2.findViewById(R.id.loding_faile);
        this.f45524d = (ImageView) inflate2.findViewById(R.id.relodingimag);
        this.f45525e = (TextView) inflate2.findViewById(R.id.failedMessage);
        this.f45526f = inflate2.findViewById(R.id.lodingBackImage);
        this.f45527g = (Button) inflate2.findViewById(R.id.setNetwork);
        addView(inflate);
        addView(inflate2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        inflate.setLayoutParams(layoutParams);
        inflate2.setLayoutParams(layoutParams);
        this.f45522b.setVisibility(8);
        this.f45523c.setVisibility(8);
        this.f45527g.setOnClickListener(new a());
        this.f45524d.setOnClickListener(new b());
        this.f45527g.setOnClickListener(new c());
        this.f45529i = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        this.f45522b.setVisibility(0);
        this.f45523c.setVisibility(8);
        p(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        this.f45522b.setVisibility(8);
        this.f45523c.setVisibility(0);
        p(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(boolean z3) {
        int i2 = !z3 ? 8 : 0;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            View childAt = getChildAt(i4);
            if (childAt != this.f45522b && childAt != this.f45523c) {
                childAt.setVisibility(i2);
            } else if (z3) {
                childAt.setVisibility(8);
            }
        }
        e eVar = this.f45530j;
        if (eVar != null) {
            eVar.c(z3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFailedImgResP(int i2) {
        if (i2 == 9) {
            return;
        }
        try {
            if (i2 == 10) {
                this.f45527g.setText("点击查看相关帖子");
            } else {
                this.f45527g.setText("");
                this.f45527g.setBackgroundResource(i2);
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFailedImgVisibilityP(int i2) {
        int i4 = i2 == 0 ? 0 : 8;
        this.f45526f.setVisibility(i4);
        this.f45527g.setVisibility(i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFailedMsgP(String str) {
        TextView textView = this.f45525e;
        if (textView != null) {
            textView.setText(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setFailedReloadingResP(int i2) {
        try {
            this.f45524d.setImageResource(i2);
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setReloadingVisibilityP(int i2) {
        this.f45524d.setVisibility(i2 != 8 ? 0 : 8);
    }

    public int getLoadingState() {
        return this.f45528h;
    }

    public void j(int i2) {
        setFailedImgVisibility(0);
        setReloadingVisibility(0);
        int i4 = this.f45528h;
        if (i4 == 2) {
            return;
        }
        if (i2 == 2) {
            this.f45528h = 2;
        } else if (i2 == 1) {
            this.f45528h = 1;
        } else if (i2 == 9) {
            this.f45528h = 9;
            setFailedMsg("网络连接失败，再试试吧~");
            setFailedImgRes(9);
        } else if (i2 == 10) {
            this.f45528h = 10;
            setReloadingVisibility(8);
            setFailedImgRes(10);
        } else {
            if ((i2 & 16) == 16) {
                this.f45528h = i2 | i4;
            } else {
                this.f45528h = i2 | i4;
            }
            setFailedMsg("加载失败，再试试吧~");
            setFailedImgVisibility(8);
        }
        int i5 = this.f45528h;
        char c4 = i5 == 1 ? (char) 1 : i5 == 2 ? (char) 2 : (char) 4;
        Message obtainMessage = this.f45529i.obtainMessage();
        if (c4 == 1) {
            obtainMessage.what = HandleId.LOADING.ordinal();
        } else if (c4 == 2) {
            obtainMessage.what = HandleId.LOADING_SUCCESS.ordinal();
        } else if (c4 == 4) {
            obtainMessage.what = HandleId.LOADING_FAILED.ordinal();
        }
        obtainMessage.sendToTarget();
    }

    public boolean l() {
        return this.f45528h == 2;
    }

    public void m() {
        if (this.f45528h != 1) {
            this.f45528h = 1;
        }
    }

    public void setFailedImgRes(int i2) {
        Message obtainMessage = this.f45529i.obtainMessage();
        obtainMessage.what = HandleId.SET_FAILED_IMG_RES.ordinal();
        obtainMessage.arg1 = i2;
        obtainMessage.sendToTarget();
    }

    public void setFailedImgVisibility(int i2) {
        Message obtainMessage = this.f45529i.obtainMessage();
        obtainMessage.what = HandleId.SET_FAILED_IMG_VISIBILITY.ordinal();
        obtainMessage.arg1 = i2;
        obtainMessage.sendToTarget();
    }

    public void setFailedMsg(String str) {
        Message obtainMessage = this.f45529i.obtainMessage();
        obtainMessage.what = HandleId.SET_FAILED_MSG.ordinal();
        obtainMessage.obj = str;
        obtainMessage.sendToTarget();
    }

    public void setFailedReloadingRes(int i2) {
        Message obtainMessage = this.f45529i.obtainMessage();
        obtainMessage.what = HandleId.SET_FAILED_RELOADING_RES.ordinal();
        obtainMessage.arg1 = i2;
        obtainMessage.sendToTarget();
    }

    public void setListener(e eVar) {
        this.f45530j = eVar;
    }

    public void setReloadingVisibility(int i2) {
        Message obtainMessage = this.f45529i.obtainMessage();
        obtainMessage.what = HandleId.SET_RELOADING_VISIBILITY.ordinal();
        obtainMessage.arg1 = i2;
        obtainMessage.sendToTarget();
    }

    public ForumLoadingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45528h = 1;
        k(context);
    }

    public ForumLoadingView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f45528h = 1;
        k(context);
    }
}
