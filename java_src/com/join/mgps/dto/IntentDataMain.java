package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class IntentDataMain implements Serializable {
    private AccountBean accountBean;
    private String appkey;
    private String data;
    private IntentDateBean intentDateBean;
    private String packageName;

    public AccountBean getAccountBean() {
        return this.accountBean;
    }

    public String getAppkey() {
        return this.appkey;
    }

    public String getData() {
        return this.data;
    }

    public IntentDateBean getIntentDateBean() {
        return this.intentDateBean;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public void setAccountBean(AccountBean accountBean) {
        this.accountBean = accountBean;
    }

    public void setAppkey(String str) {
        this.appkey = str;
    }

    public void setData(String str) {
        this.data = str;
    }

    public void setIntentDateBean(IntentDateBean intentDateBean) {
        this.intentDateBean = intentDateBean;
    }

    public void setPackageName(String str) {
        this.packageName = str;
    }
}
