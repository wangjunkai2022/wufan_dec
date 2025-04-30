.class Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SettingCheatDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheatingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

.field public viewType:I


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-direct {p0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->viewType:I

    return-void
.end method

.method private initializeCustomView(ILandroid/view/View;Z)Landroid/view/View;
    .locals 3

    if-eqz p3, :cond_0

    .line 1
    new-instance p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;)V

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->del:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->modify:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ppsspp/ppsspp/EditCheatInfo;

    .line 9
    iget-object v1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    iget-boolean v2, v0, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    new-instance v1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$1;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;ILorg/ppsspp/ppsspp/EditCheatInfo;)V

    .line 12
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method private initializeVipView(ILandroid/view/View;Z)Landroid/view/View;
    .locals 3

    if-eqz p3, :cond_0

    .line 1
    new-instance p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;)V

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->del:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->modify:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->switchBtn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ppsspp/ppsspp/CheatInfo;

    .line 9
    iget-object v1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v2, v0, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    iget v2, v0, Lorg/ppsspp/ppsspp/CheatInfo;->off:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    new-instance v1, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$2;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;Lorg/ppsspp/ppsspp/CheatInfo;I)V

    .line 12
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->del:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->modify:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter$ViewHolder;->switchBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    return-object p2
.end method


# virtual methods
.method public convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 0

    .line 1
    iget p3, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->viewType:I

    if-nez p3, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p4}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->initializeVipView(ILandroid/view/View;Z)Landroid/view/View;

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatingAdapter;->initializeCustomView(ILandroid/view/View;Z)Landroid/view/View;

    :goto_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_cheat:I

    return v0
.end method
