.class public Lcom/netease/nis/quicklogin/utils/g;
.super Ljava/lang/Object;
.source "UploadInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/quicklogin/utils/g$b;,
        Lcom/netease/nis/quicklogin/utils/g$c;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/netease/nis/quicklogin/utils/g;


# instance fields
.field private final a:Lcom/netease/nis/quicklogin/utils/g$b;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/netease/nis/quicklogin/utils/g$b;

    invoke-direct {v0}, Lcom/netease/nis/quicklogin/utils/g$b;-><init>()V

    iput-object v0, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    return-void
.end method

.method private a()V
    .locals 3

    .line 12
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/g;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/utils/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/netease/nis/quicklogin/utils/g;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/nis/quicklogin/utils/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    invoke-virtual {v2, v0}, Lcom/netease/nis/quicklogin/utils/g$b;->d(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/utils/g$b;->b(Ljava/lang/String;)V

    .line 16
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 17
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 18
    iget-object v2, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    invoke-virtual {v2, v0}, Lcom/netease/nis/quicklogin/utils/g$b;->g(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    invoke-virtual {v0, v1}, Lcom/netease/nis/quicklogin/utils/g$b;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static c()Lcom/netease/nis/quicklogin/utils/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/nis/quicklogin/utils/g;->c:Lcom/netease/nis/quicklogin/utils/g;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/netease/nis/quicklogin/utils/g;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/netease/nis/quicklogin/utils/g;->c:Lcom/netease/nis/quicklogin/utils/g;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/netease/nis/quicklogin/utils/g;

    invoke-direct {v1}, Lcom/netease/nis/quicklogin/utils/g;-><init>()V

    sput-object v1, Lcom/netease/nis/quicklogin/utils/g;->c:Lcom/netease/nis/quicklogin/utils/g;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/netease/nis/quicklogin/utils/g;->c:Lcom/netease/nis/quicklogin/utils/g;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/utils/g;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/quicklogin/utils/g;->b:Landroid/content/Context;

    return-object p0
.end method

.method public a(Lcom/netease/nis/quicklogin/utils/g$c;ILjava/lang/String;IIILjava/lang/String;J)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/utils/g;->a()V

    .line 3
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    invoke-virtual {v0, p1}, Lcom/netease/nis/quicklogin/utils/g$b;->a(Lcom/netease/nis/quicklogin/utils/g$c;)V

    .line 4
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    invoke-virtual {p1, p2}, Lcom/netease/nis/quicklogin/utils/g$b;->b(I)V

    if-eqz p3, :cond_0

    .line 5
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    invoke-virtual {p1, p3}, Lcom/netease/nis/quicklogin/utils/g$b;->i(Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    .line 6
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    invoke-virtual {p1, p5}, Lcom/netease/nis/quicklogin/utils/g$b;->a(I)V

    :cond_1
    if-eqz p6, :cond_2

    .line 7
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    invoke-virtual {p1, p6}, Lcom/netease/nis/quicklogin/utils/g$b;->c(I)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/utils/g$b;->a()V

    .line 9
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    invoke-virtual {p1, p4}, Lcom/netease/nis/quicklogin/utils/g$b;->d(I)V

    .line 10
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    invoke-virtual {p1, p7}, Lcom/netease/nis/quicklogin/utils/g$b;->e(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    invoke-virtual {p1, p8, p9}, Lcom/netease/nis/quicklogin/utils/g$b;->a(J)V

    return-void
.end method

.method public b()Lcom/netease/nis/quicklogin/utils/g$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    return-object v0
.end method

.method public d()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/netease/nis/quicklogin/QuickLogin;->isAllowedUploadInfo:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/utils/g;->a:Lcom/netease/nis/quicklogin/utils/g$b;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/utils/g$b;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x10

    .line 4
    invoke-static {v1}, Lcom/netease/nis/basesdk/EncryptUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    .line 5
    invoke-static {v2}, Lcom/netease/nis/basesdk/EncryptUtil;->getRandomString(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/netease/nis/quicklogin/utils/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    const-string v0, ""

    .line 8
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAjZBIRMtccHrq2VXapzir50diR1uZrR/SHc/mHMvW7sCZ7Bw/VfJkgdYCaNyyLLiIuOGw/OxHiocw95qPayfiMJkkKSR+XUc5KKWQuFSHmw2LNmq9YPdVtsqAjAQ4Qe3XcN1WQnrSpLsLer0WFSI+h0riBnvR9y9kn25RlC/uCvEo0//4r340RgOC1XLr3OPE1Nxc4WbrTN8uEB0hZ6PtWAY0ZQ6X8G+EXecbWHIhgBi9LhKhsZmIx3u/O+z+Jqx54nGgNhxVawsHtUBblT/oUAJzO0NkvYU0zFZ2ses9VnXXo/QwoYqcwnLIcf7zrQg5nVLTNyVpPZAFNdF/WsYJLQIDAQAB"

    invoke-static {v1, v2}, Lcom/netease/nis/basesdk/EncryptUtil;->RSAEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "d"

    .line 10
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rk"

    .line 11
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    const-string v1, "3.2.5"

    .line 12
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v0, Lcom/netease/nis/quicklogin/utils/g$a;

    invoke-direct {v0, p0}, Lcom/netease/nis/quicklogin/utils/g$a;-><init>(Lcom/netease/nis/quicklogin/utils/g;)V

    const/4 v1, 0x0

    const-string v3, "https://ye.dun.163yun.com/v2/collect"

    invoke-static {v3, v2, v1, v0}, Lcom/netease/nis/basesdk/HttpUtil;->doPostRequestByForm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    return-void
.end method
