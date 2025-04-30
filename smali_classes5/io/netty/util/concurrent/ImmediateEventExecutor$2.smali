.class final Lio/netty/util/concurrent/ImmediateEventExecutor$2;
.super Lio/netty/util/concurrent/FastThreadLocal;
.source "ImmediateEventExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/concurrent/ImmediateEventExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/concurrent/FastThreadLocal<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/netty/util/concurrent/FastThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/netty/util/concurrent/ImmediateEventExecutor$2;->initialValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
