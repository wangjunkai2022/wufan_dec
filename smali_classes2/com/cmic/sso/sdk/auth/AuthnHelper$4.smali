.class Lcom/cmic/sso/sdk/auth/AuthnHelper$4;
.super Ljava/lang/Object;
.source "AuthnHelper.java"

# interfaces
.implements Lcom/cmic/sso/sdk/auth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/auth/AuthnHelper;->a(Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/auth/c$a;

.field final synthetic b:Lcom/cmic/sso/sdk/auth/AuthnHelper;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/auth/AuthnHelper;Lcom/cmic/sso/sdk/auth/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$4;->b:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    iput-object p2, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$4;->a:Lcom/cmic/sso/sdk/auth/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "onBusinessComplete"

    .line 1
    invoke-static {v0, v0}, Lcom/cmic/sso/sdk/e/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$4;->b:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    iget-object v0, v0, Lcom/cmic/sso/sdk/auth/c;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$4;->a:Lcom/cmic/sso/sdk/auth/c$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "103000"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "traceId"

    .line 4
    invoke-virtual {p3, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$4;->b:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    iget-object p1, p1, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->a(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$4;->b:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return-void
.end method
