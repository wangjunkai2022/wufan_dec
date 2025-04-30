.class Lcom/papa91/activity/EmuBaseActivity$42;
.super Lcom/papa91/arc/interfaces/DialogListenerWrap;
.source "EmuBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->handleButtonAction(Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;

.field final synthetic val$_parent:Landroid/app/Dialog;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;Landroid/app/Dialog;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$42;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iput-object p2, p0, Lcom/papa91/activity/EmuBaseActivity$42;->val$_parent:Landroid/app/Dialog;

    iput p3, p0, Lcom/papa91/activity/EmuBaseActivity$42;->val$type:I

    invoke-direct {p0}, Lcom/papa91/arc/interfaces/DialogListenerWrap;-><init>()V

    return-void
.end method


# virtual methods
.method public onCenterClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/arc/interfaces/DialogListenerWrap;->onCenterClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 2
    invoke-virtual {p2}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$42;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity$42;->val$_parent:Landroid/app/Dialog;

    iget v2, p0, Lcom/papa91/activity/EmuBaseActivity$42;->val$type:I

    invoke-static {v0, v1, p1, p2, v2}, Lcom/papa91/activity/EmuBaseActivity;->access$1700(Lcom/papa91/activity/EmuBaseActivity;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    return-void
.end method

.method public onLeftClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/arc/interfaces/DialogListenerWrap;->onLeftClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 2
    invoke-virtual {p2}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$42;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity$42;->val$_parent:Landroid/app/Dialog;

    iget v2, p0, Lcom/papa91/activity/EmuBaseActivity$42;->val$type:I

    invoke-static {v0, v1, p1, p2, v2}, Lcom/papa91/activity/EmuBaseActivity;->access$1700(Lcom/papa91/activity/EmuBaseActivity;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    return-void
.end method

.method public onRightClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/papa91/arc/interfaces/DialogListenerWrap;->onRightClick(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V

    .line 2
    invoke-virtual {p2}, Lcom/papa91/arc/bean/ButtonBean;->getEventType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$42;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-object v1, p0, Lcom/papa91/activity/EmuBaseActivity$42;->val$_parent:Landroid/app/Dialog;

    iget v2, p0, Lcom/papa91/activity/EmuBaseActivity$42;->val$type:I

    invoke-static {v0, v1, p1, p2, v2}, Lcom/papa91/activity/EmuBaseActivity;->access$1700(Lcom/papa91/activity/EmuBaseActivity;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    return-void
.end method
