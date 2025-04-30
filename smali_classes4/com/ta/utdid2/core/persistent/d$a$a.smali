.class public final Lcom/ta/utdid2/core/persistent/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ta/utdid2/core/persistent/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/core/persistent/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field final synthetic c:Lcom/ta/utdid2/core/persistent/d$a;


# direct methods
.method public constructor <init>(Lcom/ta/utdid2/core/persistent/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->c:Lcom/ta/utdid2/core/persistent/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->a:Ljava/util/Map;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->b:Z

    return-void
.end method


# virtual methods
.method public final clear()Lcom/ta/utdid2/core/persistent/b$a;
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->b:Z

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 4
    monitor-exit p0

    throw v0
.end method

.method public final commit()Z
    .locals 9

    .line 1
    invoke-static {}, Lcom/ta/utdid2/core/persistent/d;->b()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->c:Lcom/ta/utdid2/core/persistent/d$a;

    invoke-static {v1}, Lcom/ta/utdid2/core/persistent/d$a;->d(Lcom/ta/utdid2/core/persistent/d$a;)Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->c:Lcom/ta/utdid2/core/persistent/d$a;

    invoke-static {v6}, Lcom/ta/utdid2/core/persistent/d$a;->d(Lcom/ta/utdid2/core/persistent/d$a;)Ljava/util/WeakHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    move-object v5, v4

    .line 5
    :goto_1
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-boolean v6, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->b:Z

    if-eqz v6, :cond_2

    .line 7
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->c:Lcom/ta/utdid2/core/persistent/d$a;

    invoke-static {v6}, Lcom/ta/utdid2/core/persistent/d$a;->e(Lcom/ta/utdid2/core/persistent/d$a;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 8
    iput-boolean v2, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->b:Z

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 11
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p0, :cond_4

    .line 12
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->c:Lcom/ta/utdid2/core/persistent/d$a;

    invoke-static {v6}, Lcom/ta/utdid2/core/persistent/d$a;->e(Lcom/ta/utdid2/core/persistent/d$a;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 13
    :cond_4
    iget-object v8, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->c:Lcom/ta/utdid2/core/persistent/d$a;

    invoke-static {v8}, Lcom/ta/utdid2/core/persistent/d$a;->e(Lcom/ta/utdid2/core/persistent/d$a;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    if-eqz v1, :cond_3

    .line 14
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_5
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 16
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    iget-object v2, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->c:Lcom/ta/utdid2/core/persistent/d$a;

    invoke-static {v2}, Lcom/ta/utdid2/core/persistent/d$a;->f(Lcom/ta/utdid2/core/persistent/d$a;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 18
    iget-object v6, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->c:Lcom/ta/utdid2/core/persistent/d$a;

    invoke-virtual {v6, v3}, Lcom/ta/utdid2/core/persistent/d$a;->j(Z)V

    .line 19
    :cond_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_9

    .line 20
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_4
    if-ltz v0, :cond_9

    .line 21
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 22
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ta/utdid2/core/persistent/b$b;

    if-eqz v6, :cond_7

    .line 23
    iget-object v7, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->c:Lcom/ta/utdid2/core/persistent/d$a;

    invoke-interface {v6, v7, v1}, Lcom/ta/utdid2/core/persistent/b$b;->a(Lcom/ta/utdid2/core/persistent/b;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_9
    return v2

    :catchall_0
    move-exception v1

    .line 24
    :try_start_3
    monitor-exit p0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 25
    monitor-exit v0

    goto :goto_7

    :goto_6
    throw v1

    :goto_7
    goto :goto_6
.end method

.method public final putBoolean(Ljava/lang/String;Z)Lcom/ta/utdid2/core/persistent/b$a;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit p0

    throw p1
.end method

.method public final putFloat(Ljava/lang/String;F)Lcom/ta/utdid2/core/persistent/b$a;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit p0

    throw p1
.end method

.method public final putInt(Ljava/lang/String;I)Lcom/ta/utdid2/core/persistent/b$a;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit p0

    throw p1
.end method

.method public final putLong(Ljava/lang/String;J)Lcom/ta/utdid2/core/persistent/b$a;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->a:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit p0

    throw p1
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/b$a;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit p0

    throw p1
.end method

.method public final remove(Ljava/lang/String;)Lcom/ta/utdid2/core/persistent/b$a;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/core/persistent/d$a$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit p0

    throw p1
.end method
