.class Lcom/papa91/activity/EmuMenuBaseActivity$4;
.super Ljava/lang/Object;
.source "EmuMenuBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/activity/EmuMenuBaseActivity;->onLoadStageCompleted(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/papa91/activity/EmuMenuBaseActivity;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$4;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    iput p2, p0, Lcom/papa91/activity/EmuMenuBaseActivity$4;->val$status:I

    iput-object p3, p0, Lcom/papa91/activity/EmuMenuBaseActivity$4;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$4;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    iget-object v0, v0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingGateDialog;->hideLoading()V

    .line 3
    iget v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$4;->val$status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$4;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    iget-object v0, v0, Lcom/papa91/activity/EmuMenuBaseActivity;->gateDialog:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$4;->val$message:Ljava/lang/String;

    invoke-static {v0}, Lcom/papa91/arc/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/papa91/activity/EmuMenuBaseActivity$4;->this$0:Lcom/papa91/activity/EmuMenuBaseActivity;

    iget-object v1, p0, Lcom/papa91/activity/EmuMenuBaseActivity$4;->val$message:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/papa91/arc/view/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
