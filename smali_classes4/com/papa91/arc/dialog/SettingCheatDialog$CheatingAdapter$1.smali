.class Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;
.super Ljava/lang/Object;
.source "SettingCheatDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->initializeCustomView(ILandroid/view/View;Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

.field final synthetic val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;ILorg/ppsspp/ppsspp/EditCheatInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    iput p2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$i:I

    iput-object p3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

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
    sget v0, Lorg/ppsspp/ppsspp/R$id;->del:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$i:I

    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->deleteEditCheatInfo(I)V

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    iget v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$i:I

    invoke-virtual {p1, v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->remove(I)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 6
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->modify:I

    if-ne p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$i:I

    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SettingCheatDialog;->showModifyCheatDialog(I)V

    goto :goto_0

    .line 8
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    if-ne p1, v0, :cond_4

    .line 9
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    move-result p1

    const/4 v0, 0x1

    if-lez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

    iget-boolean p1, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    xor-int/2addr p1, v0

    .line 11
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$i:I

    invoke-virtual {v1, v2, p1}, Lcom/papa91/arc/dialog/SettingDialog;->enableEidtCheat(II)V

    .line 12
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

    iget-boolean v1, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 13
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

    iget-boolean p1, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    xor-int/2addr p1, v0

    if-ne p1, v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$i:I

    invoke-virtual {v0, v1, p1}, Lcom/papa91/arc/dialog/SettingDialog;->enableEidtCheat(II)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$i:I

    invoke-virtual {v1, v2, p1}, Lcom/papa91/arc/dialog/SettingDialog;->enableEidtCheat(II)V

    .line 17
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->val$cheatInfo:Lorg/ppsspp/ppsspp/EditCheatInfo;

    iget-boolean v1, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 18
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_4
    :goto_0
    return-void
.end method
