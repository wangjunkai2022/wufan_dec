.class Lcom/cmic/sso/sdk/auth/c$5;
.super Ljava/lang/Object;
.source "AuthnHelperCore.java"

# interfaces
.implements Lcom/cmic/sso/sdk/auth/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/auth/c;->a(Lcom/cmic/sso/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/auth/c$a;

.field final synthetic b:Lcom/cmic/sso/sdk/auth/c;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/auth/c;Lcom/cmic/sso/sdk/auth/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/c$5;->b:Lcom/cmic/sso/sdk/auth/c;

    iput-object p2, p0, Lcom/cmic/sso/sdk/auth/c$5;->a:Lcom/cmic/sso/sdk/auth/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/c$5;->b:Lcom/cmic/sso/sdk/auth/c;

    iget-object v0, v0, Lcom/cmic/sso/sdk/auth/c;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/c$5;->a:Lcom/cmic/sso/sdk/auth/c$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/c$5;->b:Lcom/cmic/sso/sdk/auth/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V

    return-void
.end method
