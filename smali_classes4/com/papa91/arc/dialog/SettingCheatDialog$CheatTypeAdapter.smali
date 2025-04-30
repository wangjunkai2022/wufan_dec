.class Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SettingCheatDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingCheatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheatTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Lcom/papa91/arc/bean/TypeBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingCheatDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;->this$0:Lcom/papa91/arc/dialog/SettingCheatDialog;

    invoke-direct {p0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 3

    if-eqz p4, :cond_0

    .line 1
    new-instance p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter;)V

    .line 2
    sget p4, Lorg/ppsspp/ppsspp/R$id;->ll_root:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/LinearLayout;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->ll_root:Landroid/widget/LinearLayout;

    .line 3
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tv_type:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->tv_type:Landroid/widget/TextView;

    .line 4
    sget p4, Lorg/ppsspp/ppsspp/R$id;->iv_icon:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    .line 5
    sget p4, Lorg/ppsspp/ppsspp/R$id;->iv_arrow:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->iv_arrow:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/TypeBean;

    .line 9
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->tv_type:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->isSelected()Z

    move-result p2

    const/4 p4, 0x0

    const/16 v0, 0x8

    const/4 v1, -0x1

    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->tv_type:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->ll_root:Landroid/widget/LinearLayout;

    sget v2, Lorg/ppsspp/ppsspp/R$drawable;->bg_type_h:I

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 13
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconSelected()I

    move-result p2

    if-eq p2, v1, :cond_1

    .line 14
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconSelected()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    :cond_1
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->iv_arrow:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->tv_type:Landroid/widget/TextView;

    const v2, -0x6b2801

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->ll_root:Landroid/widget/LinearLayout;

    sget v2, Lorg/ppsspp/ppsspp/R$drawable;->bg_type_n:I

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 18
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconNormal()I

    move-result p2

    if-eq p2, v1, :cond_3

    .line 19
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconNormal()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    :cond_3
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->iv_arrow:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    :goto_1
    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconNormal()I

    move-result p2

    if-eq p2, v1, :cond_5

    invoke-virtual {p1}, Lcom/papa91/arc/bean/TypeBean;->getIconSelected()I

    move-result p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    .line 22
    :cond_4
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 23
    :cond_5
    :goto_2
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingCheatDialog$CheatTypeAdapter$ViewHolder;->iv_icon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_cheat_type:I

    return v0
.end method
