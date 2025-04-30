.class Lcom/papa91/activity/EmuMenuBaseActivity$14;
.super Ljava/lang/Object;
.source "EmuMenuBaseActivity.java"

# interfaces
.implements Lcom/papa91/arc/dialog/SimulatorTipTwoDialog$OnOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuMenuBaseActivity;->showCloseUploadRecordDialog()V
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
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$14;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$14;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-static {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->access$200(Lcom/papa91/activity/EmuMenuBaseActivity;)V

    return-void
.end method

.method public onClose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$14;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->gameOnResume()V

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$14;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    iget-object v0, v0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/MenuView;->setRankTimeStop(Z)V

    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$14;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    invoke-virtual {v0}, Lcom/papa91/activity/EmuMenuBaseActivity;->gameOnResume()V

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$14;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    iget-object v0, v0, Lcom/papa91/activity/EmuMenuBaseActivity;->menuView:Lcom/papa91/arc/view/MenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/papa91/arc/view/MenuView;->setRankTimeStop(Z)V

    return-void
.end method
