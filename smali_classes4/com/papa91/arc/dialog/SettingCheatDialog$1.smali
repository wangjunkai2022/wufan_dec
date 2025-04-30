.class Lcom/papa91/arc/dialog/SettingCheatDialog$1;
.super Ljava/lang/Object;
.source "SettingCheatDialog.java"

# interfaces
.implements Lcom/papa91/arc/interfaces/IOnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget v1, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->oldSelIndex:I

    if-eq p1, v1, :cond_1

    .line 2
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa91/arc/bean/TypeBean;

    .line 3
    invoke-virtual {v0}, Lcom/papa91/arc/bean/TypeBean;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iget-object v2, v1, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    iget v1, v1, Lcom/papa91/arc/dialog/SettingCheatDialog;->oldSelIndex:I

    invoke-virtual {v2, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/bean/TypeBean;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/papa91/arc/bean/TypeBean;->setSelected(Z)V

    .line 7
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    iput p1, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->oldSelIndex:I

    .line 8
    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingCheatDialog;->cheatTypeAdapter:Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$1;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-virtual {v0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog;->setTab(I)V

    :cond_1
    :goto_0
    return-void
.end method
