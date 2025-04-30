.class final Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$e;
.super Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$d;
.source "ConcurrentIdentityHashMap.java"

# interfaces
.implements Lorg/jboss/netty/util/internal/f;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap<",
        "TK;TV;>.d;",
        "Lorg/jboss/netty/util/internal/f<",
        "TK;>;",
        "Ljava/util/Enumeration<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic h:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$e;->h:Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$d;-><init>(Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$d;->b()Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$d;->b()Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentIdentityHashMap$c;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
