.class Lcom/netease/nis/quicklogin/QuickLogin$c;
.super Ljava/lang/Object;
.source "QuickLogin.java"

# interfaces
.implements Lcom/netease/nis/basesdk/HttpUtil$ResponseCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/QuickLogin;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Lcom/netease/nis/quicklogin/QuickLogin$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/netease/nis/quicklogin/listener/QuickLoginListener;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/netease/nis/quicklogin/QuickLogin$d;

.field final synthetic f:Lcom/netease/nis/quicklogin/QuickLogin;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/QuickLogin;JLcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;Ljava/lang/String;Lcom/netease/nis/quicklogin/QuickLogin$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Lcom/netease/nis/quicklogin/QuickLogin;

    iput-wide p2, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->a:J

    iput-object p4, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginListener;

    iput-object p5, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->e:Lcom/netease/nis/quicklogin/QuickLogin$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Lcom/netease/nis/quicklogin/QuickLogin;

    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginListener;

    invoke-static {v0, v1, p2}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preCheck [onError]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Lcom/netease/nis/quicklogin/QuickLogin;

    invoke-static {v1}, Lcom/netease/nis/quicklogin/QuickLogin;->d(Lcom/netease/nis/quicklogin/QuickLogin;)I

    move-result v3

    sget-object v0, Lcom/netease/nis/quicklogin/b/b;->f:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v2, 0x0

    move v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;IIILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Lcom/netease/nis/quicklogin/QuickLogin;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;J)J

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preCheck [onSuccess] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preCheck [time] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->a:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 4
    const-class v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;

    invoke-static {p1, v0}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 6
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;->getData()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;->getExtData()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v2, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginListener;

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;->getExtData()Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onExtendMsg(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/netease/nis/quicklogin/utils/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preCheck [real] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    .line 11
    const-class v2, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;

    invoke-static {v1, v2}, Lcom/netease/nis/quicklogin/utils/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;

    if-eqz v1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Lcom/netease/nis/quicklogin/QuickLogin;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Lcom/netease/nis/quicklogin/QuickLogin;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/netease/nis/quicklogin/QuickLogin;->c(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Lcom/netease/nis/quicklogin/QuickLogin;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/netease/nis/quicklogin/QuickLogin;->d(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Lcom/netease/nis/quicklogin/QuickLogin;

    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/netease/nis/quicklogin/QuickLogin;->b(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    invoke-virtual {v1}, Lcom/netease/nis/quicklogin/entity/PreCheckEntity$Data;->getOt()I

    move-result p1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    const/4 v1, 0x3

    if-gt p1, v1, :cond_1

    .line 17
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Lcom/netease/nis/quicklogin/QuickLogin;

    invoke-static {v1, p1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;I)I

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Lcom/netease/nis/quicklogin/QuickLogin;

    invoke-static {p1}, Lcom/netease/nis/quicklogin/QuickLogin;->e(Lcom/netease/nis/quicklogin/QuickLogin;)Lcom/netease/nis/quicklogin/a;

    move-result-object p1

    .line 19
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->e:Lcom/netease/nis/quicklogin/QuickLogin$d;

    invoke-interface {v1, p1}, Lcom/netease/nis/quicklogin/QuickLogin$d;->a(Lcom/netease/nis/quicklogin/a;)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Lcom/netease/nis/quicklogin/QuickLogin;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginListener;

    invoke-static {v1, v2, p1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    .line 21
    iget-object v3, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Lcom/netease/nis/quicklogin/QuickLogin;

    const/4 v4, 0x0

    invoke-static {v3}, Lcom/netease/nis/quicklogin/QuickLogin;->d(Lcom/netease/nis/quicklogin/QuickLogin;)I

    move-result v5

    sget-object v1, Lcom/netease/nis/quicklogin/b/b;->f:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;->getCode()I

    move-result v7

    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Lcom/netease/nis/quicklogin/QuickLogin;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginListener;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    .line 24
    iget-object v4, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Lcom/netease/nis/quicklogin/QuickLogin;

    invoke-static {v4}, Lcom/netease/nis/quicklogin/QuickLogin;->d(Lcom/netease/nis/quicklogin/QuickLogin;)I

    move-result v6

    sget-object v1, Lcom/netease/nis/quicklogin/b/b;->g:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;->getCode()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    invoke-static/range {v4 .. v9}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;IIILjava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_3
    iget-object v1, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Lcom/netease/nis/quicklogin/QuickLogin;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->b:Lcom/netease/nis/quicklogin/listener/QuickLoginListener;

    invoke-static {v1, v2, p1}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Lcom/netease/nis/quicklogin/listener/QuickLoginListener;Ljava/lang/String;)V

    .line 26
    iget-object v3, p0, Lcom/netease/nis/quicklogin/QuickLogin$c;->f:Lcom/netease/nis/quicklogin/QuickLogin;

    const/4 v4, 0x0

    invoke-static {v3}, Lcom/netease/nis/quicklogin/QuickLogin;->d(Lcom/netease/nis/quicklogin/QuickLogin;)I

    move-result v5

    sget-object v1, Lcom/netease/nis/quicklogin/b/b;->f:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/entity/PreCheckEntity;->getCode()I

    move-result v0

    move v7, v0

    :goto_0
    move-object v8, p1

    invoke-static/range {v3 .. v8}, Lcom/netease/nis/quicklogin/QuickLogin;->a(Lcom/netease/nis/quicklogin/QuickLogin;Ljava/lang/String;IIILjava/lang/String;)V

    :goto_1
    return-void
.end method
