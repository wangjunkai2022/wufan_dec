.class Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;
.super Ljava/lang/Object;
.source "SettingVipTipDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;->initializeVipView(ILandroid/view/View;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

.field final synthetic val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;Lorg/ppsspp/ppsspp/CheatInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    iput-object p2, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    iget v2, p1, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 5
    :cond_0
    iput v0, p1, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {p1, v1, v1}, Lcom/papa91/arc/dialog/SettingDialog;->goVipShop(IZ)V

    .line 7
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v1}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    iget-object v2, v2, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-virtual {v2}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/papa91/arc/common/constants/StatIntents;->statUesVippopup(Ljava/lang/String;Ljava/lang/String;I)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
