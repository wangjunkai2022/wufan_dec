package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.MyImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.dto.AccountBean;
/* loaded from: classes3.dex */
public class MyUserIconTitleLayout extends RelativeLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private TextView f45853a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f45854b;

    /* renamed from: c  reason: collision with root package name */
    private SimpleDraweeView f45855c;

    /* renamed from: d  reason: collision with root package name */
    private Context f45856d;

    /* renamed from: e  reason: collision with root package name */
    private VipView f45857e;

    /* renamed from: f  reason: collision with root package name */
    b f45858f;

    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountBean accountData = AccountUtil_.getInstance_(MyUserIconTitleLayout.this.f45856d).getAccountData();
            if (accountData == null) {
                MyUserIconTitleLayout.this.f45855c.setImageResource(R.drawable.unloginstatus);
                MyUserIconTitleLayout.this.f45853a.setVisibility(8);
                return;
            }
            MyImageLoader.s(MyUserIconTitleLayout.this.f45855c, accountData.getAvatarSrc());
            MyUserIconTitleLayout.this.f45857e.setVipData(accountData.getVip_level(), accountData.getSvip_level());
        }
    }

    /* loaded from: classes3.dex */
    public interface b {
        void a();
    }

    public MyUserIconTitleLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f45856d = context;
    }

    public void e() {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f45853a.setVisibility(8);
        if (AccountUtil_.getInstance_(getContext().getApplicationContext()).getToken() != null) {
            com.papa.sim.statistic.pref.b.j(this.f45856d).z(false);
            this.f45854b.setVisibility(8);
        } else {
            Toast.makeText(getContext(), getContext().getString(R.string.forum_user_not_login), 0).show();
        }
        this.f45858f.a();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f45853a = (TextView) findViewById(R.id.papa_user_round);
        this.f45854b = (TextView) findViewById(R.id.papa_user_is_in);
        this.f45855c = (SimpleDraweeView) findViewById(R.id.papa_user_icon);
        this.f45857e = (VipView) findViewById(R.id.papa_vip);
        setOnClickListener(this);
    }

    public void setMsgNumber(int i2) {
        if (i2 < 1) {
            this.f45853a.setVisibility(8);
            return;
        }
        if (i2 < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f45853a.getLayoutParams();
            layoutParams.width = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            this.f45853a.setLayoutParams(layoutParams);
            this.f45853a.setCompoundDrawables(null, null, null, null);
            this.f45853a.setBackgroundResource(R.drawable.mygame_big_round);
            this.f45853a.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.f45853a.getLayoutParams();
            layoutParams2.width = getResources().getDimensionPixelOffset(R.dimen.dp70);
            layoutParams2.height = getResources().getDimensionPixelOffset(R.dimen.round_large_size);
            layoutParams2.setMargins(0, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 4, 0);
            this.f45853a.setGravity(17);
            this.f45853a.setLayoutParams(layoutParams2);
            this.f45853a.setCompoundDrawables(null, null, null, null);
            this.f45853a.setBackgroundResource(R.drawable.message_round);
            this.f45853a.setPadding(1, 0, 2, 1);
        }
        TextView textView = this.f45853a;
        textView.setText(i2 + "");
        this.f45853a.setVisibility(0);
    }

    public void setUserIcon() {
        this.f45855c.post(new a());
    }

    public void setUserIconClickListener(b bVar) {
        this.f45858f = bVar;
    }
}
