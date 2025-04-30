package com.alipay.sdk.app;

import com.qq.e.comm.constants.ErrorCode;
/* loaded from: classes2.dex */
public enum i {
    SUCCEEDED(ErrorCode.PrivateError.LOAD_TIME_OUT, "处理成功"),
    FAILED(4000, "系统繁忙，请稍后再试"),
    CANCELED(6001, "用户取消"),
    NETWORK_ERROR(6002, "网络连接异常"),
    PARAMS_ERROR(ErrorCode.CONSTRUCTOR_PARAM_ERROR, "参数错误"),
    DOUBLE_REQUEST(5000, "重复请求"),
    PAY_WAITTING(8000, "支付结果确认中");
    

    /* renamed from: h  reason: collision with root package name */
    private int f9610h;

    /* renamed from: i  reason: collision with root package name */
    private String f9611i;

    i(int i2, String str) {
        this.f9610h = i2;
        this.f9611i = str;
    }

    private void b(int i2) {
        this.f9610h = i2;
    }

    public final int a() {
        return this.f9610h;
    }

    private void a(String str) {
        this.f9611i = str;
    }

    public final String b() {
        return this.f9611i;
    }

    public static i a(int i2) {
        if (i2 != 4001) {
            if (i2 != 5000) {
                if (i2 != 8000) {
                    if (i2 != 9000) {
                        if (i2 != 6001) {
                            if (i2 != 6002) {
                                return FAILED;
                            }
                            return NETWORK_ERROR;
                        }
                        return CANCELED;
                    }
                    return SUCCEEDED;
                }
                return PAY_WAITTING;
            }
            return DOUBLE_REQUEST;
        }
        return PARAMS_ERROR;
    }
}
