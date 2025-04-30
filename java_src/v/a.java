package v;

import com.alipay.tscenter.biz.rpc.vkeydfp.request.AppListCmdRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListCmdResult;
/* loaded from: classes2.dex */
public interface a {
    @com.alipay.mobile.framework.service.annotation.a(a = "alipay.security.vkeyDFP.appListCmd.get")
    AppListCmdResult a(AppListCmdRequest appListCmdRequest);

    @com.alipay.mobile.framework.service.annotation.a(a = "alipay.security.vkeyDFP.appListCmd.reGet")
    AppListCmdResult b(AppListCmdRequest appListCmdRequest);
}
