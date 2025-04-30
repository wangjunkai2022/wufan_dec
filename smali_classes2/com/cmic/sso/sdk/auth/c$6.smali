.class Lcom/cmic/sso/sdk/auth/c$6;
.super Ljava/lang/Object;
.source "AuthnHelperCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/auth/c;->callBackResult(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/a;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/auth/TokenListener;

.field final synthetic b:I

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Lcom/cmic/sso/sdk/auth/c;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/auth/c;Lcom/cmic/sso/sdk/auth/TokenListener;ILorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/c$6;->d:Lcom/cmic/sso/sdk/auth/c;

    iput-object p2, p0, Lcom/cmic/sso/sdk/auth/c$6;->a:Lcom/cmic/sso/sdk/auth/TokenListener;

    iput p3, p0, Lcom/cmic/sso/sdk/auth/c$6;->b:I

    iput-object p4, p0, Lcom/cmic/sso/sdk/auth/c$6;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/c$6;->a:Lcom/cmic/sso/sdk/auth/TokenListener;

    iget v1, p0, Lcom/cmic/sso/sdk/auth/c$6;->b:I

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/c$6;->c:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/cmic/sso/sdk/auth/TokenListener;->onGetTokenComplete(ILorg/json/JSONObject;)V

    return-void
.end method
