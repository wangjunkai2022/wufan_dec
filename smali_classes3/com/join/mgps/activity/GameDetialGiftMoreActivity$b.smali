.class Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;
.super Landroid/os/Handler;
.source "GameDetialGiftMoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameDetialGiftMoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->D0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;Lcom/join/mgps/dto/AccountBean;)Lcom/join/mgps/dto/AccountBean;

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->E0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_type()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->F0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->Q0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->E0(Lcom/join/mgps/activity/GameDetialGiftMoreActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetialGiftMoreActivity$b;->a:Lcom/join/mgps/activity/GameDetialGiftMoreActivity;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GameDetialGiftMoreActivity;->V0(Lcom/join/mgps/dto/GiftPackageDataInfoBean;)V

    :cond_2
    :goto_0
    return-void
.end method
