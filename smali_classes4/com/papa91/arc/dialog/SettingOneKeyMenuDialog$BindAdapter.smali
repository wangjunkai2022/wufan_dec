.class Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SettingOneKeyMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BindAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Lcom/papa91/arc/bean/OneKeyMenuBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog;

    invoke-direct {p0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1
    new-instance p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;)V

    .line 2
    sget p4, Lorg/ppsspp/ppsspp/R$id;->sdv_image:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 3
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tv_name:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 4
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tv_bind:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_bind:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/papa91/arc/bean/OneKeyMenuBean;

    .line 8
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/papa91/arc/bean/OneKeyMenuBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_bind:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/papa91/arc/bean/OneKeyMenuBean;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p2}, Lcom/papa91/arc/bean/OneKeyMenuBean;->isCurrent()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 11
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/papa91/arc/bean/OneKeyMenuBean;->getIconRes()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 12
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_bind:Landroid/widget/TextView;

    sget p2, Lorg/ppsspp/ppsspp/R$drawable;->bg_btn_onekey_choose_unable:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 13
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_bind:Landroid/widget/TextView;

    const-string p2, "#FF9A9A9A"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/papa91/arc/bean/OneKeyMenuBean;->getIconResNormal()I

    move-result p2

    invoke-virtual {p4, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 15
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_bind:Landroid/widget/TextView;

    sget p4, Lorg/ppsspp/ppsspp/R$drawable;->bg_btn_onekey_choose:I

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 16
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_bind:Landroid/widget/TextView;

    const-string p4, "#FF8CC6E5"

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$ViewHolder;->tv_bind:Landroid/widget/TextView;

    new-instance p3, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;

    invoke-direct {p3, p0, p1}, Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter$1;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyMenuDialog$BindAdapter;I)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_onekey_bind:I

    return v0
.end method
