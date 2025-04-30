.class public Lcom/facebook/datasource/f;
.super Ljava/lang/Object;
.source "FirstAvailableDataSourceSupplier.java"

# interfaces
.implements Lcom/facebook/common/internal/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/datasource/f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/k<",
        "Lcom/facebook/datasource/c<",
        "TT;>;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/datasource/c<",
            "TT;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/datasource/c<",
            "TT;>;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "List of suppliers is empty!"

    invoke-static {v0, v1}, Lcom/facebook/common/internal/h;->e(ZLjava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lcom/facebook/datasource/f;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/facebook/datasource/f;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/datasource/f;->a:Ljava/util/List;

    return-object p0
.end method

.method public static b(Ljava/util/List;)Lcom/facebook/datasource/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/facebook/common/internal/k<",
            "Lcom/facebook/datasource/c<",
            "TT;>;>;>;)",
            "Lcom/facebook/datasource/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/datasource/f;

    invoke-direct {v0, p0}, Lcom/facebook/datasource/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public c()Lcom/facebook/datasource/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/datasource/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/datasource/f$b;

    invoke-direct {v0, p0}, Lcom/facebook/datasource/f$b;-><init>(Lcom/facebook/datasource/f;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/facebook/datasource/f;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/facebook/datasource/f;

    .line 3
    iget-object v0, p0, Lcom/facebook/datasource/f;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/facebook/datasource/f;->a:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/facebook/datasource/f;->c()Lcom/facebook/datasource/c;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/datasource/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/g;->f(Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/datasource/f;->a:Ljava/util/List;

    const-string v2, "list"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/g$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/g$b;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/facebook/common/internal/g$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
