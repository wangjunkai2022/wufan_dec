.class final Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$j;
.super Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$g;
.source "ConcurrentIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$g<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$j;->c:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    .line 2
    invoke-direct {p0, p2, p3}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$g;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$j;->c:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$g;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
