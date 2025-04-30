.class Lcom/papa91/activity/EmuBaseActivity$37;
.super Landroid/os/CountDownTimer;
.source "EmuBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/activity/EmuBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuBaseActivity;


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuBaseActivity;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuBaseActivity$37;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lcom/papa91/activity/EmuBaseActivity;->acceptInvitePlay(I)V

    .line 2
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$37;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$37;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity;->invitePop:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    invoke-virtual {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuBaseActivity$37;->this$0:Lcom/papa91/activity/EmuBaseActivity;

    iget-object v0, v0, Lcom/papa91/activity/EmuBaseActivity;->accept:Landroid/widget/TextView;

    if-eqz v0, :cond_0

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

    :cond_0
    return-void
.end method
