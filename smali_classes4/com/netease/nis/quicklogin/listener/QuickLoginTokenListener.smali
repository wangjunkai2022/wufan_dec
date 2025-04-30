.class public abstract Lcom/netease/nis/quicklogin/listener/QuickLoginTokenListener;
.super Ljava/lang/Object;
.source "QuickLoginTokenListener.java"

# interfaces
.implements Lcom/netease/nis/quicklogin/listener/QuickLoginListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelGetToken()V
    .locals 0

    return-void
.end method

.method public onExtendMsg(Lorg/json/JSONObject;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onGetMobileNumberError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onGetMobileNumberSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
