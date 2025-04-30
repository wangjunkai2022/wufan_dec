.class final Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$a;
.super Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$d;
.source "ConcurrentIdentityHashMap.java"

# interfaces
.implements Lorg/jboss/netty/util/internal/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<",
        "TK;TV;>.d;",
        "Lorg/jboss/netty/util/internal/f<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic h:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$a;->h:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$d;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$d;->b()Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$j;

    iget-object v2, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$a;->h:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$j;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$a;->c()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
