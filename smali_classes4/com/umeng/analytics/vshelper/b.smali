.class public Lcom/umeng/analytics/vshelper/b;
.super Ljava/lang/Object;
.source "RealTimeDebugSwitch.java"

# interfaces
.implements Lcom/umeng/analytics/pro/an;


# static fields
.field private static final a:Ljava/lang/String; = "RealTimeDebugSwitch"

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    sget p2, Lcom/umeng/analytics/vshelper/b;->b:I

    if-nez p2, :cond_9

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "MobclickRT"

    if-eqz p2, :cond_8

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 4
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v2, "um."

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v1, "debugkey"

    .line 6
    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sendaging"

    .line 7
    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_0

    .line 10
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    move-wide v6, v4

    .line 11
    :goto_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v8, 0x2017

    cmp-long v9, v6, v4

    if-gez v9, :cond_2

    .line 13
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->isRealTimeDebugMode()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "--->>> call turnOffRealTimeDebug because sendaging < 0"

    .line 14
    invoke-static {v0, p2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/umeng/analytics/AnalyticsConfig;->turnOffRealTimeDebug()V

    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 17
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p2

    .line 18
    invoke-static {p1, v8, p2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    const-string p1, "--->>> Not currently in RealTimeDebug mode and doing nothing."

    .line 19
    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    cmp-long v9, v6, v4

    if-lez v9, :cond_5

    .line 20
    invoke-static {p2}, Lcom/umeng/analytics/AnalyticsConfig;->turnOnRealTimeDebug(Ljava/util/Map;)V

    .line 21
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v3, "startTime"

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide/16 v3, 0x3c

    cmp-long v5, v6, v3

    if-gez v5, :cond_3

    move-wide v6, v3

    :cond_3
    const-wide/16 v3, 0xf0

    cmp-long v5, v6, v3

    if-lez v5, :cond_4

    move-wide v6, v3

    :cond_4
    const-string v3, "period"

    .line 23
    invoke-virtual {p2, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 24
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :catchall_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/16 v1, 0x2016

    .line 26
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object v3

    .line 27
    invoke-static {p1, v1, v3, p2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "--->>> turnOnRealTimeDebug[persistent] dk: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; period: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_5
    invoke-static {p2}, Lcom/umeng/analytics/AnalyticsConfig;->turnOnRealTimeDebug(Ljava/util/Map;)V

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/umeng/analytics/CoreProtocol;->getInstance(Landroid/content/Context;)Lcom/umeng/analytics/CoreProtocol;

    move-result-object p2

    .line 32
    invoke-static {p1, v8, p2, v3}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "--->>> turnOnRealTimeDebug[non-persistent] dk: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "--->>> scheme: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> uri: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 36
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> intent: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 0

    .line 1
    sget p1, Lcom/umeng/analytics/vshelper/b;->b:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/umeng/analytics/vshelper/b;->b:I

    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 0

    .line 1
    sget p1, Lcom/umeng/analytics/vshelper/b;->b:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/umeng/analytics/vshelper/b;->b:I

    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
