.class public Lcom/join/mgps/Util/k1;
.super Ljava/lang/Object;
.source "PayGameUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/k1$c;,
        Lcom/join/mgps/Util/k1$b;
    }
.end annotation


# static fields
.field static a:Lcom/join/mgps/Util/k1;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/Util/k1;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/Util/k1;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c()Lcom/join/mgps/Util/k1;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/Util/k1;->a:Lcom/join/mgps/Util/k1;

    if-nez v0, :cond_0

    new-instance v0, Lcom/join/mgps/Util/k1;

    invoke-direct {v0}, Lcom/join/mgps/Util/k1;-><init>()V

    sput-object v0, Lcom/join/mgps/Util/k1;->a:Lcom/join/mgps/Util/k1;

    .line 2
    :cond_0
    sget-object v0, Lcom/join/mgps/Util/k1;->a:Lcom/join/mgps/Util/k1;

    return-object v0
.end method

.method private d()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public b(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/k1$b;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method checkPayGameResult() called.appkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xxxxx"

    invoke-static {v1, v0}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/join/mgps/Util/k1$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/Util/k1$c;-><init>(Lcom/join/mgps/Util/k1;)V

    .line 3
    :try_start_0
    new-instance v8, Lcom/join/mgps/Util/k1$a;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, v0

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/Util/k1$a;-><init>(Lcom/join/mgps/Util/k1;Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/k1$c;Lcom/join/mgps/Util/k1$b;)V

    .line 4
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPayGamePay::Exception"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    invoke-interface {p3, v0}, Lcom/join/mgps/Util/k1$b;->a(Lcom/join/mgps/Util/k1$c;)V

    :goto_0
    return-void
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.join.android.wufun.sdk.wfsg.broadcast."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p2, Lcom/join/mgps/Util/k1$c;

    invoke-direct {p2, p0}, Lcom/join/mgps/Util/k1$c;-><init>(Lcom/join/mgps/Util/k1;)V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p2, v1}, Lcom/join/mgps/Util/k1$c;->d(I)V

    .line 4
    invoke-direct {p0}, Lcom/join/mgps/Util/k1;->d()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/join/mgps/Util/k1$c;->f(J)V

    .line 5
    invoke-virtual {p2, p3}, Lcom/join/mgps/Util/k1$c;->e(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->defaultAll()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "result"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
