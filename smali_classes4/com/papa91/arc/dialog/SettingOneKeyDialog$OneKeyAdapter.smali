.class Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;
.super Lcom/papa91/arc/adapter/SimpleBaseAdapter;
.source "SettingOneKeyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/SettingOneKeyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OneKeyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/papa91/arc/adapter/SimpleBaseAdapter<",
        "Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;


# direct methods
.method constructor <init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-direct {p0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(ILandroid/view/View;Landroid/view/ViewGroup;Z)V
    .locals 2

    if-eqz p4, :cond_0

    .line 1
    new-instance p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;-><init>(Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;)V

    .line 2
    sget p4, Lorg/ppsspp/ppsspp/R$id;->sdv_image:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 3
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tv_name:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    .line 4
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tv_key:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_key:Landroid/widget/TextView;

    .line 5
    sget p4, Lorg/ppsspp/ppsspp/R$id;->tv_key_add:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_key_add:Landroid/widget/TextView;

    .line 6
    sget p4, Lorg/ppsspp/ppsspp/R$id;->iv_key_code:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iput-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->iv_key_code:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;

    .line 10
    iget-object p4, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-virtual {p4}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/papa91/arc/SnkConfig;->isSnkGame(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 11
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->img_snk_default_image:I

    invoke-virtual {p4, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setActualImageResource(I)V

    goto :goto_1

    .line 12
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget-object v0, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillGifUrl:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/s_"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget v0, v0, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".gif"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 13
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v0

    .line 14
    invoke-virtual {v0, p4}, Lcom/facebook/drawee/backends/pipeline/e;->c0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p4

    const/4 v0, 0x1

    .line 15
    invoke-virtual {p4, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->E(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p4

    check-cast p4, Lcom/facebook/drawee/backends/pipeline/e;

    .line 16
    invoke-virtual {p4}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object p4

    .line 17
    iget-object v0, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->sdv_image:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p4}, Lcom/facebook/drawee/view/DraweeView;->setController(Lk0/a;)V

    .line 18
    :goto_1
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_name:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->getSkill_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_key:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/papa91/arc/bean/SkillTableDataBean$SkillsTableBean$SkillBean;->getSkill_set()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p2, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget-object p2, p2, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    const/4 p4, 0x0

    const/16 v0, 0x8

    if-eqz p2, :cond_4

    .line 21
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->getImageIndex(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 22
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_key_add:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->iv_key_code:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 24
    :cond_2
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->iv_key_code:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 25
    iget-object p2, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_key_add:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object p2, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget v1, p2, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->skillType:I

    if-nez v1, :cond_3

    .line 27
    iget-object v1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->iv_key_code:Landroid/widget/ImageView;

    invoke-virtual {p2, p4}, Lcom/papa91/arc/dialog/SettingDialog;->getSpBindImages(I)[I

    move-result-object p2

    aget p1, p2, p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 28
    :cond_3
    iget-object p4, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->iv_key_code:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/papa91/arc/dialog/SettingDialog;->getSpBindImages(I)[I

    move-result-object p2

    aget p1, p2, p1

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 29
    :cond_4
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_key_add:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->iv_key_code:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    :goto_2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    invoke-virtual {p1}, Lcom/papa91/arc/dialog/SettingDialog;->isSPVisible()Z

    move-result p1

    if-nez p1, :cond_5

    .line 32
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->tv_key_add:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    iget-object p1, p3, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter$ViewHolder;->iv_key_code:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method getImageIndex(I)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/SpBindsDataBean;->getSp_binds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget-object v1, v1, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->spBindsDataBean:Lcom/papa91/arc/bean/SpBindsDataBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/SpBindsDataBean;->getSp_binds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;

    invoke-virtual {v1}, Lcom/papa91/arc/bean/SpBindsDataBean$SpBindsBean;->getBinds()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingOneKeyDialog$OneKeyAdapter;->this$0:Lcom/papa91/arc/dialog/SettingOneKeyDialog;

    iget v2, v2, Lcom/papa91/arc/dialog/SettingOneKeyDialog;->defIdx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->item_onekey:I

    return v0
.end method
