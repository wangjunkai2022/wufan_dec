package com.join.mgps.dto;

import com.j256.ormlite.stmt.query.SimpleComparison;
/* loaded from: classes4.dex */
public class PaymentInfo {
    private String agentId;
    private String billInfo;
    private String billNo;
    private boolean hasError;
    private String message;
    private String tokenID;

    private String getBillInfoItem(String str) {
        if (this.billInfo == null) {
            return null;
        }
        String str2 = str + SimpleComparison.EQUAL_TO_OPERATION;
        int indexOf = this.billInfo.indexOf(str2);
        if (indexOf < 0) {
            return null;
        }
        int indexOf2 = this.billInfo.indexOf(124, indexOf);
        if (indexOf2 >= 0) {
            return this.billInfo.substring(indexOf + str2.length(), indexOf2);
        }
        return this.billInfo.substring(indexOf + str2.length());
    }

    public static String getPayResultName(int i2) {
        return i2 != -2 ? i2 != -1 ? i2 != 0 ? i2 != 1 ? "" : "支付成功" : "处理中..." : "支付失败" : "支付未完成";
    }

    public String getAgentId() {
        return this.agentId;
    }

    public String getBillInfo() {
        return this.billInfo;
    }

    public String getBillNo() {
        return this.billNo;
    }

    public String getJunnetBillNo() {
        return getBillInfoItem("jnet_bill_no");
    }

    public String getMessage() {
        return this.message;
    }

    public String getPayAmount() {
        return getBillInfoItem(Constant.PAY_AMT);
    }

    public int getPayResult() {
        try {
            return Integer.parseInt(getBillInfoItem("result"));
        } catch (Exception unused) {
            return -1;
        }
    }

    public String getPayResultName() {
        return getPayResultName(getPayResult());
    }

    public int getPayType() {
        try {
            return Integer.parseInt(getBillInfoItem(Constant.PAY_TYPE));
        } catch (Exception unused) {
            return -1;
        }
    }

    public String getPayTypeName() {
        int payType = getPayType();
        if (payType != 2) {
            if (payType != 10) {
                if (payType != 35) {
                    if (payType != 29) {
                        if (payType != 30) {
                            switch (payType) {
                                case 13:
                                    return "神州行";
                                case 14:
                                    return "联通卡";
                                case 15:
                                    return "电信卡";
                                default:
                                    switch (payType) {
                                        case 17:
                                            return "银行无卡支付";
                                        case 18:
                                            return "银行快捷支付";
                                        case 19:
                                            return "银行WAP网银支付";
                                        default:
                                            switch (payType) {
                                                case 40:
                                                    return "第三方卡支付";
                                                case 41:
                                                    return "盛大一卡通";
                                                case 42:
                                                    return "网易一卡通";
                                                case 43:
                                                    return "征途一卡通";
                                                case 44:
                                                    return "完美一卡通";
                                                case 45:
                                                    return "金山一卡通";
                                                case 46:
                                                    return "搜狐一卡通";
                                                case 47:
                                                    return "久游一卡通";
                                                case 48:
                                                    return "乐都一卡通";
                                                case 49:
                                                    return "盛科一卡通";
                                                case 50:
                                                    return "中广一卡通";
                                                case 51:
                                                    return "麒麟一卡通";
                                                case 52:
                                                    return "梦工厂网络";
                                                case 53:
                                                    return "网龙91币卡";
                                                case 54:
                                                    return "极光一卡通";
                                                case 55:
                                                    return "纵游一卡通";
                                                case 56:
                                                    return "多多卡（原奥比建设卡）";
                                                case 57:
                                                    return "QQ币卡";
                                                default:
                                                    return "【未知支付方式】";
                                            }
                                    }
                            }
                        }
                        return "微信支付";
                    }
                    return "信用卡无卡支付";
                }
                return "盛大卡支付";
            }
            return "骏卡支付";
        }
        return "余额支付";
    }

    public String getTokenID() {
        return this.tokenID;
    }

    public boolean hasError() {
        return this.hasError;
    }

    public boolean isHasError() {
        return this.hasError;
    }

    public void setAgentId(String str) {
        this.agentId = str;
    }

    public void setBillInfo(String str) {
        this.billInfo = str;
        this.billNo = getBillInfoItem(Constant.AGENT_BILL_ID);
    }

    public void setBillNo(String str) {
        this.billNo = str;
    }

    public void setHasError(boolean z3) {
        this.hasError = z3;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setTokenID(String str) {
        this.tokenID = str;
    }
}
