.class public abstract Lcom/bytedance/sdk/openadsdk/downloadnew/a;
.super Ljava/lang/Object;
.source "AbstractAdBridge.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAdBridge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(ILandroid/os/Bundle;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public callMethod(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getObj(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getObj(Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public removeObj(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setObj(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public subscribe(Lcom/bytedance/sdk/openadsdk/TTAdEvent;)V
    .locals 0

    return-void
.end method

.method public unsubscribe(Lcom/bytedance/sdk/openadsdk/TTAdEvent;)V
    .locals 0

    return-void
.end method
