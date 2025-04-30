package com.tencent.cos;

import com.facebook.imagepipeline.producers.s;
import com.tencent.cos.common.COSEndPoint;
/* loaded from: classes4.dex */
public class COSConfig {
    private static final String DEFAULT_COS_DOMAIN = "gz.file.myqcloud.com";
    private static final String DEFAULT_HTTP_PROTOCOL = "http://";
    private static final String DEFAULT_SERVER_FLAG = "/files/v2";
    private String httpProtocol = DEFAULT_HTTP_PROTOCOL;
    private String cosDomain = DEFAULT_COS_DOMAIN;
    private String serverFlag = DEFAULT_SERVER_FLAG;
    private int connectionTimeout = s.f13217g;
    private int socketTimeout = s.f13217g;
    private int maxConnectionsCount = 2;
    private int maxRetryCount = 3;
    private int threadPoolSize = 3;
    private COSEndPoint endPoint = COSEndPoint.COS_GZ;

    /* renamed from: com.tencent.cos.COSConfig$1  reason: invalid class name */
    /* loaded from: classes4.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$tencent$cos$common$COSEndPoint;

        static {
            int[] iArr = new int[COSEndPoint.values().length];
            $SwitchMap$com$tencent$cos$common$COSEndPoint = iArr;
            try {
                iArr[COSEndPoint.COS_GZ.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$tencent$cos$common$COSEndPoint[COSEndPoint.COS_SH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$tencent$cos$common$COSEndPoint[COSEndPoint.COS_TJ.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public int getConnectionTimeout() {
        return this.connectionTimeout;
    }

    public String getCosDomain() {
        int i2 = AnonymousClass1.$SwitchMap$com$tencent$cos$common$COSEndPoint[this.endPoint.ordinal()];
        if (i2 == 1) {
            this.cosDomain = DEFAULT_COS_DOMAIN;
        } else if (i2 == 2) {
            this.cosDomain = "sh.file.myqcloud.com";
        } else if (i2 == 3) {
            this.cosDomain = "tj.file.myqcloud.com";
        }
        return this.cosDomain;
    }

    public COSEndPoint getEndPoint() {
        return this.endPoint;
    }

    public String getHttpProtocol() {
        return this.httpProtocol;
    }

    public int getMaxConnectionsCount() {
        return this.maxConnectionsCount;
    }

    public int getMaxRetryCount() {
        return this.maxRetryCount;
    }

    public String getServerFlag() {
        return this.serverFlag;
    }

    public int getSocketTimeout() {
        return this.socketTimeout;
    }

    public int getThreadPoolSize() {
        return this.threadPoolSize;
    }

    public void setConnectionTimeout(int i2) {
        this.connectionTimeout = i2;
    }

    public void setCosDomain(String str) {
        this.cosDomain = str;
    }

    public void setEndPoint(COSEndPoint cOSEndPoint) {
        this.endPoint = cOSEndPoint;
    }

    public void setHttpProtocol(String str) {
        this.httpProtocol = str;
    }

    public void setMaxConnectionsCount(int i2) {
        this.maxConnectionsCount = i2;
    }

    public void setMaxRetryCount(int i2) {
        this.maxRetryCount = i2;
    }

    public void setServerFlag(String str) {
        this.serverFlag = str;
    }

    public void setSocketTimeout(int i2) {
        this.socketTimeout = i2;
    }

    public void setThreadPoolSize(int i2) {
        this.threadPoolSize = i2;
    }
}
