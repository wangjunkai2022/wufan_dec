.class Lcom/xinzhu/overmind/server/accounts/i$b;
.super Landroid/util/LruCache;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/accounts/i$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Lcom/xinzhu/overmind/server/accounts/i$a;",
        "Lcom/xinzhu/overmind/server/accounts/i$c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xinzhu/overmind/server/accounts/i$b$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/Account;",
            "Lcom/xinzhu/overmind/server/accounts/i$b$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0xfa00

    .line 1
    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->a:Ljava/util/HashMap;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected a(ZLcom/xinzhu/overmind/server/accounts/i$a;Lcom/xinzhu/overmind/server/accounts/i$c;Lcom/xinzhu/overmind/server/accounts/i$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "evicted",
            "k",
            "oldVal",
            "newVal"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-nez p4, :cond_0

    .line 1
    iget-object p1, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->a:Ljava/util/HashMap;

    new-instance p4, Landroid/util/Pair;

    iget-object p2, p2, Lcom/xinzhu/overmind/server/accounts/i$a;->a:Landroid/accounts/Account;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object p3, p3, Lcom/xinzhu/overmind/server/accounts/i$c;->a:Ljava/lang/String;

    invoke-direct {p4, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/accounts/i$b$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/accounts/i$b$a;->b()V

    :cond_0
    return-void
.end method

.method public b(Landroid/accounts/Account;)V
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/accounts/i$b$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/accounts/i$b$a;->b()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->a:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xinzhu/overmind/server/accounts/i$b$a;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/accounts/i$b$a;->b()V

    :cond_0
    return-void
.end method

.method public d(Lcom/xinzhu/overmind/server/accounts/i$a;Lcom/xinzhu/overmind/server/accounts/i$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "k",
            "v"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p1, Lcom/xinzhu/overmind/server/accounts/i$a;->a:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, p2, Lcom/xinzhu/overmind/server/accounts/i$c;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/accounts/i$b$a;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/xinzhu/overmind/server/accounts/i$b$a;

    invoke-direct {v1, p0}, Lcom/xinzhu/overmind/server/accounts/i$b$a;-><init>(Lcom/xinzhu/overmind/server/accounts/i$b;)V

    .line 4
    :cond_0
    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/accounts/i$b$a;->a(Lcom/xinzhu/overmind/server/accounts/i$a;)V

    .line 5
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->b:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/xinzhu/overmind/server/accounts/i$a;->a:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/accounts/i$b$a;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/xinzhu/overmind/server/accounts/i$b$a;

    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/server/accounts/i$b$a;-><init>(Lcom/xinzhu/overmind/server/accounts/i$b;)V

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/accounts/i$b$a;->a(Lcom/xinzhu/overmind/server/accounts/i$a;)V

    .line 9
    iget-object v1, p0, Lcom/xinzhu/overmind/server/accounts/i$b;->b:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/xinzhu/overmind/server/accounts/i$a;->a:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected e(Lcom/xinzhu/overmind/server/accounts/i$a;Lcom/xinzhu/overmind/server/accounts/i$c;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "k",
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p2, Lcom/xinzhu/overmind/server/accounts/i$c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "evicted",
            "k",
            "oldVal",
            "newVal"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/xinzhu/overmind/server/accounts/i$a;

    check-cast p3, Lcom/xinzhu/overmind/server/accounts/i$c;

    check-cast p4, Lcom/xinzhu/overmind/server/accounts/i$c;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/accounts/i$b;->a(ZLcom/xinzhu/overmind/server/accounts/i$a;Lcom/xinzhu/overmind/server/accounts/i$c;Lcom/xinzhu/overmind/server/accounts/i$c;)V

    return-void
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "k",
            "v"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/xinzhu/overmind/server/accounts/i$a;

    check-cast p2, Lcom/xinzhu/overmind/server/accounts/i$c;

    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/server/accounts/i$b;->e(Lcom/xinzhu/overmind/server/accounts/i$a;Lcom/xinzhu/overmind/server/accounts/i$c;)I

    move-result p1

    return p1
.end method
