.class Lcom/cmic/sso/sdk/auth/AuthnHelper$2;
.super Lcom/cmic/sso/sdk/e/n$a;
.source "AuthnHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cmic/sso/sdk/auth/AuthnHelper;->loginAuth(Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cmic/sso/sdk/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/cmic/sso/sdk/auth/TokenListener;

.field final synthetic e:Lcom/cmic/sso/sdk/auth/AuthnHelper;


# direct methods
.method constructor <init>(Lcom/cmic/sso/sdk/auth/AuthnHelper;Landroid/content/Context;Lcom/cmic/sso/sdk/a;Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/auth/TokenListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->e:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    iput-object p4, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->a:Lcom/cmic/sso/sdk/a;

    iput-object p5, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->c:Ljava/lang/String;

    iput-object p7, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->d:Lcom/cmic/sso/sdk/auth/TokenListener;

    invoke-direct {p0, p2, p3}, Lcom/cmic/sso/sdk/e/n$a;-><init>(Landroid/content/Context;Lcom/cmic/sso/sdk/a;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->e:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->a:Lcom/cmic/sso/sdk/a;

    iget-object v2, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->d:Lcom/cmic/sso/sdk/auth/TokenListener;

    const-string v4, "loginAuth"

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v6}, Lcom/cmic/sso/sdk/auth/c;->a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/cmic/sso/sdk/auth/TokenListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->e:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    iget-object v0, v0, Lcom/cmic/sso/sdk/auth/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmic/sso/sdk/e/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->a:Lcom/cmic/sso/sdk/a;

    const-string v2, "phonescrip"

    invoke-virtual {v1, v2, v0}, Lcom/cmic/sso/sdk/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->e:Lcom/cmic/sso/sdk/auth/AuthnHelper;

    iget-object v1, p0, Lcom/cmic/sso/sdk/auth/AuthnHelper$2;->a:Lcom/cmic/sso/sdk/a;

    invoke-virtual {v0, v1}, Lcom/cmic/sso/sdk/auth/AuthnHelper;->a(Lcom/cmic/sso/sdk/a;)V

    :cond_1
    return-void
.end method
