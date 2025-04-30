package com.join.mgps.recycler;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewStub;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
/* loaded from: classes4.dex */
public class LoadingFooter extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    protected State f51472a;

    /* renamed from: b  reason: collision with root package name */
    private View f51473b;

    /* renamed from: c  reason: collision with root package name */
    private View f51474c;

    /* renamed from: d  reason: collision with root package name */
    private View f51475d;

    /* renamed from: e  reason: collision with root package name */
    private ProgressBar f51476e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f51477f;

    /* loaded from: classes4.dex */
    public enum State {
        Normal,
        TheEnd,
        Loading,
        NetWorkError
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51478a;

        static {
            int[] iArr = new int[State.values().length];
            f51478a = iArr;
            try {
                iArr[State.Normal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51478a[State.Loading.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f51478a[State.TheEnd.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f51478a[State.NetWorkError.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public LoadingFooter(Context context) {
        super(context);
        this.f51472a = State.Normal;
        a(context);
    }

    public void a(Context context) {
        RelativeLayout.inflate(context, R.layout.sample_common_list_footer, this);
        setOnClickListener(null);
        setState(State.Normal, true);
    }

    public State getState() {
        return this.f51472a;
    }

    public void setState(State state) {
        setState(state, true);
    }

    public void setState(State state, boolean z3) {
        if (this.f51472a == state) {
            return;
        }
        this.f51472a = state;
        int i2 = a.f51478a[state.ordinal()];
        if (i2 == 1) {
            setOnClickListener(null);
            View view = this.f51473b;
            if (view != null) {
                view.setVisibility(8);
            }
            View view2 = this.f51475d;
            if (view2 != null) {
                view2.setVisibility(8);
            }
            View view3 = this.f51474c;
            if (view3 == null) {
                this.f51474c = ((ViewStub) findViewById(R.id.normal_viewstub)).inflate();
            } else {
                view3.setVisibility(0);
            }
        } else if (i2 != 2) {
            if (i2 != 3) {
                return;
            }
            setOnClickListener(null);
            View view4 = this.f51473b;
            if (view4 != null) {
                view4.setVisibility(8);
            }
            View view5 = this.f51474c;
            if (view5 != null) {
                view5.setVisibility(8);
            }
            View view6 = this.f51475d;
            if (view6 == null) {
                this.f51475d = ((ViewStub) findViewById(R.id.end_viewstub)).inflate();
            } else {
                view6.setVisibility(0);
            }
            this.f51475d.setVisibility(z3 ? 0 : 8);
        } else {
            setOnClickListener(null);
            View view7 = this.f51475d;
            if (view7 != null) {
                view7.setVisibility(8);
            }
            View view8 = this.f51474c;
            if (view8 != null) {
                view8.setVisibility(8);
            }
            View view9 = this.f51473b;
            if (view9 == null) {
                View inflate = ((ViewStub) findViewById(R.id.loading_viewstub)).inflate();
                this.f51473b = inflate;
                this.f51476e = (ProgressBar) inflate.findViewById(R.id.loading_progress);
            } else {
                view9.setVisibility(0);
            }
            this.f51473b.setVisibility(z3 ? 0 : 8);
            this.f51476e.setVisibility(0);
        }
    }

    public LoadingFooter(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f51472a = State.Normal;
        a(context);
    }

    public LoadingFooter(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f51472a = State.Normal;
        a(context);
    }
}
