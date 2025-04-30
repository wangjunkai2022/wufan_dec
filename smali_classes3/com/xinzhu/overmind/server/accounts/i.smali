.class Lcom/xinzhu/overmind/server/accounts/i;
.super Ljava/lang/Object;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/accounts/i$b;,
        Lcom/xinzhu/overmind/server/accounts/i$a;,
        Lcom/xinzhu/overmind/server/accounts/i$c;
    }
.end annotation


# static fields
.field private static final b:I = 0xfa00


# instance fields
.field private a:Lcom/xinzhu/overmind/server/accounts/i$b;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/i$b;

    invoke-direct {v0}, Lcom/xinzhu/overmind/server/accounts/i$b;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i;->a:Lcom/xinzhu/overmind/server/accounts/i$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "tokenType",
            "packageName",
            "sigDigest"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/i$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/i$a;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 2
    iget-object p2, p0, Lcom/xinzhu/overmind/server/accounts/i;->a:Lcom/xinzhu/overmind/server/accounts/i$b;

    invoke-virtual {p2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xinzhu/overmind/server/accounts/i$c;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    if-eqz p2, :cond_0

    .line 4
    iget-wide v0, p2, Lcom/xinzhu/overmind/server/accounts/i$c;->b:J

    cmp-long v2, p3, v0

    if-gez v2, :cond_0

    .line 5
    iget-object p1, p2, Lcom/xinzhu/overmind/server/accounts/i$c;->a:Ljava/lang/String;

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object p2, p2, Lcom/xinzhu/overmind/server/accounts/i$c;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "account",
            "token",
            "tokenType",
            "packageName",
            "sigDigest",
            "expiryMillis"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v2, v0, p6

    if-lez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/i$a;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/xinzhu/overmind/server/accounts/i$a;-><init>(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 4
    new-instance p1, Lcom/xinzhu/overmind/server/accounts/i$c;

    invoke-direct {p1, p2, p6, p7}, Lcom/xinzhu/overmind/server/accounts/i$c;-><init>(Ljava/lang/String;J)V

    .line 5
    iget-object p2, p0, Lcom/xinzhu/overmind/server/accounts/i;->a:Lcom/xinzhu/overmind/server/accounts/i$b;

    invoke-virtual {p2, v0, p1}, Lcom/xinzhu/overmind/server/accounts/i$b;->d(Lcom/xinzhu/overmind/server/accounts/i$a;Lcom/xinzhu/overmind/server/accounts/i$c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Landroid/accounts/Account;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "account"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i;->a:Lcom/xinzhu/overmind/server/accounts/i$b;

    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/accounts/i$b;->b(Landroid/accounts/Account;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "accountType",
            "token"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i;->a:Lcom/xinzhu/overmind/server/accounts/i$b;

    invoke-virtual {v0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/i$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
