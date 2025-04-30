.class Lcom/netease/nis/quicklogin/helper/c$a;
.super Ljava/lang/Object;
.source "CtLoginHelper.java"

# interfaces
.implements Lcn/com/chinatelecom/account/api/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/helper/c;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/nis/quicklogin/helper/c;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/helper/c;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/c$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    iput-object p3, p0, Lcom/netease/nis/quicklogin/helper/c$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefetchMobileNumber [callback]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefetchMobileNumber [time]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchDataStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 3
    const-class v0, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;

    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;

    const-string v1, "\u7535\u4fe1"

    const-string v2, "\u7535\u4fe1 prefetchMobileNumber [error]"

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;->getResult()I

    move-result v3

    .line 5
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;->getMsg()Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_0

    .line 6
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;->getData()Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber$Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber$Data;->getAccessCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/nis/quicklogin/helper/c;->a(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;->getData()Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber$Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber$Data;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/nis/quicklogin/helper/c;->b(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;->getData()Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber$Data;->getGwAuth()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/helper/c;->c(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/c;->d(Lcom/netease/nis/quicklogin/helper/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    const-string v2, "timeend"

    invoke-static {p1, v2, v0, v1}, Lcom/netease/nis/quicklogin/utils/e;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 10
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/c;->d(Lcom/netease/nis/quicklogin/helper/c;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/helper/c;->b(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ctccNumber"

    invoke-static {p1, v1, v0}, Lcom/netease/nis/quicklogin/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/c;->d(Lcom/netease/nis/quicklogin/helper/c;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/helper/c;->a(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ctccAccessCode"

    invoke-static {p1, v1, v0}, Lcom/netease/nis/quicklogin/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/c;->d(Lcom/netease/nis/quicklogin/helper/c;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/helper/c;->c(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ctccGwAuth"

    invoke-static {p1, v1, v0}, Lcom/netease/nis/quicklogin/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/c$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    if-eqz p1, :cond_4

    .line 14
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c$a;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    invoke-static {v1}, Lcom/netease/nis/quicklogin/helper/c;->b(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 15
    :cond_0
    iget-object v5, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " reqId:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/CTPrefetchNumber;->getReqId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/nis/quicklogin/helper/c;->d(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    invoke-static {v2}, Lcom/netease/nis/quicklogin/helper/c;->e(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    if-eqz v0, :cond_1

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/c$a;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    invoke-static {v1}, Lcom/netease/nis/quicklogin/helper/c;->e(Lcom/netease/nis/quicklogin/helper/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 20
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/c$a;->b:Ljava/lang/String;

    sget-object v2, Lcom/netease/nis/quicklogin/b/b;->f:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v0, v1, v2, v3, p1}, Lcom/netease/nis/quicklogin/helper/c;->a(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_2

    .line 21
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    if-eqz v0, :cond_3

    .line 23
    :try_start_1
    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/c$a;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 25
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/c$a;->c:Lcom/netease/nis/quicklogin/helper/c;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/c$a;->b:Ljava/lang/String;

    sget-object v2, Lcom/netease/nis/quicklogin/b/b;->f:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/netease/nis/quicklogin/helper/c;->a(Lcom/netease/nis/quicklogin/helper/c;Ljava/lang/String;IILjava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
