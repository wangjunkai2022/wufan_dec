.class Lcom/papa91/arc/dialog/SettingGateDialog$2;
.super Ljava/lang/Object;
.source "SettingGateDialog.java"

# interfaces
.implements Lcom/papa91/arc/interfaces/IOnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingGateDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingGateDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingGateDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingGateDialog;->showPrompt(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    const-string v0, "3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->showVip([Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingGateDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingGateDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingGateDialog$2;->this$0:Lcom/papa91/arc/dialog/SettingGateDialog;

    invoke-virtual {v1}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statSelectLevel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
