.class public Lcom/netease/nis/basesdk/crash/StartReportRunnable;
.super Ljava/lang/Object;
.source "StartReportRunnable.java"

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
    iput-object p1, p0, Lcom/netease/nis/basesdk/crash/StartReportRunnable;->b:Ljava/util/Map;

    .line 3
    iput-object p2, p0, Lcom/netease/nis/basesdk/crash/StartReportRunnable;->a:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/netease/nis/basesdk/crash/StartReportRunnable;->c:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    return-void
.end method

.method static synthetic a(Lcom/netease/nis/basesdk/crash/StartReportRunnable;)Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/nis/basesdk/crash/StartReportRunnable;->c:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/StartReportRunnable;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/nis/basesdk/crash/StartReportRunnable;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/nis/basesdk/crash/StartReportRunnable;->c:Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/netease/nis/basesdk/crash/StartReportRunnable;->a:Ljava/lang/String;

    new-instance v2, Lcom/netease/nis/basesdk/crash/StartReportRunnable$a;

    invoke-direct {v2, p0}, Lcom/netease/nis/basesdk/crash/StartReportRunnable$a;-><init>(Lcom/netease/nis/basesdk/crash/StartReportRunnable;)V

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Lcom/netease/nis/basesdk/HttpUtil;->doPostRequestByForm(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;)V

    :cond_0
    return-void
.end method
