.class Lcom/netease/nis/quicklogin/helper/b$c;
.super Ljava/lang/Object;
.source "CmLoginHelper.java"

# interfaces
.implements Lcom/cmic/sso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/helper/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/netease/nis/quicklogin/helper/b;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/helper/b;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/b$c;->c:Lcom/netease/nis/quicklogin/helper/b;

    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/b$c;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    iput-object p3, p0, Lcom/netease/nis/quicklogin/helper/b$c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTokenComplete(ILorg/json/JSONObject;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getToken [callback]"

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

    const-string v0, "getToken [time]"

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

    const-string p1, "resultCode"

    .line 3
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "103000"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "token"

    .line 5
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/b$c;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    if-eqz p2, :cond_2

    .line 7
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b$c;->b:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b$c;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/b$c;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u79fb\u52a8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b$c;->c:Lcom/netease/nis/quicklogin/helper/b;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/b$c;->b:Ljava/lang/String;

    sget-object v2, Lcom/netease/nis/quicklogin/b/b;->f:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/a;->b(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, v2, p1, p2}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 13
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/b$c;->c:Lcom/netease/nis/quicklogin/helper/b;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b$c;->b:Ljava/lang/String;

    sget-object v1, Lcom/netease/nis/quicklogin/b/b;->g:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2, p1}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;Ljava/lang/String;IILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
