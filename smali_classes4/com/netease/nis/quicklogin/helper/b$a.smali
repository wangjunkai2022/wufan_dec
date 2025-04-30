.class Lcom/netease/nis/quicklogin/helper/b$a;
.super Ljava/lang/Object;
.source "CmLoginHelper.java"

# interfaces
.implements Lcom/cmic/sso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/helper/b;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/nis/quicklogin/helper/b;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/helper/b;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/b$a;->c:Lcom/netease/nis/quicklogin/helper/b;

    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/b$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    iput-object p3, p0, Lcom/netease/nis/quicklogin/helper/b$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTokenComplete(ILorg/json/JSONObject;)V
    .locals 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prefetchMobileNumber [callback]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prefetchMobileNumber [time]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchDataStartTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v0, Lcom/netease/nis/quicklogin/entity/CMPrefetchNumber;

    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/nis/quicklogin/entity/CMPrefetchNumber;

    const-string v0, "\u79fb\u52a8 prefetchMobileNumber failed:"

    const-string v1, "\u79fb\u52a8 prefetchMobileNumber [error]"

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/entity/CMPrefetchNumber;->getDesc()Ljava/lang/String;

    move-result-object p2

    const-string v2, "true"

    .line 5
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/b$a;->c:Lcom/netease/nis/quicklogin/helper/b;

    invoke-static {p2}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;)Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    const-string v2, "timeend"

    invoke-static {p2, v2, v0, v1}, Lcom/netease/nis/quicklogin/utils/e;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 7
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/b$a;->c:Lcom/netease/nis/quicklogin/helper/b;

    invoke-static {p2}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b$a;->c:Lcom/netease/nis/quicklogin/helper/b;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/helper/b;->b(Lcom/netease/nis/quicklogin/helper/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmccAppid"

    invoke-static {p2, v1, v0}, Lcom/netease/nis/quicklogin/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/b$a;->c:Lcom/netease/nis/quicklogin/helper/b;

    invoke-static {p2}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;)Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b$a;->c:Lcom/netease/nis/quicklogin/helper/b;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/helper/b;->c(Lcom/netease/nis/quicklogin/helper/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmccAppkey"

    invoke-static {p2, v1, v0}, Lcom/netease/nis/quicklogin/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/b$a;->c:Lcom/netease/nis/quicklogin/helper/b;

    invoke-static {p2}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/entity/CMPrefetchNumber;->getSecurityphone()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone"

    invoke-static {p2, v1, v0}, Lcom/netease/nis/quicklogin/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/b$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    if-eqz p2, :cond_4

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/entity/CMPrefetchNumber;->getSecurityphone()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 13
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/entity/CMPrefetchNumber;->getResultCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " desc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " scripExpiresIn:"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/entity/CMPrefetchNumber;->getScripExpiresIn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/b$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    if-eqz v1, :cond_1

    .line 16
    :try_start_1
    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/b$a;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b$a;->c:Lcom/netease/nis/quicklogin/helper/b;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/b$a;->b:Ljava/lang/String;

    sget-object v2, Lcom/netease/nis/quicklogin/b/b;->f:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/entity/CMPrefetchNumber;->getResultCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/a;->b(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, v1, v2, p1, p2}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/b$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    if-eqz p1, :cond_3

    .line 21
    :try_start_2
    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/b$a;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 23
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/b$a;->c:Lcom/netease/nis/quicklogin/helper/b;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b$a;->b:Ljava/lang/String;

    sget-object v1, Lcom/netease/nis/quicklogin/b/b;->f:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, p2}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;Ljava/lang/String;IILjava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
