.class public Lcom/cmic/sso/sdk/auth/c$a;
.super Ljava/lang/Object;
.source "AuthnHelperCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cmic/sso/sdk/auth/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/auth/c;

.field private final b:Lcom/cmic/sso/sdk/a;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/auth/c;Lcom/cmic/sso/sdk/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/c$a;->a:Lcom/cmic/sso/sdk/auth/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/cmic/sso/sdk/auth/c$a;->b:Lcom/cmic/sso/sdk/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/c$a;->a:Lcom/cmic/sso/sdk/auth/c;

    iget-object v0, v0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/r;->a(Landroid/content/Context;)Lcom/cmic/sso/sdk/e/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cmic/sso/sdk/e/r;->a()Z

    move-result v0

    const-string/jumbo v1, "\u767b\u5f55\u8d85\u65f6"

    const-string v2, "200023"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/c$a;->b:Lcom/cmic/sso/sdk/a;

    const/4 v3, 0x0

    const-string v4, "doNetworkSwitch"

    .line 2
    invoke-virtual {v0, v4, v3}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "102508"

    const-string/jumbo v3, "\u6570\u636e\u7f51\u7edc\u5207\u6362\u5931\u8d25"

    .line 3
    invoke-static {v0, v3}, Lcom/cmic/sso/sdk/auth/d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v2, v1}, Lcom/cmic/sso/sdk/auth/d;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/cmic/sso/sdk/auth/c$a;->a:Lcom/cmic/sso/sdk/auth/c;

    const-string v4, "resultCode"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "resultString"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/cmic/sso/sdk/auth/c$a;->b:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v3, v2, v1, v4, v0}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return-void
.end method
