.class public Lcom/netease/nis/quicklogin/QuickLogin;
.super Ljava/lang/Object;
.source "QuickLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/quicklogin/QuickLogin$d;,
        Lcom/netease/nis/quicklogin/QuickLogin$e;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "QuickLogin"

.field public static fetchNumberTimeout:I = 0x5

.field public static isAllowedUploadInfo:Z = true

.field public static prefetchDataStartTime:J = 0x0L

.field public static prefetchNumberTimeout:I = 0x8

.field public static final publicKey:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjZBIRMtccHrq2VXapzir50diR1uZrR/SHc/mHMvW7sCZ7Bw/VfJkgdYCaNyyLLiIuOGw/OxHiocw95qPayfiMJkkKSR+XUc5KKWQuFSHmw2LNmq9YPdVtsqAjAQ4Qe3XcN1WQnrSpLsLer0WFSI+h0riBnvR9y9kn25RlC/uCvEo0//4r340RgOC1XLr3OPE1Nxc4WbrTN8uEB0hZ6PtWAY0ZQ6X8G+EXecbWHIhgBi9LhKhsZmIx3u/O+z+Jqx54nGgNhxVawsHtUBblT/oUAJzO0NkvYU0zFZ2ses9VnXXo/QwoYqcwnLIcf7zrQg5nVLTNyVpPZAFNdF/WsYJLQIDAQAB"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Lcom/netease/nis/quicklogin/a;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lorg/json/JSONObject;

.field private k:Z

.field private l:Z

.field private m:Lcom/netease/nis/quicklogin/utils/g;

.field private n:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

.field private o:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->j:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->k:Z

    .line 6
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->l:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nis/quicklogin/QuickLogin$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/QuickLogin;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/QuickLogin;I)I
    .locals 0

    .line 7
    iput p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->e:I

    return p1
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/QuickLogin;J)J
    .locals 0

    .line 6
    iput-wide p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->p:J

    return-wide p1
.end method

