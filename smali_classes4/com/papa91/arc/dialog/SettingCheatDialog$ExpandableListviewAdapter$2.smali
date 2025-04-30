.class Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;
.super Ljava/lang/Object;
.source "SettingCheatDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

.field final synthetic val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

.field final synthetic val$childPosition:I

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;Lorg/ppsspp/ppsspp/CheatInfo;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    iput-object p2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    iput p3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->val$groupPosition:I

    iput p4, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->val$childPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    if-ne p1, v0, :cond_3

    .line 3
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->getVip()I

    move-result p1

    if-lez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    iget p1, p1, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->val$groupPosition:I

    iget v3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->val$childPosition:I

    invoke-virtual {v1, v2, v3}, Lcom/papa91/arc/dialog/SettingDialog;->cheatInfoEnable(II)V

    .line 6
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    iget v2, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->val$groupPosition:I

    invoke-virtual {v1, v2}, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->getGroup(I)Lorg/ppsspp/ppsspp/CheatInfo;

    move-result-object v1

    iget-object v1, v1, Lorg/ppsspp/ppsspp/CheatInfo;->option:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ppsspp/ppsspp/CheatInfo;

    .line 7
    iput v0, v2, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->val$cheatInfo:Lorg/ppsspp/ppsspp/CheatInfo;

    iput p1, v0, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    goto :goto_2

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/papa91/arc/dialog/SettingDialog;->showVip([Ljava/lang/String;)V

    .line 10
    :goto_2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    iget-object p1, p1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/papa91/arc/common/constants/StatIntents;->getInstance(Landroid/content/Context;)Lcom/papa91/arc/common/constants/StatIntents;

    move-result-object p1

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {v0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {v1}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/papa91/arc/common/constants/StatIntents;->statOpenGoldfinger(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter$2;->this$1:Lcom/papa91/arc/dialog/SettingCheatDialog$ExpandableListviewAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method
