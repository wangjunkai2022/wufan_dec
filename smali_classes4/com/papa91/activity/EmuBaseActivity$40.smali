.class Lcom/papa91/activity/EmuBaseActivity$40;
.super Lcom/papa91/arc/interfaces/DialogListenerWrap;
.source "EmuBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->handleCheckNameResult(Lcom/papa91/arc/bean/PopwindowBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$40;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iput p2, p0, Lcom/papa91/activity/EmuBaseActivity$40;->val$type:I

    invoke-direct {p0}, Lcom/papa91/arc/interfaces/DialogListenerWrap;-><init>()V

    return-void
.end method


# virtual methods
.method public onCenterClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/arc/interfaces/DialogListenerWrap;->onCenterClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$40;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-object v1, v0, Lcom/papa91/activity/EmuBaseActivity;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    iget v2, p0, Lcom/papa91/activity/EmuBaseActivity$40;->val$type:I

    invoke-static {v0, v1, p1, p2, v2}, Lcom/papa91/activity/EmuBaseActivity;->access$1700(Lcom/papa91/activity/EmuBaseActivity;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    return-void
.end method

.method public onCloseClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/arc/interfaces/DialogListenerWrap;->onCloseClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$40;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    const-string v1, "closedRealNameWindow"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$40;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-object v1, v0, Lcom/papa91/activity/EmuBaseActivity;->perfectWarmDialog:Lcom/papa91/arc/dialog/PerfectWarmDialog;

    iget v2, p0, Lcom/papa91/activity/EmuBaseActivity$40;->val$type:I

    invoke-static {v0, v1, p1, p2, v2}, Lcom/papa91/activity/EmuBaseActivity;->access$1700(Lcom/papa91/activity/EmuBaseActivity;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    return-void
.end method
