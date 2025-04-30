.class Lcom/join/mgps/activity/FriendInviteActivity$a;
.super Landroid/os/CountDownTimer;
.source "FriendInviteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/FriendInviteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/FriendInviteActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FriendInviteActivity;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    const-string v1, "0"

    .line 2
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 3
    iget-object v2, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    if-eqz v2, :cond_2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    iget-object v3, v3, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/FriendInviteActivity;->s0:Lcom/join/mgps/dto/FriendInviteBean;

    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    invoke-static {v1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v1

    sget-object v2, Lcom/papa/sim/statistic/Event;->OverdueInvitation:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/FriendInviteActivity;->q0:Landroid/widget/TextView;

    const-string v1, "\u62d2\u7edd"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->P()V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/FriendInviteActivity$a;->a:Lcom/join/mgps/activity/FriendInviteActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/FriendInviteActivity;->q0:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u62d2\u7edd("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
