package com.join.mgps.rpc;

import android.os.AsyncTask;
import com.fasterxml.jackson.core.type.TypeReference;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.android.app.common.utils.JsonMapper;
import com.join.mgps.Util.n0;
import com.join.mgps.Util.t0;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.PayCenterOrderRequest;
import com.join.mgps.dto.PayCenterOrderResponse;
import com.join.mgps.dto.PayGameCheckResult;
import com.join.mgps.dto.PayGameDataRequest;
import com.join.mgps.dto.PayGameDetialBean;
import com.join.mgps.dto.PaygameCheckResponse;
import com.join.mgps.dto.PaygameResponse;
import com.join.mgps.dto.RequestAppDetialArgs;
import com.join.mgps.dto.ResultMainBean;
import com.qq.e.ads.nativ.NativeUnifiedADAppInfoImpl;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
/* compiled from: RpcPapaPayClient.java */
/* loaded from: classes4.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private static final String f51605a = "RPCClient";

    /* renamed from: b  reason: collision with root package name */
    private static final char[] f51606b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* compiled from: RpcPapaPayClient.java */
    /* loaded from: classes4.dex */
    class a extends AsyncTask<PayCenterOrderRequest, Object, PayCenterOrderResponse> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.android.app.common.http.b f51607a;

        a(com.join.android.app.common.http.b bVar) {
            this.f51607a = bVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public PayCenterOrderResponse doInBackground(PayCenterOrderRequest... payCenterOrderRequestArr) {
            PayCenterOrderRequest payCenterOrderRequest = payCenterOrderRequestArr[0];
            return new PayCenterOrderResponse(n0.a(m.d(payCenterOrderRequest), false), payCenterOrderRequest.getAction());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: b */
        public void onPostExecute(PayCenterOrderResponse payCenterOrderResponse) {
            super.onPostExecute(payCenterOrderResponse);
            this.f51607a.onSuccess(payCenterOrderResponse);
        }
    }

    /* compiled from: RpcPapaPayClient.java */
    /* loaded from: classes4.dex */
    class b extends AsyncTask<PayGameDataRequest, CommentResponse<PaygameResponse>, CommentResponse<PaygameResponse>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.android.app.common.http.b f51608a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RpcPapaPayClient.java */
        /* loaded from: classes4.dex */
        public class a extends TypeReference<CommentResponse<PaygameResponse>> {
            a() {
            }
        }

        b(com.join.android.app.common.http.b bVar) {
            this.f51608a = bVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public CommentResponse<PaygameResponse> doInBackground(PayGameDataRequest... payGameDataRequestArr) {
            PayGameDataRequest payGameDataRequest = payGameDataRequestArr[0];
            return (CommentResponse) JsonMapper.getInstance().fromJson(n0.b(g.f51566y + "/payment/buy", false, payGameDataRequest.getArgs()), new a());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: b */
        public void onPostExecute(CommentResponse<PaygameResponse> commentResponse) {
            super.onPostExecute(commentResponse);
            this.f51608a.onSuccess(commentResponse);
        }
    }

    /* compiled from: RpcPapaPayClient.java */
    /* loaded from: classes4.dex */
    class c extends AsyncTask<PayGameDataRequest, CommentResponse<PaygameCheckResponse>, CommentResponse<PaygameCheckResponse>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.android.app.common.http.b f51610a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RpcPapaPayClient.java */
        /* loaded from: classes4.dex */
        public class a extends TypeReference<CommentResponse<PaygameCheckResponse>> {
            a() {
            }
        }

        c(com.join.android.app.common.http.b bVar) {
            this.f51610a = bVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public CommentResponse<PaygameCheckResponse> doInBackground(PayGameDataRequest... payGameDataRequestArr) {
            PayGameDataRequest payGameDataRequest = payGameDataRequestArr[0];
            return (CommentResponse) JsonMapper.getInstance().fromJson(n0.b(g.f51566y + "/payment/buy", false, payGameDataRequest.getArgsCheck()), new a());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: b */
        public void onPostExecute(CommentResponse<PaygameCheckResponse> commentResponse) {
            super.onPostExecute(commentResponse);
            this.f51610a.onSuccess(commentResponse);
        }
    }

    /* compiled from: RpcPapaPayClient.java */
    /* loaded from: classes4.dex */
    class d extends AsyncTask<PayGameDataRequest, CommentResponse<PayGameCheckResult>, CommentResponse<PayGameCheckResult>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.android.app.common.http.b f51612a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RpcPapaPayClient.java */
        /* loaded from: classes4.dex */
        public class a extends TypeReference<CommentResponse<PayGameCheckResult>> {
            a() {
            }
        }

        d(com.join.android.app.common.http.b bVar) {
            this.f51612a = bVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public CommentResponse<PayGameCheckResult> doInBackground(PayGameDataRequest... payGameDataRequestArr) {
            PayGameDataRequest payGameDataRequest = payGameDataRequestArr[0];
            return (CommentResponse) JsonMapper.getInstance().fromJson(n0.b(g.f51566y + "/activation/auth", false, payGameDataRequest.getArgsCheck2()), new a());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: b */
        public void onPostExecute(CommentResponse<PayGameCheckResult> commentResponse) {
            super.onPostExecute(commentResponse);
            this.f51612a.onSuccess(commentResponse);
        }
    }

    /* compiled from: RpcPapaPayClient.java */
    /* loaded from: classes4.dex */
    class e extends AsyncTask<RequestAppDetialArgs, CommentResponse<PayGameCheckResult>, ResultMainBean<PayGameDetialBean>> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.join.android.app.common.http.b f51614a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RpcPapaPayClient.java */
        /* loaded from: classes4.dex */
        public class a extends TypeReference<ResultMainBean<PayGameDetialBean>> {
            a() {
            }
        }

        e(com.join.android.app.common.http.b bVar) {
            this.f51614a = bVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a */
        public ResultMainBean<PayGameDetialBean> doInBackground(RequestAppDetialArgs... requestAppDetialArgsArr) {
            RequestAppDetialArgs requestAppDetialArgs = requestAppDetialArgsArr[0];
            return (ResultMainBean) JsonMapper.getInstance().fromJson(n0.b(g.f51566y + "/user/game/state", false, requestAppDetialArgs.getArgs()), new a());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: b */
        public void onPostExecute(ResultMainBean<PayGameDetialBean> resultMainBean) {
            super.onPostExecute(resultMainBean);
            this.f51614a.onSuccess(resultMainBean);
        }
    }

    public static void a(PayGameDataRequest payGameDataRequest, com.join.android.app.common.http.b bVar) {
        t0.b(f51605a, "method getOrderId() called.");
        new c(bVar).execute(payGameDataRequest);
    }

    public static void b(PayGameDataRequest payGameDataRequest, com.join.android.app.common.http.b bVar) {
        t0.b(f51605a, "method getOrderId() called.");
        new d(bVar).execute(payGameDataRequest);
    }

    public static void c(RequestAppDetialArgs requestAppDetialArgs, com.join.android.app.common.http.b bVar) {
        t0.b(f51605a, "method getOrderId() called.");
        new e(bVar).execute(requestAppDetialArgs);
    }

    public static String d(PayCenterOrderRequest payCenterOrderRequest) {
        Map<String, String> argsURLEncoder = payCenterOrderRequest.getArgsURLEncoder();
        Map<String, String> args = payCenterOrderRequest.getArgs();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(g.f51545r + "?action=");
        stringBuffer.append(payCenterOrderRequest.getAction());
        stringBuffer.append(m.a.f72566d);
        for (Map.Entry<String, String> entry : argsURLEncoder.entrySet()) {
            stringBuffer.append(entry.getKey());
            stringBuffer.append(SimpleComparison.EQUAL_TO_OPERATION);
            stringBuffer.append(entry.getValue());
            stringBuffer.append(m.a.f72566d);
        }
        if (stringBuffer.lastIndexOf(m.a.f72566d) == stringBuffer.length() - 1) {
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        stringBuffer.append(m.a.f72566d);
        stringBuffer.append("sign=");
        stringBuffer.append(h(e(args)));
        return stringBuffer.toString().trim();
    }

    public static String e(Map<String, String> map) {
        StringBuffer stringBuffer = new StringBuffer("582df15de91b3f12d8e710073e43f4f8");
        if (map == null || map.size() == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (!entry.getKey().equals("resource_id") && !entry.getKey().equals("callback_url") && !entry.getKey().equals(NativeUnifiedADAppInfoImpl.Keys.APP_NAME) && !entry.getKey().equals("app_user_name") && !entry.getKey().equals("product_name")) {
                arrayList.add(entry.getValue());
            }
        }
        Collections.sort(arrayList);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            stringBuffer.append((String) arrayList.get(i2));
        }
        return stringBuffer.toString();
    }

    public static void f(PayCenterOrderRequest payCenterOrderRequest, com.join.android.app.common.http.b bVar) {
        t0.b(f51605a, "method getOrderId() called.");
        new a(bVar).execute(payCenterOrderRequest);
    }

    public static void g(PayGameDataRequest payGameDataRequest, com.join.android.app.common.http.b bVar) {
        t0.b(f51605a, "method getOrderId() called.");
        new b(bVar).execute(payGameDataRequest);
    }

    public static String h(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            try {
                messageDigest.update(str.getBytes(net.lingala.zip4j.util.e.A0));
            } catch (UnsupportedEncodingException e4) {
                e4.printStackTrace();
            }
            return i(messageDigest.digest());
        } catch (NoSuchAlgorithmException e5) {
            e5.printStackTrace();
            return "";
        }
    }

    private static String i(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            char[] cArr = f51606b;
            sb.append(cArr[(bArr[i2] & 240) >>> 4]);
            sb.append(cArr[bArr[i2] & 15]);
        }
        return sb.toString();
    }
}
