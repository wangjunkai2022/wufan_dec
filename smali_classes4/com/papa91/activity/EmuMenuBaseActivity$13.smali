.class Lcom/papa91/activity/EmuMenuBaseActivity$13;
.super Ljava/lang/Object;
.source "EmuMenuBaseActivity.java"

# interfaces
.implements Lcom/papa91/arc/dialog/SimulatorUploadDialog$OnOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuMenuBaseActivity;->showUploadRecordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuMenuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuMenuBaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$13;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$13;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-static {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->access$300(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$13;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->gameOnResume()V

    .line 3
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$13;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    iget-object v0, v0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/MenuView;->setRankTimeStop(Z)V

    return-void
.end method

.method public onConfirm(II)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/papa91/activity/EmuBaseActivity;->gameCompleted()I

    move-result v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.join.android.app.mgsim.rank_record_upload"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "_params_rank_coin"

    .line 3
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    div-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    const-string p1, "_params_rank_play_time"

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "_params_rank_role_id"

    .line 5
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$13;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-virtual {p1, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 7
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$13;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-virtual {p1}, Lcom/papa91/activity/EmuMenuBaseActivity;->gameOnResume()V

    .line 8
    iget-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$13;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    iget-object p1, p1, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/papa91/arc/view/MenuView;->setRankTimeStop(Z)V

    return-void
.end method
