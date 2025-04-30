.class public Lcom/join/mgps/activity/FriendInviteActivity;
.super Lcom/join/mgps/activity/FriendActivity;
.source "FriendInviteActivity.java"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0039
.end annotation


# instance fields
.field o0:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field r0:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
        value = 0x7f09057f
    .end annotation
.end field

.field s0:Lcom/join/mgps/dto/FriendInviteBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field t0:Lcom/join/mgps/rpc/i;

.field u0:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/FriendActivity;-><init>()V

    .line 2
    new-instance v6, Lcom/join/mgps/activity/FriendInviteActivity$a;

    const-wide/16 v2, 0x3e80

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/FriendInviteActivity$a;-><init>(Lcom/join/mgps/activity/FriendInviteActivity;JJ)V

    iput-object v6, p0, Lcom/join/mgps/activity/FriendInviteActivity;->u0:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method A1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->P()V

    .line 2
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    move-result v1

    const-string v2, "0"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 4
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 7
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 8
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->RefuseInvitation:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method B1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->P()V

    .line 2
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/f;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uid"

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "token"

    .line 5
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "friendId"

    .line 6
    iget-object v2, p0, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendInviteBean;->getFromAccountId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/FriendInviteActivity;->t0:Lcom/join/mgps/rpc/i;

    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/i;->j(Ljava/util/Map;)Lcom/join/mgps/dto/ResponseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method C1(I)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.emu.ad.result"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "adAction"

    const/16 v2, 0x64

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "exit"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->t(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/FriendInviteActivity;->o0:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendInviteBean;->getAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/FriendInviteActivity;->p0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendInviteBean;->getFromNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/FriendInviteActivity;->r0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendInviteBean;->getGameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->p()Lcom/join/mgps/rpc/impl/g;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/activity/FriendInviteActivity;->t0:Lcom/join/mgps/rpc/i;

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 9
    invoke-static {p0, v0, v1}, Lcom/join/mgps/Util/z1;->o(Landroid/app/Activity;IZ)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 11
    invoke-virtual {p0, v1}, Lcom/BaseActivity;->setSystemUiHide(Z)V

    .line 12
    :cond_2
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    move-result v2

    const-string v3, "0"

    if-ne v2, v1, :cond_3

    move-object v1, v3

    goto :goto_0

    :cond_3
    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 14
    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 15
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 17
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 18
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->ReceiveInvitation:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/FriendInviteActivity;->u0:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/FriendActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x2711

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/c;->O()V

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/FriendInviteActivity;->C1(I)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/FriendActivity;->onBackPressed()V

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->P()V

    .line 3
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    move-result v1

    const-string v2, "0"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->RefuseInvitation:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/FriendActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/FriendInviteActivity;->u0:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 3
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/c;->y(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onFriendEvent(Lcom/join/mgps/event/m;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/m;->a()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendInviteActivity;->A1()V

    :cond_1
    :goto_0
    return-void
.end method

.method y1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    move-result v1

    const-string v2, "0"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 7
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v3, Lcom/papa/sim/statistic/Event;->SuccessInvitation:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1, v3, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendActivity;->checkGameIsInstall(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x2711

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/FriendActivity;->startDownloadActivity(Ljava/lang/String;I)V

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->O()V

    const/4 v0, 0x2

    .line 12
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/FriendInviteActivity;->C1(I)V

    :goto_1
    return-void
.end method

.method z1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/FriendInviteActivity;->B1()V

    .line 2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->P()V

    .line 3
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    move-result v1

    const-string v2, "0"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 5
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v1

    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    invoke-static {p0}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->RefuseInvitation:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
