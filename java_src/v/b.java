package v;

import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListResult;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;
/* loaded from: classes2.dex */
public interface b {
    @com.alipay.mobile.framework.service.annotation.a(a = "alipay.security.vkeyDFP.appList.get")
    AppListResult a(String str);

    @com.alipay.mobile.framework.service.annotation.a(a = "alipay.security.vkeyDFP.staticData.report")
    DeviceDataReportResult b(DeviceDataReportRequest deviceDataReportRequest);
}
