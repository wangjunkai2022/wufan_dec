.class public Lcom/join/mgps/activity/GamePaiWeiActivty$RankRecordReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GamePaiWeiActivty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GamePaiWeiActivty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RankRecordReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GamePaiWeiActivty;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$RankRecordReceiver;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.join.android.app.mgsim.rank_record_upload"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$RankRecordReceiver;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    const-string v0, "_params_rank_coin"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/join/mgps/activity/GamePaiWeiActivty;->C:I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$RankRecordReceiver;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    const-string v0, "_params_rank_play_time"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/join/mgps/activity/GamePaiWeiActivty;->E:I

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$RankRecordReceiver;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    const/4 v0, 0x0

    const-string v1, "_params_rank_role_id"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/join/mgps/activity/GamePaiWeiActivty;->D:I

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$RankRecordReceiver;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->d(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$RankRecordReceiver;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/join/mgps/activity/GamePaiWeiActivty;->f(Lcom/join/mgps/activity/GamePaiWeiActivty;I)V

    :cond_0
    return-void
.end method
