.class Lcom/cmic/sso/sdk/auth/a$1;
.super Ljava/lang/Object;
.source "AuthnBusiness.java"

# interfaces
.implements Lcom/cmic/sso/sdk/c/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/auth/a;->b(Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/a;

.field final synthetic b:Lcom/cmic/sso/sdk/auth/b;

.field final synthetic c:Lcom/cmic/sso/sdk/auth/a;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/auth/a;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/a$1;->c:Lcom/cmic/sso/sdk/auth/a;

    iput-object p2, p0, Lcom/cmic/sso/sdk/auth/a$1;->a:Lcom/cmic/sso/sdk/a;

    iput-object p3, p0, Lcom/cmic/sso/sdk/auth/a$1;->b:Lcom/cmic/sso/sdk/auth/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/a$1;->c:Lcom/cmic/sso/sdk/auth/a;

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/a$1;->a:Lcom/cmic/sso/sdk/a;

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/a$1;->b:Lcom/cmic/sso/sdk/auth/b;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/cmic/sso/sdk/auth/a;->a(Lcom/cmic/sso/sdk/auth/a;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/auth/b;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
