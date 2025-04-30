.class public Lcom/netease/nis/basesdk/crash/CrashReportRunnable;
.super Ljava/lang/Object;
.source "CrashReportRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;->b:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;->c:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/basesdk/crash/CrashReportRunnable;)Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;->c:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;->c:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;->a:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/CrashReportRunnable;->b:Ljava/util/Map;

    const-string v4, "utf-8"

    invoke-static {v0, v4}, Lcom/netease/nis/basesdk/HttpUtil;->map2Form(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/netease/nis/basesdk/crash/CrashReportRunnable$a;

    invoke-direct {v7, p0}, Lcom/netease/nis/basesdk/crash/CrashReportRunnable$a;-><init>(Lcom/netease/nis/basesdk/crash/CrashReportRunnable;)V

    invoke-static/range {v1 .. v7}, Lcom/netease/nis/basesdk/HttpUtil;->doHttpRequest(Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Map;Landroid/net/Network;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EncodingException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
