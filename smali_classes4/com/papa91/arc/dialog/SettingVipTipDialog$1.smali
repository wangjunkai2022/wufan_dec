.class Lcom/papa91/arc/dialog/SettingVipTipDialog$1;
.super Ljava/lang/Object;
.source "SettingVipTipDialog.java"

# interfaces
.implements Lcom/papa91/arc/interfaces/IOnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingVipTipDialog;->initGateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingVipTipDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/papa91/arc/dialog/SettingDialog;->goVipShop(IZ)V

    .line 2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v1}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/papa91/arc/common/constants/StatIntents;->statUesVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
