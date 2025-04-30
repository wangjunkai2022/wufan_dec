.class Lcom/join/mgps/service/CommonService$l;
.super Landroid/content/BroadcastReceiver;
.source "CommonService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/service/CommonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field final synthetic i:Lcom/join/mgps/service/CommonService;


# direct methods
.method constructor <init>(Lcom/join/mgps/service/CommonService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$l;->i:Lcom/join/mgps/service/CommonService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string p1, "com.join.android.app.mgsim.wufun.broadcast"

    .line 2
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$l;->a:Ljava/lang/String;

    const-string p1, "com.join.android.app.mgsim.wufun.broadcast.acceptInvitePlay"

    .line 3
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$l;->b:Ljava/lang/String;

    const-string p1, "com.join.android.app.mgsim.wufun.broadcast.setOnlineState"

    .line 4
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$l;->c:Ljava/lang/String;

    const-string p1, "com.join.android.app.mgsim.wufun.broadcast.getOnlineState"

    .line 5
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$l;->d:Ljava/lang/String;

    const-string p1, "com.join.android.app.mgsim.wufun.broadcast.gamePlay"

    .line 6
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$l;->e:Ljava/lang/String;

    const-string p1, "com.join.android.app.mgsim.wufun.broadcast.addFriends"

    .line 7
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$l;->f:Ljava/lang/String;

    const-string p1, "com.join.android.app.mgsim.wufun.broadcast.friendsApplication"

    .line 8
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$l;->g:Ljava/lang/String;

    const-string p1, "com.join.android.app.mgsim.wufun.broadcast.receiveInvitation"

    .line 9
    iput-object p1, p0, Lcom/join/mgps/service/CommonService$l;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "uid"

    const-string v3, "roomId"

    const-string v4, "gameId"

    :try_start_0
    const-string v5, "packageName"

    .line 1
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_19

    iget-object v6, v1, Lcom/join/mgps/service/CommonService$l;->i:Lcom/join/mgps/service/CommonService;

    invoke-virtual {v6}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 4
    iget-object v6, v1, Lcom/join/mgps/service/CommonService$l;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v7, "state"

    if-eqz v6, :cond_0

    .line 5
    :try_start_1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->A()I

    move-result v0

    .line 6
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.join.android.app.mgsim.wufun.broadcast.onOnlineState"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8
    iget-object v0, v1, Lcom/join/mgps/service/CommonService$l;->i:Lcom/join/mgps/service/CommonService;

    invoke-virtual {v0, v2}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 9
    :cond_0
    iget-object v6, v1, Lcom/join/mgps/service/CommonService$l;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    .line 10
    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 11
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wufan/friend/chat/c;->U(I)V

    goto/16 :goto_8

    .line 12
    :cond_1
    iget-object v6, v1, Lcom/join/mgps/service/CommonService$l;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v7, 0x2

    const-string v9, "0"

    const/4 v10, 0x1

    const-string v11, ""

    const-string v12, "1"

    if-eqz v6, :cond_e

    :try_start_2
    const-string v2, "accept"

    .line 13
    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 14
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->s()Lcom/join/mgps/dto/FriendInviteBean;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v3, :cond_2

    .line 15
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wufan/friend/chat/c;->s()Lcom/join/mgps/dto/FriendInviteBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v11, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    if-ne v2, v10, :cond_6

    .line 17
    new-instance v0, Lcom/join/mgps/event/m;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Lcom/join/mgps/event/m;-><init>(I)V

    .line 18
    invoke-virtual {v0, v11}, Lcom/join/mgps/event/m;->n(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)V

    .line 20
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 21
    invoke-virtual {v0, v12}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 22
    invoke-virtual {v0, v11}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 23
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 24
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    :cond_3
    if-eqz v3, :cond_5

    .line 25
    invoke-virtual {v3}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    move-result v2

    if-ne v2, v10, :cond_4

    goto :goto_1

    :cond_4
    move-object v9, v12

    :goto_1
    invoke-virtual {v0, v9}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 26
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->SuccessInvitation:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2, v3, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_8

    :cond_6
    if-ne v2, v7, :cond_a

    .line 27
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 28
    invoke-virtual {v0, v12}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 29
    invoke-virtual {v0, v11}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 30
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 31
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    :cond_7
    if-eqz v3, :cond_9

    .line 32
    invoke-virtual {v3}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    move-result v2

    if-ne v2, v10, :cond_8

    goto :goto_2

    :cond_8
    move-object v9, v12

    :goto_2
    invoke-virtual {v0, v9}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 33
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->OverdueInvitation:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2, v3, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 34
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->P()V

    goto/16 :goto_8

    .line 35
    :cond_a
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 36
    invoke-virtual {v0, v12}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 37
    invoke-virtual {v0, v11}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 38
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 39
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    :cond_b
    if-eqz v3, :cond_d

    .line 40
    invoke-virtual {v3}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    move-result v2

    if-ne v2, v10, :cond_c

    goto :goto_3

    :cond_c
    move-object v9, v12

    :goto_3
    invoke-virtual {v0, v9}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 41
    :cond_d
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->RefuseInvitation:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2, v3, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 42
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->P()V

    goto/16 :goto_8

    .line 43
    :cond_e
    iget-object v6, v1, Lcom/join/mgps/service/CommonService$l;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const-string v13, "action"

    if-eqz v6, :cond_12

    .line 44
    :try_start_5
    invoke-virtual {v0, v13, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    const-string v5, "startMode"

    .line 45
    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-wide/16 v11, 0x0

    .line 46
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 47
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    :cond_f
    move-wide/from16 v17, v11

    .line 48
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 49
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    goto :goto_4

    :cond_10
    const/16 v19, 0x0

    .line 50
    :goto_4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 51
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v20, v0

    goto :goto_5

    :cond_11
    const/16 v20, 0x0

    :goto_5
    new-array v0, v7, [Ljava/lang/String;

    const-string v2, "channel"

    aput-object v2, v0, v8

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "actionGamePlay startMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    invoke-static {v0}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v14

    move/from16 v16, v5

    invoke-virtual/range {v14 .. v20}, Lcom/wufan/friend/chat/c;->q(IIJII)V

    goto/16 :goto_8

    .line 54
    :cond_12
    iget-object v2, v1, Lcom/join/mgps/service/CommonService$l;->f:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "from"

    .line 55
    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 56
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 58
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v3, Lcom/papa/sim/statistic/Event;->addFriends:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v3, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto/16 :goto_8

    .line 59
    :cond_13
    iget-object v2, v1, Lcom/join/mgps/service/CommonService$l;->g:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, -0x1

    .line 60
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 61
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 63
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v0

    sget-object v3, Lcom/papa/sim/statistic/Event;->Friendsapplication:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v0, v3, v2}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    goto :goto_8

    .line 64
    :cond_14
    iget-object v0, v1, Lcom/join/mgps/service/CommonService$l;->h:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 65
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->s()Lcom/join/mgps/dto/FriendInviteBean;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v2, :cond_15

    .line 66
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wufan/friend/chat/c;->s()Lcom/join/mgps/dto/FriendInviteBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/FriendInviteBean;->getGameId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object v11, v0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 67
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    :cond_15
    :goto_6
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 69
    invoke-virtual {v0, v12}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 70
    invoke-virtual {v0, v11}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 71
    invoke-static/range {p1 .. p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 72
    invoke-virtual {v3}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    :cond_16
    if-eqz v2, :cond_18

    .line 73
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendInviteBean;->getSource()I

    move-result v2

    if-ne v2, v10, :cond_17

    goto :goto_7

    :cond_17
    move-object v9, v12

    :goto_7
    invoke-virtual {v0, v9}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 74
    :cond_18
    invoke-static/range {p1 .. p1}, Lcom/papa/sim/statistic/p;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/p;

    move-result-object v2

    sget-object v3, Lcom/papa/sim/statistic/Event;->ReceiveInvitation:Lcom/papa/sim/statistic/Event;

    invoke-virtual {v2, v3, v0}, Lcom/papa/sim/statistic/p;->K1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_8

    :cond_19
    return-void

    :catch_2
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    :goto_8
    return-void
.end method
