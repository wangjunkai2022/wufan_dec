.class public Lcom/sdk/k/a;
.super Lcom/sdk/i/a;
.source ""


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/sdk/Unicorn/base/framework/utils/app/AppUtils;->getAndroidSDKVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-le v0, v2, :cond_2

    invoke-static {}, Lcom/sdk/f/a;->a()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdk/Unicorn/base/framework/bean/KInfo;

    invoke-virtual {v0}, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->isIdfd()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sdk/Unicorn/base/framework/bean/KInfo;->getIc()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "getSimSerialNumber"

    invoke-static {p0, v2, v0, v1, v1}, Lcom/sdk/i/a;->invokeOnTelephonyManager(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
