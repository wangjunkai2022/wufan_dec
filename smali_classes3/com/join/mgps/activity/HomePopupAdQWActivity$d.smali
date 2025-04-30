.class Lcom/join/mgps/activity/HomePopupAdQWActivity$d;
.super Ljava/lang/Object;
.source "HomePopupAdQWActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/HomePopupAdQWActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HomePopupAdQWActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HomePopupAdQWActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$d;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountVer2()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/WebAccountDataBean;

    invoke-direct {v0}, Lcom/join/mgps/dto/WebAccountDataBean;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$d;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/WebAccountDataBean;->setAccountBean(Lcom/join/mgps/dto/AccountBean;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/WebAccountDataBean;->setHasLogin(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/WebAccountDataBean;->setHasLogin(Z)V

    .line 6
    :goto_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRewards(Z)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$d;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/HomePopupAdQWActivity;->p:Lcom/join/mgps/dto/EverdayLogin;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/EverdayLogin;->setHasGetGiftTime(J)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$d;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    move-result-object p1

    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$d;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/HomePopupAdQWActivity;->p:Lcom/join/mgps/dto/EverdayLogin;

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/pref/h;->Y(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getint()I
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const v0, 0x1877e

    return v0
.end method

.method public startIntent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HomePopupAdQWActivity$d;->a:Lcom/join/mgps/activity/HomePopupAdQWActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/HomePopupAdQWActivity;->c(Lcom/join/mgps/activity/HomePopupAdQWActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/activity/HomePopupAdQWActivity$d$a;

    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/HomePopupAdQWActivity$d$a;-><init>(Lcom/join/mgps/activity/HomePopupAdQWActivity$d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
