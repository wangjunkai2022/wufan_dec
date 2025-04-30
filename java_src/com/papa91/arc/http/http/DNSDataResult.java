package com.papa91.arc.http.http;

import com.papa91.arc.http.rpc.RpcConstant;
import com.papa91.arc.util.StringUtils;
/* loaded from: classes4.dex */
public class DNSDataResult {
    private String gameUrl;

    public String getGameUrl() {
        return this.gameUrl;
    }

    public void setGameUrl(String str) {
        this.gameUrl = str;
    }

    public void updateRpcConstant() {
        if (StringUtils.isNotEmpty(this.gameUrl)) {
            RpcConstant.gameUrl = this.gameUrl;
        }
    }
}
