.class Lcom/netease/nis/quicklogin/helper/d$b;
.super Ljava/lang/Object;
.source "CuLoginHelper.java"

# interfaces
.implements Lcom/sdk/Unicorn/base/api/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/helper/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sdk/Unicorn/base/api/CallBack<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/nis/quicklogin/helper/d;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/helper/d;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$b;->c:Lcom/netease/nis/quicklogin/helper/d;

    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/d$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    iput-object p3, p0, Lcom/netease/nis/quicklogin/helper/d$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "msg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " seq:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p3, p0, Lcom/netease/nis/quicklogin/helper/d$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    iget-object p4, p0, Lcom/netease/nis/quicklogin/helper/d$b;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8054\u901a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p4, v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p3, p0, Lcom/netease/nis/quicklogin/helper/d$b;->c:Lcom/netease/nis/quicklogin/helper/d;

    iget-object p4, p0, Lcom/netease/nis/quicklogin/helper/d$b;->b:Ljava/lang/String;

    sget-object v0, Lcom/netease/nis/quicklogin/b/b;->f:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-static {p3, p4, v0, p2, p1}, Lcom/netease/nis/quicklogin/helper/d;->a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getToken [callback]"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getToken [time]"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    sget-wide v0, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchDataStartTime:J

    sub-long/2addr p4, v0

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, "ms"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    const-string p2, "accessCode"

    .line 4
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p4, "accessToken"

    .line 6
    invoke-virtual {p2, p4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "version"

    const-string p4, "v2"

    .line 7
    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "md5"

    .line 8
    :try_start_1
    iget-object p4, p0, Lcom/netease/nis/quicklogin/helper/d$b;->c:Lcom/netease/nis/quicklogin/helper/d;

    invoke-static {p4}, Lcom/netease/nis/quicklogin/helper/d;->c(Lcom/netease/nis/quicklogin/helper/d;)Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/sdk/Unicorn/base/api/ToolUtils;->getAppMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    if-eqz p1, :cond_2

    .line 10
    iget-object p4, p0, Lcom/netease/nis/quicklogin/helper/d$b;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p4, p2}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/d$b;->c:Lcom/netease/nis/quicklogin/helper/d;

    iget-object p4, p0, Lcom/netease/nis/quicklogin/helper/d$b;->b:Ljava/lang/String;

    sget-object p5, Lcom/netease/nis/quicklogin/b/b;->g:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p4, p5, p3, p1}, Lcom/netease/nis/quicklogin/helper/d;->a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    if-eqz p1, :cond_1

    .line 14
    iget-object p4, p0, Lcom/netease/nis/quicklogin/helper/d$b;->b:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8054\u901a"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p1, p4, p5}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$b;->c:Lcom/netease/nis/quicklogin/helper/d;

    iget-object p4, p0, Lcom/netease/nis/quicklogin/helper/d$b;->b:Ljava/lang/String;

    sget-object p5, Lcom/netease/nis/quicklogin/b/b;->f:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    invoke-static {p1, p4, p5, p3, p2}, Lcom/netease/nis/quicklogin/helper/d;->a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;IILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
