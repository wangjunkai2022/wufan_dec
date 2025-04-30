.class Lcom/xinzhu/overmind/server/accounts/i$b$a;
.super Ljava/lang/Object;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/i$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/accounts/i$a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/xinzhu/overmind/server/accounts/i$b;


# direct methods
.method public constructor <init>(Lcom/xinzhu/overmind/server/accounts/i$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/i$b$a;->b:Lcom/xinzhu/overmind/server/accounts/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/i$b$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Lcom/xinzhu/overmind/server/accounts/i$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i$b$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/accounts/i$b$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/accounts/i$a;

    .line 2
    iget-object v2, p0, Lcom/xinzhu/overmind/server/accounts/i$b$a;->b:Lcom/xinzhu/overmind/server/accounts/i$b;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
