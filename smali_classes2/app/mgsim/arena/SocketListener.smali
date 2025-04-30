.class public interface abstract Lapp/mgsim/arena/SocketListener;
.super Ljava/lang/Object;
.source "SocketListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/mgsim/arena/SocketListener$NotifyObserver;
    }
.end annotation


# virtual methods
.method public abstract executeRequest(Lapp/mgsim/arena/ArenaRequest;)V
.end method

.method public abstract onError(Lapp/mgsim/arena/SocketError;)V
.end method

.method public abstract onServerResponse(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onSocketConnected()V
.end method

.method public abstract onSocketDisconnected()V
.end method
