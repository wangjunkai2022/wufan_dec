.class public interface abstract Lapp/mgsim/arena/SocketListener$NotifyObserver;
.super Ljava/lang/Object;
.source "SocketListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/mgsim/arena/SocketListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotifyObserver"
.end annotation


# virtual methods
.method public abstract onError(Lapp/mgsim/arena/SocketError;)V
.end method

.method public abstract onServerResponse(Lapp/mgsim/arena/ArenaResponse;)V
.end method
