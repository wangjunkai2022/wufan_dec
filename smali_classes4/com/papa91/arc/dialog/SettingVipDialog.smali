.class public Lcom/papa91/arc/dialog/SettingVipDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SettingVipDialog.java"

# interfaces
.implements Lv2/b;


# instance fields
.field banner:Lcom/youth/banner/Banner;

.field bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

.field close:Landroid/view/View;

.field from:I

.field group:Landroidx/constraintlayout/widget/Group;

.field images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field vipBattle:Landroid/widget/ImageView;

.field vipBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/VipBean;",
            ">;"
        }
    .end annotation
.end field

.field vipCheating:Landroid/widget/ImageView;

.field vipSelectScene:Landroid/widget/ImageView;

.field vipSlot:Landroid/widget/ImageView;

.field vipSp:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->images:Ljava/util/List;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipBeans:Ljava/util/List;

    .line 4
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingVipDialog;->initVipViews()V

    .line 5
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingVipDialog;->initData()V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/papa91/arc/view/BaseDialog;->setBackgroundDimEnabled(Z)V

    return-void
.end method

.method private initData()V
    .locals 0

    return-void
.end method

.method private initVipViews()V
    .locals 3

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->banner:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youth/banner/Banner;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->banner:Lcom/youth/banner/Banner;

    .line 2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->bannerViewPager:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/youth/banner/view/BannerViewPager;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSp:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSp:Landroid/widget/ImageView;

    .line 4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipCheating:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipCheating:Landroid/widget/ImageView;

    .line 5
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSlot:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSlot:Landroid/widget/ImageView;

    .line 6
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSelectScene:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSelectScene:Landroid/widget/ImageView;

    .line 7
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipBattle:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipBattle:Landroid/widget/ImageView;

    .line 8
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->close:Landroid/view/View;

    .line 9
    sget v0, Lorg/ppsspp/ppsspp/R$id;->group:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->group:Landroidx/constraintlayout/widget/Group;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/view/View;

    .line 10
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->close:Landroid/view/View;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSp:Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipCheating:Landroid/widget/ImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSlot:Landroid/widget/ImageView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSelectScene:Landroid/widget/ImageView;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipBattle:Landroid/widget/ImageView;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->banner:Lcom/youth/banner/Banner;

    new-instance v1, Lcom/papa91/arc/dialog/SettingVipDialog$1;

    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingVipDialog$1;-><init>(Lcom/papa91/arc/dialog/SettingVipDialog;)V

    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public OnBannerClick(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/papa91/arc/bean/VipBean;

    .line 3
    invoke-virtual {p1}, Lcom/papa91/arc/bean/VipBean;->getSub()Lcom/papa91/arc/bean/SubBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getLink_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getJump_type()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getLink_type_val()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/papa91/arc/bean/SubBean;->getTpl_type()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/papa91/arc/MarketUtil;->intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_vip:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->close:I

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismissOnly()V

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSp:I

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 7
    :cond_1
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipCheating:I

    if-ne p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 9
    :cond_2
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSlot:I

    if-ne p1, v0, :cond_3

    .line 10
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 11
    :cond_3
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipSelectScene:I

    if-ne p1, v0, :cond_4

    .line 12
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 13
    :cond_4
    sget v0, Lorg/ppsspp/ppsspp/R$id;->vipBattle:I

    if-ne p1, v0, :cond_5

    .line 14
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method resetButtonState()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSp:Landroid/widget/ImageView;

    iget v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget v4, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_sp_selected:I

    sget v5, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_sp_default:I

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/papa91/arc/dialog/SettingVipDialog;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipCheating:Landroid/widget/ImageView;

    iget v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget v4, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_cheating_selected:I

    sget v5, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_cheating_default:I

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/papa91/arc/dialog/SettingVipDialog;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSlot:Landroid/widget/ImageView;

    iget v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    sget v4, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_slot_selected:I

    sget v5, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_slot_default:I

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/papa91/arc/dialog/SettingVipDialog;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipSelectScene:Landroid/widget/ImageView;

    iget v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    sget v4, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_select_sence_selected:I

    sget v5, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_select_sence_default:I

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/papa91/arc/dialog/SettingVipDialog;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    .line 5
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipBattle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    sget v1, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_battle_selected:I

    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->vip_tab_battle_default:I

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/papa91/arc/dialog/SettingVipDialog;->setVipTabSelect(Landroid/widget/ImageView;ZII)V

    return-void
.end method

.method select(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    .line 2
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingVipDialog;->resetButtonState()V

    return-void
.end method

.method setVipTabSelect(Landroid/widget/ImageView;ZII)V
    .locals 1

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v0, 0x10

    if-eqz p2, :cond_2

    .line 2
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p4, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lorg/ppsspp/ppsspp/R$drawable;->vip_btn_selected:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_1
    sget p4, Lorg/ppsspp/ppsspp/R$drawable;->vip_btn_selected:I

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5
    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 6
    :cond_2
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p3, v0, :cond_3

    const/4 p3, 0x0

    .line 7
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    const p3, 0x106000d

    .line 8
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 9
    :goto_1
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10
    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_4
    :goto_3
    return-void
.end method

.method public varargs show([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    .line 4
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    if-eqz p1, :cond_1

    .line 5
    iget v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_1
    return-void
.end method

.method public updateVipDatas(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/arc/bean/VipBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipBeans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->vipBeans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->images:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/papa91/arc/bean/VipBean;

    invoke-virtual {v2}, Lcom/papa91/arc/bean/VipBean;->getMain()Lcom/papa91/arc/bean/MainBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/papa91/arc/bean/MainBean;->getPic_remote()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->images:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->banner:Lcom/youth/banner/Banner;

    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->images:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->z(Ljava/util/List;)Lcom/youth/banner/Banner;

    move-result-object p1

    new-instance v0, Lcom/papa91/arc/view/GlideImageLoader;

    invoke-direct {v0}, Lcom/papa91/arc/view/GlideImageLoader;-><init>()V

    .line 8
    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->y(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Lcom/youth/banner/Banner;->D(Lv2/b;)Lcom/youth/banner/Banner;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/youth/banner/Banner;->I()Lcom/youth/banner/Banner;

    .line 11
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->bannerViewPager:Lcom/youth/banner/view/BannerViewPager;

    iget v0, p0, Lcom/papa91/arc/dialog/SettingVipDialog;->from:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
