.class Lcom/papa91/activity/EmuBaseActivity$41;
.super Ljava/lang/Object;
.source "EmuBaseActivity.java"

# interfaces
.implements Lcom/papa91/arc/interfaces/RealNameCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuBaseActivity;->showNativeRealName(Lcom/papa91/arc/bean/PopwindowBean;I)V
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
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$41;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iput p2, p0, Lcom/papa91/activity/EmuBaseActivity$41;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$41;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    const-string v1, "clickClosedRealNameWindow"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$41;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-object v1, v0, Lcom/papa91/activity/EmuBaseActivity;->realNameDialog:Lcom/papa91/arc/dialog/RealNameDialog;

    iget v2, p0, Lcom/papa91/activity/EmuBaseActivity$41;->val$type:I

    invoke-static {v0, v1, p1, p2, v2}, Lcom/papa91/activity/EmuBaseActivity;->access$1700(Lcom/papa91/activity/EmuBaseActivity;Landroid/app/Dialog;Landroid/app/Dialog;Lcom/papa91/arc/bean/ButtonBean;I)V

    return-void
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$41;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-virtual {v0, p1, p2}, Lcom/papa91/activity/EmuBaseActivity;->senCommonEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFail(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(Landroid/app/Dialog;Lcom/papa91/arc/bean/PopwindowBean;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$41;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget v0, p0, Lcom/papa91/activity/EmuBaseActivity$41;->val$type:I

    invoke-static {p1, p2, v0}, Lcom/papa91/activity/EmuBaseActivity;->access$1800(Lcom/papa91/activity/EmuBaseActivity;Lcom/papa91/arc/bean/PopwindowBean;I)V

    .line 3
    invoke-virtual {p2}, Lcom/papa91/arc/bean/PopwindowBean;->getEndDuration()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$41;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/papa91/activity/EmuBaseActivity;->playTime:J

    .line 5
    invoke-virtual {p2}, Lcom/papa91/arc/bean/PopwindowBean;->getEndDuration()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v0, p2

    iget p2, p0, Lcom/papa91/activity/EmuBaseActivity$41;->val$type:I

    const/16 v2, 0xa

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, v0, v1, p2}, Lcom/papa91/activity/EmuBaseActivity;->access$1900(Lcom/papa91/activity/EmuBaseActivity;JZ)V

    :cond_1
    return-void
.end method
