.class Lcom/netease/nis/quicklogin/helper/d$a;
.super Ljava/lang/Object;
.source "CuLoginHelper.java"

# interfaces
.implements Lcom/sdk/Unicorn/base/api/CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/helper/d;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sdk/Unicorn/base/api/CallBack<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/nis/quicklogin/helper/d;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/helper/d;Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/d$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    iput-object p3, p0, Lcom/netease/nis/quicklogin/helper/d$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prefetchMobileNumber [callback]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefetchMobileNumber [time]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/netease/nis/quicklogin/QuickLogin;->prefetchDataStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    invoke-static {p1, p4}, Lcom/netease/nis/quicklogin/helper/d;->a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 5
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    invoke-static {p3}, Lcom/netease/nis/quicklogin/helper/d;->a(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    const-string p3, "fakeMobile"

    .line 7
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u8054\u901a\u83b7\u53d6\u63a9\u7801\u5931\u8d25"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/d$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    if-eqz p2, :cond_3

    .line 10
    :try_start_1
    iget-object p3, p0, Lcom/netease/nis/quicklogin/helper/d$a;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p4, :cond_0

    const-string p1, "\u8054\u901a\u65e0\u6cd5\u76f4\u63a5\u83b7\u53d6\u63a9\u7801"

    :cond_0
    :try_start_2
    invoke-interface {p2, p3, p1}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberSuccess(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "msg:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " seq:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/nis/quicklogin/helper/d;->a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u8054\u901a prefetchMobileNumber [error]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    invoke-static {p2}, Lcom/netease/nis/quicklogin/helper/d;->b(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    if-eqz p1, :cond_2

    .line 15
    :try_start_3
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/d$a;->b:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "\u8054\u901a"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    invoke-static {p5}, Lcom/netease/nis/quicklogin/helper/d;->b(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p2, p4}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 17
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/d$a;->b:Ljava/lang/String;

    sget-object p4, Lcom/netease/nis/quicklogin/b/b;->f:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    iget-object p5, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    invoke-static {p5}, Lcom/netease/nis/quicklogin/helper/d;->b(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1, p2, p4, p3, p5}, Lcom/netease/nis/quicklogin/helper/d;->a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;IILjava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onFailed(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " seq:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/netease/nis/quicklogin/helper/d;->a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u8054\u901a prefetchMobileNumber [error]"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    invoke-static {p3}, Lcom/netease/nis/quicklogin/helper/d;->b(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$a;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginPreMobileListener;

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    iget-object p3, p0, Lcom/netease/nis/quicklogin/helper/d$a;->b:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8054\u901a"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/helper/d;->b(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p1, p3, p4}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 6
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    iget-object p3, p0, Lcom/netease/nis/quicklogin/helper/d$a;->b:Ljava/lang/String;

    sget-object p4, Lcom/netease/nis/quicklogin/b/b;->f:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/d$a;->c:Lcom/netease/nis/quicklogin/helper/d;

    invoke-static {v0}, Lcom/netease/nis/quicklogin/helper/d;->b(Lcom/netease/nis/quicklogin/helper/d;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, p4, p2, v0}, Lcom/netease/nis/quicklogin/helper/d;->a(Lcom/netease/nis/quicklogin/helper/d;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuccess(ILjava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    check-cast p4, Ljava/lang/String;

    invoke-virtual/range {p0 .. p5}, Lcom/netease/nis/quicklogin/helper/d$a;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
