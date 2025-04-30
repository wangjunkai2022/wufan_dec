.class public Lcom/wufun/union/ad/AdService;
.super Landroid/app/Service;
.source "AdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wufun/union/ad/AdService$a;
    }
.end annotation


# static fields
.field static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/wufun/union/ad/AdChannel$Type;",
            "Lcom/wufun/union/ad/AdChannel;",
            ">;"
        }
    .end annotation
.end field

.field static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wufun/union/ad/AdService;->a:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/wufun/union/ad/AdService;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ll2/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll2/b;

    .line 3
    invoke-virtual {v1}, Ll2/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "initChannels"

    .line 6
    invoke-static {p0, v0, p1}, Lcom/wufun/union/ad/AdService;->h(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".action.commonService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action"

    const-string v2, "launchVGame"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "packageName"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Lcom/wufun/union/ad/AdChannel$Type;)V
    .locals 2

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0, v1}, Lcom/wufun/union/ad/AdService;->f(Landroid/content/Context;Ljava/lang/String;Lcom/wufun/union/ad/AdChannel$Type;Ljava/lang/String;I)V

    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Lcom/wufun/union/ad/AdChannel$Type;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "codeId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget p1, p2, Lcom/wufun/union/ad/AdChannel$Type;->val:I

    const-string p2, "channelType"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "adId"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "adType"

    .line 5
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "adLoad"

    .line 6
    invoke-static {p0, p1, v0}, Lcom/wufun/union/ad/AdService;->h(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static h(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.wufun.union.ad.action.AdService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "action"

    .line 5
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :cond_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".action.commonService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action"

    const-string v2, "adStatisticEvent"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fromPkg"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "event"

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "adId"

    .line 6
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;Lcom/wufun/union/ad/AdChannel$Type;Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "codeId"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget p1, p2, Lcom/wufun/union/ad/AdChannel$Type;->val:I

    const-string p2, "channelType"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "adId"

    .line 4
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "adType"

    .line 5
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "adShow"

    .line 6
    invoke-static {p0, p1, v0}, Lcom/wufun/union/ad/AdService;->h(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method a(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string p1, "action"

    const-string v1, "getMiniGameConfig"

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/wufun/union/ad/AdService;->l(Landroid/os/Bundle;)V

    return-void
.end method

.method c(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "type"

    .line 3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "appId"

    const-string v3, ""

    .line 4
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    sget-object v2, Lcom/wufun/union/ad/AdChannel$Type;->TT:Lcom/wufun/union/ad/AdChannel$Type;

    iget v3, v2, Lcom/wufun/union/ad/AdChannel$Type;->val:I

    if-ne v0, v3, :cond_3

    .line 7
    new-instance v0, Lcom/wufun/union/ad/bytedance/a;

    invoke-direct {v0}, Lcom/wufun/union/ad/bytedance/a;-><init>()V

    .line 8
    new-instance v3, Lcom/wufun/union/ad/a;

    invoke-direct {v3, p0, v0}, Lcom/wufun/union/ad/a;-><init>(Landroid/content/Context;Lcom/wufun/union/ad/AdChannel;)V

    invoke-virtual {v0, v3}, Lcom/wufun/union/ad/AdChannel;->j(Lcom/wufun/union/ad/AdChannel$a;)V

    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/wufun/union/ad/AdChannel;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    sget-object v1, Lcom/wufun/union/ad/AdService;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_3
    sget-object v2, Lcom/wufun/union/ad/AdChannel$Type;->GDT:Lcom/wufun/union/ad/AdChannel$Type;

    iget v3, v2, Lcom/wufun/union/ad/AdChannel$Type;->val:I

    if-ne v0, v3, :cond_1

    .line 12
    new-instance v0, Lcom/wufun/union/ad/gdt/a;

    invoke-direct {v0}, Lcom/wufun/union/ad/gdt/a;-><init>()V

    .line 13
    new-instance v3, Lcom/wufun/union/ad/a;

    invoke-direct {v3, p0, v0}, Lcom/wufun/union/ad/a;-><init>(Landroid/content/Context;Lcom/wufun/union/ad/AdChannel;)V

    invoke-virtual {v0, v3}, Lcom/wufun/union/ad/AdChannel;->j(Lcom/wufun/union/ad/AdChannel$a;)V

    .line 14
    invoke-virtual {v0, p0, v1}, Lcom/wufun/union/ad/AdChannel;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    sget-object v1, Lcom/wufun/union/ad/AdService;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method g(Landroid/os/Bundle;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "fromPkg"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk_app_id"

    const-string v2, ""

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "sdk_key"

    .line 3
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk_type"

    const/4 v4, -0x1

    .line 4
    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "ad_id"

    .line 5
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ad_type"

    const/4 v7, 0x0

    .line 6
    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    const/4 p1, 0x1

    if-ne v3, p1, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    if-ne v3, v6, :cond_2

    const/4 v4, 0x1

    .line 7
    :cond_2
    :goto_0
    invoke-static {v4}, Lcom/wufun/union/ad/AdChannel$Type;->parse(I)Lcom/wufun/union/ad/AdChannel$Type;

    move-result-object p1

    .line 8
    sget-object v3, Lcom/wufun/union/ad/AdService;->a:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wufun/union/ad/AdChannel;

    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {p1}, Lcom/wufun/union/ad/AdChannel;->a()Lcom/wufun/union/ad/AdChannel$a;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 10
    instance-of v4, v3, Lcom/wufun/union/ad/a;

    if-eqz v4, :cond_3

    .line 11
    check-cast v3, Lcom/wufun/union/ad/a;

    sget-object v4, Lcom/wufun/union/ad/AdService;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Lcom/wufun/union/ad/a;->d(Landroid/os/Messenger;)V

    .line 12
    :cond_3
    invoke-virtual {p1}, Lcom/wufun/union/ad/AdChannel;->e()Z

    move-result v3

    if-nez v3, :cond_4

    .line 13
    invoke-virtual {p1, p0, v1}, Lcom/wufun/union/ad/AdChannel;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    :cond_4
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/wufun/union/ad/AdChannel;->k(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 16
    :goto_1
    invoke-virtual {p1, v0}, Lcom/wufun/union/ad/AdChannel;->l(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1, v2}, Lcom/wufun/union/ad/AdChannel;->g(Ljava/lang/String;)V

    const-string p1, "smallRequestAdSDK"

    .line 18
    invoke-static {p0, v0, p1, v5}, Lcom/wufun/union/ad/AdService;->i(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method j(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "adShow"

    .line 1
    invoke-static {p0, p1, p2}, Lcom/wufun/union/ad/AdService;->h(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string v0, "fromPkg"

    .line 2
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdk_app_id"

    const-string v2, ""

    .line 3
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "sdk_key"

    .line 4
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "sdk_type"

    const/4 v2, -0x1

    .line 5
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "ad_id"

    .line 6
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad_type"

    const/4 v5, 0x0

    .line 7
    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    const/4 p2, 0x1

    if-ne v1, p2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    const/4 v2, 0x1

    .line 8
    :cond_3
    :goto_0
    invoke-static {v2}, Lcom/wufun/union/ad/AdChannel$Type;->parse(I)Lcom/wufun/union/ad/AdChannel$Type;

    move-result-object p2

    .line 9
    sget-object v1, Lcom/wufun/union/ad/AdService;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/wufun/union/ad/AdChannel;

    if-nez p2, :cond_4

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 11
    invoke-static {p0, v0}, Lcom/wufun/union/ad/AdService;->d(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_4
    invoke-virtual {p2}, Lcom/wufun/union/ad/AdChannel;->a()Lcom/wufun/union/ad/AdChannel$a;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 13
    instance-of v2, v1, Lcom/wufun/union/ad/a;

    if-eqz v2, :cond_5

    .line 14
    check-cast v1, Lcom/wufun/union/ad/a;

    sget-object v2, Lcom/wufun/union/ad/AdService;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Lcom/wufun/union/ad/a;->d(Landroid/os/Messenger;)V

    .line 15
    :cond_5
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/wufun/union/ad/AdChannel;->k(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 18
    :cond_6
    :goto_1
    invoke-virtual {p2, v0}, Lcom/wufun/union/ad/AdChannel;->l(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p2, p1}, Lcom/wufun/union/ad/AdChannel;->m(Landroid/app/Activity;)V

    return-void
.end method

.method l(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".action.commonService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lcom/wufun/union/ad/AdService$a;

    invoke-direct {v0, p0, p0}, Lcom/wufun/union/ad/AdService$a;-><init>(Lcom/wufun/union/ad/AdService;Landroid/content/Context;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1

    :cond_0
    const-string p2, "action"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    return v0

    :cond_1
    const-string p3, "initChannels"

    .line 4
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v1, "data"

    if-eqz p3, :cond_2

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/wufun/union/ad/AdService;->c(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_2
    const-string p3, "adLoad"

    .line 7
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wufun/union/ad/AdService;->g(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const-string p3, "adShow"

    .line 9
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 10
    new-instance p2, Landroid/content/Intent;

    const-class p3, Lcom/wufun/union/ad/AdStubActivity;

    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p3, 0x10000000

    .line 11
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 12
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0, p2}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string p3, "getMiniGameAdConfigResult"

    .line 14
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 15
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    const-string p2, "fromPkg"

    .line 17
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 19
    sget-object p3, Lcom/wufun/union/ad/AdService;->b:Ljava/util/HashMap;

    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Messenger;

    if-eqz p2, :cond_6

    .line 20
    new-instance p3, Landroid/os/Message;

    invoke-direct {p3}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    .line 21
    iput v1, p3, Landroid/os/Message;->what:I

    .line 22
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 23
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_6
    :goto_0
    return v0
.end method
