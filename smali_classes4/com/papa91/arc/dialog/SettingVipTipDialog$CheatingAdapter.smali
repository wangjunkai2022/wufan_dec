.class Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SettingVipTipDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingVipTipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheatingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Lorg/ppsspp/ppsspp/CheatInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingVipTipDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingVipTipDialog;

    invoke-direct {p0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;-><init>()V

    return-void
.end method

.method private initializeVipView(ILandroid/view/View;Z)Landroid/view/View;
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    new-instance p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;)V

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/ppsspp/ppsspp/CheatInfo;

    .line 7
    iget-object v0, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v1, p1, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    iget v1, p1, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 9
    new-instance v0, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$1;-><init>(Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;Lorg/ppsspp/ppsspp/CheatInfo;)V

    .line 10
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    return-object p2
.end method


# virtual methods
.method public convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/papa91/arc/dialog/SettingVipTipDialog$CheatingAdapter;->initializeVipView(ILandroid/view/View;Z)Landroid/view/View;

    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_cheat_tip:I

    return v0
.end method
