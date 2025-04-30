.class Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;
.super Ljava/lang/Object;
.source "SettingCheatDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

.field final synthetic val$gCheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;Lorg/ppsspp/ppsspp/CheatInfo;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    iput-object p2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->val$gCheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    iput p3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->val$groupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    move-result p1

    if-lez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->val$gCheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    iget p1, p1, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->val$groupPosition:I

    invoke-virtual {v0, v1, p1}, Lcom/papa91/arc/dialog/SettingDialog;->cheatInfoEnable(II)V

    .line 6
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->val$gCheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    iput p1, v0, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->showVip([Ljava/lang/String;)V

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {v1}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statOpenGoldfinger(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$1;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method
