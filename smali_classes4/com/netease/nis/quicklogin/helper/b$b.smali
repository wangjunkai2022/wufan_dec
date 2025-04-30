.class Lcom/netease/nis/quicklogin/helper/b$b;
.super Ljava/lang/Object;
.source "CmLoginHelper.java"

# interfaces
.implements Lcom/cmic/sso/sdk/auth/TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/helper/b;->a(Ljava/lang/String;Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;)V
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
    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/b$b;->c:Lcom/netease/nis/quicklogin/helper/b;

    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/b$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    iput-object p3, p0, Lcom/netease/nis/quicklogin/helper/b$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTokenComplete(ILorg/json/JSONObject;)V
    .locals 7

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onePass [callback]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->d(Ljava/lang/String;)V

    :try_start_0
    const-string p1, "resultCode"

    .line 2
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "103000"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v1, "200020"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "token"

    .line 4
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 6
    :try_start_2
    invoke-static {}, Lcom/netease/nis/quicklogin/utils/d;->a()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 7
    :try_start_3
    iget-object v3, p0, Lcom/netease/nis/quicklogin/helper/b$b;->c:Lcom/netease/nis/quicklogin/helper/b;

    invoke-static {v3}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/nis/quicklogin/utils/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v2, v0

    .line 8
    :goto_0
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 9
    :goto_1
    iget-object v3, p0, Lcom/netease/nis/quicklogin/helper/b$b;->c:Lcom/netease/nis/quicklogin/helper/b;

    invoke-static {v3}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "timeend"

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/netease/nis/quicklogin/utils/e;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 10
    iget-object v3, p0, Lcom/netease/nis/quicklogin/helper/b$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    iget-object v4, p0, Lcom/netease/nis/quicklogin/helper/b$b;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/netease/nis/quicklogin/helper/b$b;->c:Lcom/netease/nis/quicklogin/helper/b;

    invoke-static {v5, v2, p2, v0}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v3, v4, p2}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 11
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_1

    .line 13
    :try_start_5
    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/b$b;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u79fb\u52a8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/netease/nis/quicklogin/listener/QuickLoginListener;->onGetTokenError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 14
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 15
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b$b;->c:Lcom/netease/nis/quicklogin/helper/b;

    iget-object v2, p0, Lcom/netease/nis/quicklogin/helper/b$b;->b:Ljava/lang/String;

    sget-object v3, Lcom/netease/nis/quicklogin/b/b;->f:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {p1}, Lcom/netease/nis/quicklogin/utils/a;->b(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v2, v3, v4, p2}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;Ljava/lang/String;IILjava/lang/String;)V

    .line 16
    :cond_2
    :goto_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/netease/nis/quicklogin/helper/b$b;->a:Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;->onCancelGetToken()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/netease/nis/quicklogin/helper/b$b;->c:Lcom/netease/nis/quicklogin/helper/b;

    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/b$b;->b:Ljava/lang/String;

    sget-object v1, Lcom/netease/nis/quicklogin/b/b;->g:Lcom/netease/nis/quicklogin/b/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2, p1}, Lcom/netease/nis/quicklogin/helper/b;->a(Lcom/netease/nis/quicklogin/helper/b;Ljava/lang/String;IILjava/lang/String;)V

    :cond_3
    :goto_4
    return-void
.end method
