.class public Lcom/sdk/b/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:Lcom/sdk/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/b/b<",
            "TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    iput p1, p0, Lcom/sdk/b/c;->c:I

    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {p1, v1, v2, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    new-instance p1, Lcom/sdk/b/b;

    invoke-direct {p1, v1, v2}, Lcom/sdk/b/b;-><init>(IF)V

    iput-object p1, p0, Lcom/sdk/b/c;->d:Lcom/sdk/b/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sdk/b/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p2, 0x0

    iput p2, p0, Lcom/sdk/b/c;->b:I

    iget-object p2, p0, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget v1, p0, Lcom/sdk/b/c;->b:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/sdk/b/c;->b(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sdk/b/c;->b:I

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const-string v0, "key == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sdk/b/c;->d:Lcom/sdk/b/b;

    invoke-virtual {v0, p1}, Lcom/sdk/b/b;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sdk/b/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    monitor-exit p0

    return-object p1

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)TV;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sdk/b/c;->b:I

    invoke-virtual {p0, p1, p2}, Lcom/sdk/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sdk/b/c;->b:I

    iget-object v0, p0, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lcom/sdk/b/c;->d:Lcom/sdk/b/b;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lcom/sdk/b/b;->a(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    if-eqz p2, :cond_0

    iget p3, p0, Lcom/sdk/b/c;->b:I

    invoke-virtual {p0, p1, p2}, Lcom/sdk/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/sdk/b/c;->b:I

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p0, Lcom/sdk/b/c;->c:I

    invoke-virtual {p0, p1}, Lcom/sdk/b/c;->a(I)V

    return-object p2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || value == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(I)V
    .locals 3

    :goto_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sdk/b/c;->b:I

    if-le v0, p1, :cond_1

    iget-object v0, p0, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sdk/b/c;->d:Lcom/sdk/b/b;

    invoke-virtual {v2, v1}, Lcom/sdk/b/b;->remove(Ljava/lang/Object;)Ljava/lang/Long;

    iget v2, p0, Lcom/sdk/b/c;->b:I

    invoke-virtual {p0, v1, v0}, Lcom/sdk/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/sdk/b/c;->b:I

    monitor-exit p0

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    const-string v0, "key == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sdk/b/c;->d:Lcom/sdk/b/b;

    invoke-virtual {v1, p1}, Lcom/sdk/b/b;->remove(Ljava/lang/Object;)Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sdk/b/c;->b:I

    invoke-virtual {p0, p1, v0}, Lcom/sdk/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/sdk/b/c;->b:I

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