.method private a()Lcom/netease/nis/quicklogin/a;
    .locals 2

    .line 59
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->k:Z

    if-eqz v0, :cond_1

    .line 60
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "appKey,appId is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 63
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->b:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 64
    new-instance v1, Lcom/netease/nis/quicklogin/a$a;

    invoke-direct {v1}, Lcom/netease/nis/quicklogin/a$a;-><init>()V

    .line 65
    invoke-virtual {v1, v0}, Lcom/netease/nis/quicklogin/a$a;->a(Z)Lcom/netease/nis/quicklogin/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->h:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/a$a;->a(Ljava/lang/String;)Lcom/netease/nis/quicklogin/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->i:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/a$a;->b(Ljava/lang/String;)Lcom/netease/nis/quicklogin/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/a$a;->c(Ljava/lang/String;)Lcom/netease/nis/quicklogin/a$a;

    move-result-object v0

    iget v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->e:I

    .line 69
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/a$a;->a(I)Lcom/netease/nis/quicklogin/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->b:Landroid/content/Context;

    .line 70
    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/a$a;->a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/a;

    move-result-object v0

    return-object v0

    .line 71
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mContext is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "YDToken is not allowed to be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/QuickLogin;)Lcom/netease/nis/quicklogin/a;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->c:Lcom/netease/nis/quicklogin/a;

    return-object p0
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/a;)Lcom/netease/nis/quicklogin/a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->c:Lcom/netease/nis/quicklogin/a;

    return-object p1
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/netease/nis/quicklogin/listener/QuickLoginListener;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->d:Ljava/lang/String;

    const-string v2, "businessId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    iget-boolean v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->k:Z

    if-eqz v1, :cond_0

    .line 38
    iget p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->e:I

    const-string v1, "operatorType"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v1, "phone"

    .line 39
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string p1, "envType"

    const/4 v1, 0x1

    .line 40
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 p1, 0x20

    .line 41
    invoke-static {p1}, Lcom/netease/nis/basesdk/EncryptUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "nonce"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string p1, "timestamp"

    invoke-virtual {v0, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "cacheType"

    .line 43
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 p1, 0x0

    .line 44
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/netease/nis/quicklogin/utils/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p4, v1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    .line 47
    iget v4, p0, Lcom/netease/nis/quicklogin/QuickLogin;->e:I

    sget-object p4, Lcom/netease/nis/quicklogin/b/b;->g:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;IIILjava/lang/String;)V

    .line 48
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjZBIRMtccHrq2VXapzir50diR1uZrR/SHc/mHMvW7sCZ7Bw/VfJkgdYCaNyyLLiIuOGw/OxHiocw95qPayfiMJkkKSR+XUc5KKWQuFSHmw2LNmq9YPdVtsqAjAQ4Qe3XcN1WQnrSpLsLer0WFSI+h0riBnvR9y9kn25RlC/uCvEo0//4r340RgOC1XLr3OPE1Nxc4WbrTN8uEB0hZ6PtWAY0ZQ6X8G+EXecbWHIhgBi9LhKhsZmIx3u/O+z+Jqx54nGgNhxVawsHtUBblT/oUAJzO0NkvYU0zFZ2ses9VnXXo/QwoYqcwnLIcf7zrQg5nVLTNyVpPZAFNdF/WsYJLQIDAQAB"

    invoke-static {p2, p3}, Lcom/netease/nis/basesdk/EncryptUtil;->RSAEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 49
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string p4, "d"

    .line 50
    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rk"

    .line 51
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p0}, Lcom/netease/nis/quicklogin/QuickLogin;->getSDKVersion()Ljava/lang/String;

    move-result-object p1

    const-string p2, "version"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->j:Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "extData"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p3
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V
    .locals 2

    .line 73
    instance-of v0, p1, Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    const-string v1, "\u6613\u76fetoken\u4e3a\u7a7a"

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-interface {p1, v1, p2}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 75
    :cond_1
    instance-of v0, p1, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-interface {p1, v1, p2}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 10

    .line 55
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object v0

    sget-object v1, Lcom/netease/nis/quicklogin/utils/g$c;->a:Lcom/netease/nis/quicklogin/utils/g$c;

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v6, 0x0

    move v2, p3

    move-object v3, p1

    move v4, p2

    move v5, p4

    move-object v7, p5

    .line 57
    invoke-virtual/range {v0 .. v9}, Lcom/netease/nis/quicklogin/utils/g;->a(Lcom/netease/nis/quicklogin/utils/g$c;ILjava/lang/String;IIILjava/lang/String;J)V

    .line 58
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/g;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Lcom/netease/nis/quicklogin/QuickLogin$d;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 8
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->k:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->m:Lcom/netease/nis/quicklogin/utils/g;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/utils/g;->b()Lcom/netease/nis/quicklogin/utils/g$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/utils/g$b;->a(Z)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->m:Lcom/netease/nis/quicklogin/utils/g;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/utils/g;->b()Lcom/netease/nis/quicklogin/utils/g$b;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/nis/quicklogin/utils/g$b;->b(J)V

    .line 11
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->m:Lcom/netease/nis/quicklogin/utils/g;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/utils/g;->b()Lcom/netease/nis/quicklogin/utils/g$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/netease/nis/quicklogin/utils/g$b;->c(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->m:Lcom/netease/nis/quicklogin/utils/g;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/utils/g;->b()Lcom/netease/nis/quicklogin/utils/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/utils/g$b;->h(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->b:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/netease/nis/quicklogin/utils/a;->a(Landroid/content/Context;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->e:I

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "networkType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 15
    iget v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->e:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 16
    sget-object p1, Lcom/netease/nis/quicklogin/b/b;->g:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v4, 0x0

    const-string v5, "\u65e0\u6cd5\u5224\u65ad\u7f51\u7edc\u7c7b\u578b"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;IIILjava/lang/String;)V

    const-string p1, "\u65e0\u6cd5\u5224\u65ad\u7f51\u7edc\u7c7b\u578b"

    .line 17
    invoke-direct {p0, p2, p1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 18
    sget-object p1, Lcom/netease/nis/quicklogin/b/b;->g:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v4, 0x0

    const-string v5, "\u5f53\u524d\u4ec5wifi\u8054\u7f51"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;IIILjava/lang/String;)V

    const-string p1, "\u5f53\u524d\u4ec5wifi\u8054\u7f51\uff0c\u8bf7\u8fde\u63a5\u6570\u636e\u6d41\u91cf"

    .line 19
    invoke-direct {p0, p2, p1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_2
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->k:Z

    if-nez v0, :cond_4

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    :cond_3
    const-string p1, "\u8f93\u5165\u624b\u673a\u53f7\u4e0d\u5408\u6cd5\uff0c\u8bf7\u68c0\u67e5\u540e\u91cd\u65b0\u8f93\u5165"

    .line 22
    invoke-direct {p0, p2, p1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    return-void

    :cond_4
    const/16 v0, 0x10

    .line 23
    invoke-static {v0}, Lcom/netease/nis/basesdk/EncryptUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v0, 0xc

    .line 24
    invoke-static {v0}, Lcom/netease/nis/basesdk/EncryptUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object v7

    .line 25
    sput-object v6, Lcom/netease/nis/quicklogin/b/a;->a:Ljava/lang/String;

    .line 26
    sput-object v7, Lcom/netease/nis/quicklogin/b/a;->b:Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1, v6, v7, p2}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;)Ljava/util/Map;

    move-result-object p1

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "terminal"

    const-string v2, "1"

    .line 29
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    const-string v2, "3.2.5"

    .line 30
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "osVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 34
    iget-object v9, p0, Lcom/netease/nis/quicklogin/QuickLogin;->a:Ljava/lang/String;

    new-instance v10, Lcom/netease/nis/quicklogin/QuickLogin$c;

    move-object v1, v10

    move-object v2, p0

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/netease/nis/quicklogin/QuickLogin$c;-><init>(Lcom/netease/nis/quicklogin/QuickLogin;JLcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin$d;)V

    invoke-static {v9, p1, v0, v10}, Lcom/netease/nis/basesdk/HttpUtil;->doPostRequestByForm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    return-void
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/QuickLogin;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/QuickLogin;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/netease/nis/quicklogin/QuickLogin;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->e:I

    return p0
.end method

.method static synthetic d(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/netease/nis/quicklogin/QuickLogin;)Lcom/netease/nis/quicklogin/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/QuickLogin;->a()Lcom/netease/nis/quicklogin/a;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/netease/nis/quicklogin/QuickLogin;
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/nis/quicklogin/QuickLogin$e;->a()Lcom/netease/nis/quicklogin/QuickLogin;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkNetWork(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/utils/a;->a(Landroid/content/Context;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    const/4 p1, 0x5

    return p1
.end method

.method public clearScripCache(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/sso/sdk/auth/AuthnHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/auth/c;->delScrip()V

    .line 2
    invoke-static {p1}, Lcom/sdk/Unicorn/base/api/ToolUtils;->clearCache(Landroid/content/Context;)V

    const-string v0, "timeend"

    const-wide/16 v1, 0x0

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/netease/nis/quicklogin/utils/e;->a(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearScripCache Exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getOperatorType(Landroid/content/Context;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/a;->c(Landroid/content/Context;)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    const/4 p1, 0x5

    return p1
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3.2.5"

    return-object v0
.end method

.method public getToken(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 6
    .param p2    # Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->l:Z

    if-nez v0, :cond_0

    const-string v0, "https://ye.dun.163yun.com/v1/preCheck"

    .line 2
    iput-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->a:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->k:Z

    .line 4
    new-instance v0, Lcom/netease/nis/quicklogin/QuickLogin$b;

    invoke-direct {v0, p0, p2}, Lcom/netease/nis/quicklogin/QuickLogin$b;-><init>(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Lcom/netease/nis/quicklogin/QuickLogin$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    sget-object p2, Lcom/netease/nis/quicklogin/b/b;->g:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;IIILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->b:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/netease/nis/quicklogin/QuickLogin;->d:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/b;->c()Lcom/netease/nis/quicklogin/utils/b;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->b:Landroid/content/Context;

    invoke-virtual {p2, v0, v1}, Lcom/netease/nis/quicklogin/utils/b;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 4
    new-instance p2, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-direct {p2, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/netease/nis/quicklogin/QuickLogin;->n:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    .line 5
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/g;->c()Lcom/netease/nis/quicklogin/utils/g;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/nis/quicklogin/QuickLogin;->b:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/netease/nis/quicklogin/utils/g;->a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/utils/g;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->m:Lcom/netease/nis/quicklogin/utils/g;

    .line 6
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/g;->b()Lcom/netease/nis/quicklogin/utils/g$b;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/nis/quicklogin/QuickLogin;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/netease/nis/quicklogin/utils/g$b;->a(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/f;->a()Lcom/netease/nis/quicklogin/utils/f;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/nis/quicklogin/QuickLogin;->b:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/netease/nis/quicklogin/utils/f;->a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/utils/f;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/netease/nis/quicklogin/QuickLogin;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/netease/nis/quicklogin/utils/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method public isPreLoginResultValid()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/nis/quicklogin/QuickLogin;->p:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x18e70

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onePass(Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    .locals 3
    .param p1    # Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->c:Lcom/netease/nis/quicklogin/a;

    if-nez v0, :cond_0

    const-string p1, "\u9884\u53d6\u53f7\u5f02\u5e38\uff0c\u8bf7\u67e5\u770b\u9884\u53d6\u53f7\u5bf9\u5e94\u7684\u9519\u8bef\u56de\u8c03"

    .line 2
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->n:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->o:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->n:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    invoke-virtual {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V

    .line 5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->c:Lcom/netease/nis/quicklogin/a;

    invoke-virtual {v0, p1}, Lcom/netease/nis/quicklogin/a;->a(Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public prefetchMobileNumber(Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
    .locals 6
    .param p1    # Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->l:Z

    if-nez v0, :cond_0

    const-string v0, "https://ye.dun.163yun.com/v1/oneclick/preCheck"

    .line 2
    iput-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->a:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->k:Z

    const/4 v0, 0x0

    .line 4
    new-instance v1, Lcom/netease/nis/quicklogin/QuickLogin$a;

    invoke-direct {v1, p0, p1}, Lcom/netease/nis/quicklogin/QuickLogin$a;-><init>(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Lcom/netease/nis/quicklogin/QuickLogin$d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->g:Ljava/lang/String;

    sget-object v0, Lcom/netease/nis/quicklogin/b/b;->g:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;IIILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public quitActivity()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->n:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b()V

    :cond_0
    return-void
.end method

.method public removeCustomView(ILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->n:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setAllowedUploadInfo(Z)V
    .locals 0

    .line 1
    sput-boolean p1, Lcom/netease/nis/quicklogin/QuickLogin;->isAllowedUploadInfo:Z

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 1

    .line 1
    sput-boolean p1, Lcom/netease/nis/quicklogin/QuickLogin;->DEBUG:Z

    const-string v0, "QuickLogin"

    .line 2
    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->setTag(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->enableLog(Z)V

    .line 4
    invoke-static {p1}, Lcom/sdk/Unicorn/base/module/manager/SDKManager;->setDebug(Z)V

    .line 5
    invoke-static {p1}, Lcom/cmic/sso/sdk/auth/c;->setDebugMode(Z)V

    return-void
.end method

.method public setExtendData(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->j:Lorg/json/JSONObject;

    return-void
.end method

.method public setFetchNumberTimeout(I)V
    .locals 0

    .line 1
    sput p1, Lcom/netease/nis/quicklogin/QuickLogin;->fetchNumberTimeout:I

    return-void
.end method

.method public setLoadingVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->n:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->a(Z)V

    :cond_0
    return-void
.end method

.method public setPreCheckUrl(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->l:Z

    .line 2
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->a:Ljava/lang/String;

    return-void
.end method

.method public setPrefetchNumberTimeout(I)V
    .locals 0

    .line 1
    sput p1, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchNumberTimeout:I

    return-void
.end method

.method public setPrivacyState(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin;->n:Lcom/netease/nis/quicklogin/utils/LoginUiHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/netease/nis/quicklogin/utils/LoginUiHelper;->b(Z)V

    :cond_0
    return-void
.end method

.method public setUnifyUiConfig(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin;->o:Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    return-void
.end method
