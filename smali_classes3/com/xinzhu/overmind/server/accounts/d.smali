.class public interface abstract Lcom/xinzhu/overmind/server/accounts/d;
.super Ljava/lang/Object;
.source "IAccountAuthenticatorCache.java"


# virtual methods
.method public abstract a(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation
.end method

.method public abstract b(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation
.end method

.method public abstract c(Lcom/xinzhu/overmind/server/pm/m;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "handler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/server/pm/m<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation
.end method

.method public abstract d(Landroid/accounts/AuthenticatorDescription;I)Lcom/xinzhu/overmind/server/pm/l$d;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AuthenticatorDescription;",
            "I)",
            "Lcom/xinzhu/overmind/server/pm/l$d<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e(I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection<",
            "Lcom/xinzhu/overmind/server/pm/l$d<",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract f(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fd",
            "fout",
            "args",
            "userId"
        }
    .end annotation
.end method
