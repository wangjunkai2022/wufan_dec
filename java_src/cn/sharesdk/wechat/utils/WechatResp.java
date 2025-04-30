package cn.sharesdk.wechat.utils;

import android.os.Bundle;
/* loaded from: classes2.dex */
public abstract class WechatResp {

    /* renamed from: g  reason: collision with root package name */
    public int f9082g;

    /* renamed from: h  reason: collision with root package name */
    public String f9083h;

    /* renamed from: i  reason: collision with root package name */
    public String f9084i;

    /* renamed from: j  reason: collision with root package name */
    public String f9085j;

    /* loaded from: classes2.dex */
    public interface ErrCode {
        public static final int ERR_AUTH_DENIED = -4;
        public static final int ERR_BAN = -6;
        public static final int ERR_COMM = -1;
        public static final int ERR_OK = 0;
        public static final int ERR_SENT_FAILED = -3;
        public static final int ERR_UNSUPPORT = -5;
        public static final int ERR_USER_CANCEL = -2;
    }

    public abstract int a();

    public void a(Bundle bundle) {
        this.f9082g = bundle.getInt("_wxapi_baseresp_errcode");
        this.f9083h = bundle.getString("_wxapi_baseresp_errstr");
        this.f9084i = bundle.getString("_wxapi_baseresp_transaction");
        this.f9085j = bundle.getString("_wxapi_baseresp_openId");
    }

    public void b(Bundle bundle) {
        bundle.putInt("_wxapi_command_type", a());
        bundle.putInt("_wxapi_baseresp_errcode", this.f9082g);
        bundle.putString("_wxapi_baseresp_errstr", this.f9083h);
        bundle.putString("_wxapi_baseresp_transaction", this.f9084i);
        bundle.putString("_wxapi_baseresp_openId", this.f9085j);
    }
}
