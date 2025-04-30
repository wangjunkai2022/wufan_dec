.class final Lorg/jboss/netty/util/internal/ConcurrentHashMap$h;
.super Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;
.source "ConcurrentHashMap.java"

# interfaces
.implements Lorg/jboss/netty/util/internal/f;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/util/internal/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jboss/netty/util/internal/ConcurrentHashMap<",
        "TK;TV;>.d;",
        "Lorg/jboss/netty/util/internal/f<",
        "TV;>;",
        "Ljava/util/Enumeration<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic h:Lorg/jboss/netty/util/internal/ConcurrentHashMap;


# direct methods
.method constructor <init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/util/internal/ConcurrentHashMap$h;->h:Lorg/jboss/netty/util/internal/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;-><init>(Lorg/jboss/netty/util/internal/ConcurrentHashMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->b()Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$d;->b()Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jboss/netty/util/internal/ConcurrentHashMap$c;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
