package com.join.mgps.Util;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.join.mgps.dto.PaMgrBean;
import com.papa.sim.statistic.http.b;
import com.tencent.cos.COSClient;
import com.tencent.cos.COSClientConfig;
import com.tencent.cos.common.COSEndPoint;
import com.tencent.cos.model.COSRequest;
import com.tencent.cos.model.COSResult;
import com.tencent.cos.model.PutObjectRequest;
import com.tencent.cos.task.listener.IUploadTaskListener;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import okhttp3.Request;
/* compiled from: TCUploadHelper.java */
/* loaded from: classes3.dex */
public class e2 {

    /* renamed from: d  reason: collision with root package name */
    private static final String f27520d = "TCUploadHelper";

    /* renamed from: e  reason: collision with root package name */
    private static final int f27521e = 1;

    /* renamed from: f  reason: collision with root package name */
    private static final int f27522f = 2;

    /* renamed from: g  reason: collision with root package name */
    private static final int f27523g = 3;

    /* renamed from: a  reason: collision with root package name */
    private Context f27524a;

    /* renamed from: b  reason: collision with root package name */
    private e f27525b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f27526c = new Handler(Looper.getMainLooper(), new a());

    /* compiled from: TCUploadHelper.java */
    /* loaded from: classes3.dex */
    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i2 = message.what;
            if (i2 != 1) {
                if (i2 != 3) {
                    return false;
                }
                Bundle bundle = (Bundle) message.obj;
                return false;
            } else if (e2.this.f27525b != null) {
                e2.this.f27525b.N(message.arg1, (String) message.obj);
                return false;
            } else {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TCUploadHelper.java */
    /* loaded from: classes3.dex */
    public class b implements IUploadTaskListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27528a;

        b(String str) {
            this.f27528a = str;
        }

        @Override // com.tencent.cos.task.listener.IUploadTaskListener
        public void onCancel(COSRequest cOSRequest, COSResult cOSResult) {
            Message message = new Message();
            message.what = 1;
            message.arg1 = cOSResult.code;
            message.obj = cOSResult.msg;
            e2.this.f27526c.sendMessage(message);
        }

        @Override // com.tencent.cos.task.listener.ITaskListener
        public void onFailed(COSRequest cOSRequest, COSResult cOSResult) {
            Message message = new Message();
            message.what = 1;
            message.arg1 = cOSResult.code;
            message.obj = cOSResult.msg;
            e2.this.f27526c.sendMessage(message);
        }

        @Override // com.tencent.cos.task.listener.IUploadTaskListener
        public void onProgress(COSRequest cOSRequest, long j4, long j5) {
        }

        @Override // com.tencent.cos.task.listener.ITaskListener
        public void onSuccess(COSRequest cOSRequest, COSResult cOSResult) {
            Message message = new Message();
            message.what = 1;
            message.arg1 = 0;
            message.obj = this.f27528a;
            e2.this.f27526c.sendMessage(message);
        }
    }

    /* compiled from: TCUploadHelper.java */
    /* loaded from: classes3.dex */
    class c extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27530a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27531b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f27532c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f27533d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f27534e;

        c(String str, String str2, String str3, String str4, String str5) {
            this.f27530a = str;
            this.f27531b = str2;
            this.f27532c = str3;
            this.f27533d = str4;
            this.f27534e = str5;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            e2.this.g(this.f27530a, this.f27531b, this.f27532c, this.f27533d, this.f27534e);
        }
    }

    /* compiled from: TCUploadHelper.java */
    /* loaded from: classes3.dex */
    class d extends b.p<PaMgrBean.Response<PaMgrBean.Response.UplocadCover>> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f27536b;

        d(String str) {
            this.f27536b = str;
        }

        @Override // com.papa.sim.statistic.http.b.p
        public void d(Request request, Exception exc) {
            if (e2.this.f27525b != null) {
                e2.this.f27525b.N(-1, null);
            }
        }

        @Override // com.papa.sim.statistic.http.b.p
        /* renamed from: f */
        public void e(PaMgrBean.Response<PaMgrBean.Response.UplocadCover> response) {
            if (response != null && response.getError() == 0) {
                PaMgrBean.Response.UplocadCover data = response.getData();
                String appId = data.getAppId();
                e2.this.g(this.f27536b, data.getSignature(), appId, data.getBucket(), data.getUploadDir());
                return;
            }
            d(null, null);
        }
    }

    /* compiled from: TCUploadHelper.java */
    /* loaded from: classes3.dex */
    public interface e {
        void N(int i2, String str);
    }

    public e2(Context context, e eVar) {
        this.f27524a = context;
        this.f27525b = eVar;
    }

    private void d(String str, String str2, String str3, String str4, String str5) {
        new c(str, str2, str3, str4, str5).start();
    }

    private static void e(String str, Map<String, String> map, b.p pVar) {
        com.papa.sim.statistic.http.b.W(str, map, pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(String str, String str2, String str3, String str4, String str5) {
        Context applicationContext = this.f27524a.getApplicationContext();
        COSClientConfig cOSClientConfig = new COSClientConfig();
        cOSClientConfig.setEndPoint(COSEndPoint.COS_GZ);
        COSClient cOSClient = new COSClient(applicationContext, str3, cOSClientConfig, null);
        StringBuilder sb = new StringBuilder();
        String str6 = File.separator;
        sb.append(str6);
        sb.append(str5);
        sb.append(str6);
        sb.append(new File(str).getName());
        String sb2 = sb.toString();
        PutObjectRequest putObjectRequest = new PutObjectRequest();
        putObjectRequest.setBucket(str4);
        putObjectRequest.setCosPath(sb2);
        putObjectRequest.setSrcPath(str);
        putObjectRequest.setSign(str2);
        putObjectRequest.setInsertOnly("0");
        putObjectRequest.setListener(new b(sb2));
        cOSClient.putObject(putObjectRequest);
    }

    public void f(String str, String str2, String str3) {
        HashMap hashMap = new HashMap();
        hashMap.put("uid", str2 + "");
        hashMap.put("token", str3);
        d dVar = new d(str);
        e(com.join.mgps.rpc.g.f51560w + "/interface/getcossign", hashMap, dVar);
    }
}
