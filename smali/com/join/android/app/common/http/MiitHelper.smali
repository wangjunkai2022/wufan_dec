.class public Lcom/join/android/app/common/http/MiitHelper;
.super Ljava/lang/Object;
.source "MiitHelper.java"

# interfaces
.implements Lcom/bun/miitmdid/interfaces/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/android/app/common/http/MiitHelper$a;
    }
.end annotation


# instance fields
.field private _listener:Lcom/join/android/app/common/http/MiitHelper$a;


# direct methods
.method public constructor <init>(Lcom/join/android/app/common/http/MiitHelper$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/android/app/common/http/MiitHelper;->_listener:Lcom/join/android/app/common/http/MiitHelper$a;

    return-void
.end method

.method private CallFromReflect(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-static {p1, v0, p0}, Lcom/bun/miitmdid/core/MdidSdkHelper;->InitSdk(Landroid/content/Context;ZLcom/bun/miitmdid/interfaces/IIdentifierListener;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public OnSupport(ZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p2}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/join/android/app/common/http/MiitHelper;->_listener:Lcom/join/android/app/common/http/MiitHelper$a;

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p2, p1}, Lcom/join/android/app/common/http/MiitHelper$a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public getDeviceIds(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    invoke-direct {p0, p1}, Lcom/join/android/app/common/http/MiitHelper;->CallFromReflect(Landroid/content/Context;)I

    move-result p1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const v0, 0xf63e4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0xf63e5

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0xf63e3

    .line 4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
