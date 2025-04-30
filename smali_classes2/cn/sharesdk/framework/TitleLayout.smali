.class public Lcn/sharesdk/framework/TitleLayout;
.super Landroid/widget/LinearLayout;
.source "TitleLayout.java"


# instance fields
.field private btnBack:Landroid/widget/ImageView;

.field private btnRight:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/TitleLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/TitleLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 8

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnBack:Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "ssdk_back_arr"

    .line 3
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v2, p0, Lcn/sharesdk/framework/TitleLayout;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnBack:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v0, 0x30

    .line 6
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 7
    iget-object v2, p0, Lcn/sharesdk/framework/TitleLayout;->btnBack:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 9
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    .line 10
    invoke-static {p1, v2}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v2

    const-string v3, "ssdk_title_div"

    .line 11
    invoke-static {p1, v3}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 12
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    :cond_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 15
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    const/16 v0, 0x17

    .line 16
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    .line 17
    iget-object v5, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v0, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 18
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 19
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    const/high16 v5, 0x41900000    # 18.0f

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 21
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 23
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v0, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v7, 0x3f800000    # 1.0f

    .line 24
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 25
    iget-object v7, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 27
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-static {p1, v3}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    .line 29
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 30
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 32
    new-instance v2, Lcn/sharesdk/framework/TitleLayout$1;

    invoke-direct {v2, p0, p1, v0}, Lcn/sharesdk/framework/TitleLayout$1;-><init>(Lcn/sharesdk/framework/TitleLayout;Landroid/content/Context;Landroid/widget/ImageView;)V

    iput-object v2, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    const/4 v0, 0x4

    .line 33
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x32

    .line 35
    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->dipToPx(Landroid/content/Context;I)I

    move-result p1

    .line 36
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 37
    iget-object p1, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object p1, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p1, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 39
    iget-object p1, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 40
    iget-object p1, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object p1, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getBtnBack()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getBtnRight()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->btnRight:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvTitle()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/TitleLayout;->tvTitle:Landroid/widget/TextView;

    return-object v0
.end method
