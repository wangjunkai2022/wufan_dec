package com.alipay.security.mobile.module.a;

import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;
/* loaded from: classes2.dex */
final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ DeviceDataReportRequest f9876a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ b f9877b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar, DeviceDataReportRequest deviceDataReportRequest) {
        this.f9877b = bVar;
        this.f9876a = deviceDataReportRequest;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DeviceDataReportResult deviceDataReportResult;
        DeviceDataReportResult deviceDataReportResult2;
        v.b bVar;
        try {
            bVar = this.f9877b.f9874d;
            DeviceDataReportResult unused = b.f9870g = bVar.b(this.f9876a);
        } catch (Throwable th) {
            DeviceDataReportResult unused2 = b.f9870g = new DeviceDataReportResult();
            deviceDataReportResult = b.f9870g;
            deviceDataReportResult.f9937a = false;
            deviceDataReportResult2 = b.f9870g;
            deviceDataReportResult2.f9938b = "static data rpc upload error, " + com.alipay.security.mobile.module.commonutils.d.e(th);
            com.alipay.security.mobile.module.commonutils.d.e(th);
        }
    }
}
