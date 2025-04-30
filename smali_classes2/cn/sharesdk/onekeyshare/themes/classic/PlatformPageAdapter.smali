.class public abstract Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;
.super Lcom/mob/tools/gui/ViewPagerAdapter;
.source "PlatformPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DESIGN_BOTTOM_HEIGHT:I = 0x34

.field protected static final MIN_CLICK_INTERVAL:I = 0x3e8


# instance fields
.field protected bottomHeight:I

.field protected cellHeight:I

.field protected cells:[[Ljava/lang/Object;

.field private lastClickTime:J

.field protected lineSize:I

.field protected logoHeight:I

.field protected paddingTop:I

.field private page:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

.field protected panelHeight:I

.field protected sepLineWidth:I

.field private vInd:Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/gui/ViewPagerAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->page:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->calculateSize(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 5
    invoke-virtual {p0, p2}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->collectCells(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private createPanel(Landroid/content/Context;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v4, -0xd0d0e

    .line 3
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 4
    iget v4, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->panelHeight:I

    iget v5, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cellHeight:I

    div-int/2addr v4, v5

    .line 5
    iget v5, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    mul-int v5, v5, v4

    new-array v6, v5, [Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const-string v7, "ssdk_oks_classic_platform_cell_back"

    .line 7
    invoke-static {v1, v7}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, -0x1

    if-ge v9, v4, :cond_2

    .line 8
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-direct {v12, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    iget v14, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cellHeight:I

    invoke-direct {v13, v11, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    invoke-virtual {v2, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v13, 0x0

    .line 11
    :goto_1
    iget v14, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    if-ge v13, v14, :cond_1

    mul-int v14, v14, v9

    add-int/2addr v14, v13

    .line 12
    new-instance v15, Landroid/widget/LinearLayout;

    invoke-direct {v15, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    aput-object v15, v6, v14

    .line 13
    iget v14, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    mul-int v14, v14, v9

    add-int/2addr v14, v13

    aget-object v14, v6, v14

    invoke-virtual {v14, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 14
    iget v14, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    mul-int v14, v14, v9

    add-int/2addr v14, v13

    aget-object v14, v6, v14

    invoke-virtual {v14, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 15
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    iget v15, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cellHeight:I

    invoke-direct {v14, v11, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 16
    iput v10, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 17
    iget v15, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    mul-int v15, v15, v9

    add-int/2addr v15, v13

    aget-object v15, v6, v15

    invoke-virtual {v12, v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget v14, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lineSize:I

    sub-int/2addr v14, v3

    if-ge v13, v14, :cond_0

    .line 19
    new-instance v14, Landroid/view/View;

    invoke-direct {v14, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    invoke-direct {v15, v3, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 21
    invoke-virtual {v12, v14, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x1

    goto :goto_1

    .line 22
    :cond_1
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v12, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->sepLineWidth:I

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 24
    invoke-virtual {v2, v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v8, v5, :cond_3

    .line 25
    aget-object v3, v6, v8

    .line 26
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 28
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->logoHeight:I

    invoke-direct {v7, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 29
    iget v9, v0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->paddingTop:I

    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 30
    invoke-virtual {v3, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v7, -0x9b9b9c

    .line 32
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v7, 0x2

    const/high16 v9, 0x41600000    # 14.0f

    .line 33
    invoke-virtual {v4, v7, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v7, 0x11

    .line 34
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 35
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v7, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 36
    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 37
    invoke-virtual {v3, v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    return-object v2
.end method

.method private refreshPanel([Landroid/widget/LinearLayout;[Ljava/lang/Object;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->page:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-virtual {v0}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_oks_classic_platform_cell_back"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->page:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-virtual {v1}, Lcom/mob/tools/FakeActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ssdk_oks_classic_platfrom_cell_back_nor"

    invoke-static {v1, v2}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_6

    .line 4
    aget-object v4, p1, v3

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 5
    aget-object v5, p1, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 6
    aget-object v6, p2, v3

    const/4 v7, 0x0

    if-nez v6, :cond_0

    const/4 v6, 0x4

    .line 7
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    aget-object v4, p1, v3

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 10
    aget-object v4, p1, v3

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 11
    :cond_0
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    .line 14
    invoke-virtual {v5}, Landroid/widget/TextView;->requestLayout()V

    .line 15
    aget-object v6, p1, v3

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 16
    aget-object v6, p1, v3

    invoke-virtual {v6, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    aget-object v6, p1, v3

    aget-object v8, p2, v3

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 18
    aget-object v6, p2, v3

    instance-of v6, v6, Lcn/sharesdk/onekeyshare/CustomerLogo;

    const-string v8, ""

    if-eqz v6, :cond_3

    .line 19
    aget-object v6, p2, v3

    invoke-static {v6}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/sharesdk/onekeyshare/CustomerLogo;

    .line 20
    iget-object v9, v6, Lcn/sharesdk/onekeyshare/CustomerLogo;->logo:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_1

    .line 21
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 23
    :goto_1
    iget-object v4, v6, Lcn/sharesdk/onekeyshare/CustomerLogo;->label:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 24
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 25
    :cond_2
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 26
    :cond_3
    aget-object v6, p2, v3

    invoke-static {v6}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/sharesdk/framework/Platform;

    .line 27
    invoke-virtual {v6}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 28
    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ssdk_oks_classic_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_4

    .line 29
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 30
    :cond_4
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 31
    :goto_2
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ssdk_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_5

    .line 32
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 33
    :cond_5
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method protected abstract calculateSize(Landroid/content/Context;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method protected abstract collectCells(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public getBottomHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->bottomHeight:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getPanelHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->panelHeight:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->createPanel(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    invoke-static {p2}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/widget/LinearLayout;

    .line 4
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->cells:[[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-direct {p0, p3, p1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->refreshPanel([Landroid/widget/LinearLayout;[Ljava/lang/Object;)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-void

    .line 3
    :cond_0
    iput-wide v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->lastClickTime:J

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcn/sharesdk/onekeyshare/CustomerLogo;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/CustomerLogo;

    .line 6
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->page:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-virtual {v1, p1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->performCustomLogoClick(Landroid/view/View;Lcn/sharesdk/onekeyshare/CustomerLogo;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->forceCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/sharesdk/framework/Platform;

    .line 8
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->page:Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;

    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPage;->showEditPage(Lcn/sharesdk/framework/Platform;)V

    :goto_0
    return-void
.end method

.method public onScreenChange(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->vInd:Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->setScreenCount(I)V

    .line 3
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->vInd:Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;

    invoke-virtual {v0, p1, p2}, Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;->onScreenChange(II)V

    :cond_0
    return-void
.end method

.method public setIndicator(Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PlatformPageAdapter;->vInd:Lcn/sharesdk/onekeyshare/themes/classic/IndicatorView;

    return-void
.end method
