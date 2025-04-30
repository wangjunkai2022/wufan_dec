.class Lcom/cmic/sso/sdk/view/LoginAuthActivity$b$1;
.super Ljava/lang/Object;
.source "LoginAuthActivity.java"

# interfaces
.implements Lcom/cmic/sso/sdk/auth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/view/LoginAuthActivity$b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

.field final synthetic b:Lcom/cmic/sso/sdk/view/LoginAuthActivity$b;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/view/LoginAuthActivity$b;Lcom/cmic/sso/sdk/view/LoginAuthActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$b$1;->b:Lcom/cmic/sso/sdk/view/LoginAuthActivity$b;

    iput-object p2, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$b$1;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$b$1;->b:Lcom/cmic/sso/sdk/view/LoginAuthActivity$b;

    invoke-static {v0}, Lcom/cmic/sso/sdk/view/LoginAuthActivity$b;->a(Lcom/cmic/sso/sdk/view/LoginAuthActivity$b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "loginTime"

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p3, v0, v1, v2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "phonescrip"

    .line 3
    invoke-virtual {p3, v5}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    cmp-long v6, v3, v1

    if-eqz v6, :cond_1

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v3

    invoke-virtual {p3, v0, v1, v2}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;J)V

    :cond_1
    const-string v0, "103000"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "authClickSuccess"

    .line 6
    invoke-static {v0}, Lcom/cmic/sso/sdk/d/a;->a(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$b$1;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {v0, v1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b(Lcom/cmic/sso/sdk/view/LoginAuthActivity;Z)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$b$1;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->b(Lcom/cmic/sso/sdk/view/LoginAuthActivity;Z)Z

    const-string v0, "authClickFailed"

    .line 9
    invoke-static {v0}, Lcom/cmic/sso/sdk/d/a;->a(Ljava/lang/String;)V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$b$1;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->a(Lcom/cmic/sso/sdk/view/LoginAuthActivity;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    const-wide/16 p1, 0x3e8

    .line 11
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 13
    :goto_1
    iget-object p1, p0, Lcom/cmic/sso/sdk/view/LoginAuthActivity$b$1;->a:Lcom/cmic/sso/sdk/view/LoginAuthActivity;

    invoke-static {p1}, Lcom/cmic/sso/sdk/view/LoginAuthActivity;->j(Lcom/cmic/sso/sdk/view/LoginAuthActivity;)Lcom/cmic/sso/sdk/view/LoginAuthActivity$a;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
