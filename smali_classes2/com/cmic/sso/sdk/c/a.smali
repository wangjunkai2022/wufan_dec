.class public Lcom/cmic/sso/sdk/c/a;
.super Ljava/lang/Object;
.source "RedirectHandler.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/g;)Lcom/cmic/sso/sdk/c/c/c;
    .locals 1

    .line 22
    new-instance v0, Lcom/cmic/sso/sdk/c/c/c;

    invoke-direct {v0, p1, p4, p3, p2}, Lcom/cmic/sso/sdk/c/c/c;-><init>(Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/g;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "GET"

    .line 23
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Content-Type"

    const-string p2, "application/x-www-form-urlencoded"

    .line 24
    invoke-virtual {v0, p1, p2}, Lcom/cmic/sso/sdk/c/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/b;Lcom/cmic/sso/sdk/a;)Lcom/cmic/sso/sdk/c/c/c;
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/cmic/sso/sdk/c/d/b;->b()Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/cmic/sso/sdk/c/a;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "pplocation"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 5
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/cmic/sso/sdk/c/a;->a:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/cmic/sso/sdk/c/d/b;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/cmic/sso/sdk/e/q;->b(Lcom/cmic/sso/sdk/a;Ljava/lang/String;)V

    const-string p2, "Location"

    .line 7
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/util/List;

    :cond_2
    if-eqz v1, :cond_5

    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 11
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/cmic/sso/sdk/c/a;->b:Ljava/lang/String;

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "operatortype"

    const-string v0, "0"

    .line 13
    invoke-virtual {p3, p2, v0}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "2"

    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p2, "getUnicomMobile"

    .line 15
    invoke-static {p3, p2}, Lcom/cmic/sso/sdk/e/q;->a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "3"

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "getTelecomMobile"

    .line 17
    invoke-static {p3, p2}, Lcom/cmic/sso/sdk/e/q;->a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p2, "NONE"

    .line 18
    invoke-static {p3, p2}, Lcom/cmic/sso/sdk/e/q;->a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;)V

    .line 19
    :cond_5
    :goto_0
    new-instance p2, Lcom/cmic/sso/sdk/c/b/c;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/c/c/c;->k()Lcom/cmic/sso/sdk/c/b/g;

    move-result-object p3

    invoke-virtual {p3}, Lcom/cmic/sso/sdk/c/b/g;->a()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/cmic/sso/sdk/c/b/c;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object p3, p0, Lcom/cmic/sso/sdk/c/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/c/c/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-direct {p0, p3, v0, v1, p2}, Lcom/cmic/sso/sdk/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/g;)Lcom/cmic/sso/sdk/c/c/c;

    move-result-object p2

    .line 21
    invoke-virtual {p1}, Lcom/cmic/sso/sdk/c/c/c;->h()Landroid/net/Network;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/cmic/sso/sdk/c/c/c;->a(Landroid/net/Network;)V

    return-object p2
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/cmic/sso/sdk/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/cmic/sso/sdk/c/c/c;Lcom/cmic/sso/sdk/c/d/b;Lcom/cmic/sso/sdk/a;)Lcom/cmic/sso/sdk/c/c/c;
    .locals 3

    const-string v0, "operatortype"

    const-string v1, "0"

    .line 1
    invoke-virtual {p3, v0, v1}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "getNewUnicomPhoneNumberNotify"

    .line 3
    invoke-static {p3, v0}, Lcom/cmic/sso/sdk/e/q;->a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "3"

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "getNewTelecomPhoneNumberNotify"

    .line 5
    invoke-static {p3, v0}, Lcom/cmic/sso/sdk/e/q;->a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "NONE"

    .line 6
    invoke-static {p3, v0}, Lcom/cmic/sso/sdk/e/q;->a(Lcom/cmic/sso/sdk/a;Ljava/lang/String;)V

    .line 7
    :goto_0
    invoke-virtual {p2}, Lcom/cmic/sso/sdk/c/d/b;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/cmic/sso/sdk/e/q;->b(Lcom/cmic/sso/sdk/a;Ljava/lang/String;)V

    .line 8
    new-instance v0, Lcom/cmic/sso/sdk/c/b/d;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/c/c/c;->k()Lcom/cmic/sso/sdk/c/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cmic/sso/sdk/c/b/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p2}, Lcom/cmic/sso/sdk/c/d/b;->c()Ljava/lang/String;

    move-result-object p2

    const-string v2, "1.0"

    invoke-direct {v0, v1, v2, p2}, Lcom/cmic/sso/sdk/c/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "userCapaid"

    .line 10
    invoke-virtual {p3, p2}, Lcom/cmic/sso/sdk/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/cmic/sso/sdk/c/b/d;->c(Ljava/lang/String;)V

    const-string p2, "logintype"

    .line 11
    invoke-virtual {p3, p2}, Lcom/cmic/sso/sdk/a;->c(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    const-string p2, "authz"

    .line 12
    invoke-virtual {v0, p2}, Lcom/cmic/sso/sdk/c/b/d;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p2, "pre"

    .line 13
    invoke-virtual {v0, p2}, Lcom/cmic/sso/sdk/c/b/d;->b(Ljava/lang/String;)V

    .line 14
    :goto_1
    iget-object p2, p0, Lcom/cmic/sso/sdk/c/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cmic/sso/sdk/c/c/c;->f()Ljava/lang/String;

    move-result-object p3

    const-string v1, "POST"

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/cmic/sso/sdk/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmic/sso/sdk/c/b/g;)Lcom/cmic/sso/sdk/c/c/c;

    move-result-object p2

    .line 15
    invoke-virtual {p1}, Lcom/cmic/sso/sdk/c/c/c;->h()Landroid/net/Network;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/cmic/sso/sdk/c/c/c;->a(Landroid/net/Network;)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/cmic/sso/sdk/c/a;->a:Ljava/lang/String;

    return-object p2
.end method
