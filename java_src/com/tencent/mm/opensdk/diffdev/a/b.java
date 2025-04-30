package com.tencent.mm.opensdk.diffdev.a;

import android.os.AsyncTask;
import android.os.Build;
import android.util.Base64;
import com.ss.android.download.api.constant.BaseConstants;
import com.tencent.mm.opensdk.diffdev.OAuthErrCode;
import com.tencent.mm.opensdk.diffdev.OAuthListener;
import com.tencent.mm.opensdk.utils.Log;
import org.json.JSONObject;
/* loaded from: classes4.dex */
public class b extends AsyncTask<Void, Void, a> {

    /* renamed from: a  reason: collision with root package name */
    private String f59883a;

    /* renamed from: b  reason: collision with root package name */
    private String f59884b;

    /* renamed from: c  reason: collision with root package name */
    private String f59885c;

    /* renamed from: d  reason: collision with root package name */
    private String f59886d;

    /* renamed from: e  reason: collision with root package name */
    private String f59887e;

    /* renamed from: f  reason: collision with root package name */
    private OAuthListener f59888f;

    /* renamed from: g  reason: collision with root package name */
    private c f59889g;

    /* loaded from: classes4.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public OAuthErrCode f59890a;

        /* renamed from: b  reason: collision with root package name */
        public String f59891b;

        /* renamed from: c  reason: collision with root package name */
        public String f59892c;

        /* renamed from: d  reason: collision with root package name */
        public String f59893d;

        /* renamed from: e  reason: collision with root package name */
        public byte[] f59894e;

        private a() {
        }

        public static a a(byte[] bArr) {
            OAuthErrCode oAuthErrCode;
            String format;
            a aVar = new a();
            if (bArr != null && bArr.length != 0) {
                try {
                } catch (Exception e4) {
                    format = String.format("parse fail, build String fail, ex = %s", e4.getMessage());
                }
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr, "utf-8"));
                    int i2 = jSONObject.getInt("errcode");
                    if (i2 != 0) {
                        Log.e("MicroMsg.SDK.GetQRCodeResult", String.format("resp errcode = %d", Integer.valueOf(i2)));
                        aVar.f59890a = OAuthErrCode.WechatAuth_Err_NormalErr;
                        jSONObject.optString("errmsg");
                        return aVar;
                    }
                    String string = jSONObject.getJSONObject("qrcode").getString("qrcodebase64");
                    if (string != null && string.length() != 0) {
                        byte[] decode = Base64.decode(string, 0);
                        if (decode != null && decode.length != 0) {
                            aVar.f59890a = OAuthErrCode.WechatAuth_Err_OK;
                            aVar.f59894e = decode;
                            aVar.f59891b = jSONObject.getString("uuid");
                            String string2 = jSONObject.getString("appname");
                            aVar.f59892c = string2;
                            Log.d("MicroMsg.SDK.GetQRCodeResult", String.format("parse succ, save in memory, uuid = %s, appname = %s, imgBufLength = %d", aVar.f59891b, string2, Integer.valueOf(aVar.f59894e.length)));
                            return aVar;
                        }
                        Log.e("MicroMsg.SDK.GetQRCodeResult", "parse fail, qrcodeBuf is null");
                        aVar.f59890a = OAuthErrCode.WechatAuth_Err_JsonDecodeErr;
                        return aVar;
                    }
                    Log.e("MicroMsg.SDK.GetQRCodeResult", "parse fail, qrcodeBase64 is null");
                    aVar.f59890a = OAuthErrCode.WechatAuth_Err_JsonDecodeErr;
                    return aVar;
                } catch (Exception e5) {
                    format = String.format("parse json fail, ex = %s", e5.getMessage());
                    Log.e("MicroMsg.SDK.GetQRCodeResult", format);
                    oAuthErrCode = OAuthErrCode.WechatAuth_Err_NormalErr;
                    aVar.f59890a = oAuthErrCode;
                    return aVar;
                }
            }
            Log.e("MicroMsg.SDK.GetQRCodeResult", "parse fail, buf is null");
            oAuthErrCode = OAuthErrCode.WechatAuth_Err_NetworkErr;
            aVar.f59890a = oAuthErrCode;
            return aVar;
        }
    }

    public b(String str, String str2, String str3, String str4, String str5, OAuthListener oAuthListener) {
        this.f59883a = str;
        this.f59884b = str2;
        this.f59885c = str3;
        this.f59886d = str4;
        this.f59887e = str5;
        this.f59888f = oAuthListener;
    }

    public boolean a() {
        Log.i("MicroMsg.SDK.GetQRCodeTask", "cancelTask");
        c cVar = this.f59889g;
        return cVar == null ? cancel(true) : cVar.cancel(true);
    }

    @Override // android.os.AsyncTask
    protected a doInBackground(Void[] voidArr) {
        Thread.currentThread().setName("OpenSdkGetQRCodeTask");
        Log.i("MicroMsg.SDK.GetQRCodeTask", "doInBackground");
        String format = String.format("https://open.weixin.qq.com/connect/sdk/qrconnect?appid=%s&noncestr=%s&timestamp=%s&scope=%s&signature=%s", this.f59883a, this.f59885c, this.f59886d, this.f59884b, this.f59887e);
        long currentTimeMillis = System.currentTimeMillis();
        byte[] a4 = com.tencent.mm.opensdk.channel.a.a.a(format, (int) BaseConstants.Time.MINUTE);
        Log.d("MicroMsg.SDK.GetQRCodeTask", String.format("doInBackground, url = %s, time consumed = %d(ms)", format, Long.valueOf(System.currentTimeMillis() - currentTimeMillis)));
        return a.a(a4);
    }

    @Override // android.os.AsyncTask
    protected void onPostExecute(a aVar) {
        a aVar2 = aVar;
        OAuthErrCode oAuthErrCode = aVar2.f59890a;
        if (oAuthErrCode == OAuthErrCode.WechatAuth_Err_OK) {
            Log.d("MicroMsg.SDK.GetQRCodeTask", "onPostExecute, get qrcode success imgBufSize = " + aVar2.f59894e.length);
            this.f59888f.onAuthGotQrcode(aVar2.f59893d, aVar2.f59894e);
            c cVar = new c(aVar2.f59891b, this.f59888f);
            this.f59889g = cVar;
            if (Build.VERSION.SDK_INT >= 11) {
                cVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                return;
            } else {
                cVar.execute(new Void[0]);
                return;
            }
        }
        Log.e("MicroMsg.SDK.GetQRCodeTask", String.format("onPostExecute, get qrcode fail, OAuthErrCode = %s", oAuthErrCode));
        this.f59888f.onAuthFinish(aVar2.f59890a, null);
    }
}
