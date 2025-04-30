.class public Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;
.super Landroid/widget/LinearLayout;
.source "PRTHeader.java"


# static fields
.field private static final DESIGN_AVATAR_PADDING:I = 0x18

.field private static final DESIGN_AVATAR_WIDTH:I = 0x40

.field private static final DESIGN_SCREEN_WIDTH:I = 0x2d0


# instance fields
.field private ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

.field private pbRefreshing:Landroid/widget/ProgressBar;

.field private tvHeader:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Lcom/mob/tools/utils/ResHelper;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    if-ge v2, v4, :cond_0

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    aget v0, v0, v3

    :goto_0
    int-to-float v0, v0

    const/high16 v2, 0x44340000    # 720.0f

    div-float/2addr v0, v2

    .line 4
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 8
    invoke-virtual {p0, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance v3, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    invoke-direct {v3, p1}, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    const-string v3, "ssdk_oks_ptr_ptr"

    .line 10
    invoke-static {p1, v3}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    .line 11
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    const/high16 v3, 0x42800000    # 64.0f

    mul-float v3, v3, v0

    float-to-int v3, v3

    .line 12
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x10

    .line 13
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v6, 0x41c00000    # 24.0f

    mul-float v0, v0, v6

    float-to-int v0, v0

    .line 14
    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 15
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    invoke-virtual {v2, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    new-instance v6, Landroid/widget/ProgressBar;

    invoke-direct {v6, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    const-string v6, "ssdk_oks_classic_progressbar"

    .line 17
    invoke-static {p1, v6}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 19
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    invoke-virtual {v6, p1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    invoke-virtual {v2, p1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 22
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->tvHeader:Landroid/widget/TextView;

    const/4 v4, 0x2

    const/high16 v6, 0x41900000    # 18.0f

    .line 23
    invoke-virtual {p1, v4, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 24
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 25
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->tvHeader:Landroid/widget/TextView;

    const v0, -0xf644f9

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 27
    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 28
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onPullDown(I)V
    .locals 3

    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    add-int/lit8 v1, p1, -0x64

    const/16 v2, 0xb4

    mul-int/lit16 v1, v1, 0xb4

    .line 1
    div-int/lit8 v1, v1, 0x14

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-gez v2, :cond_1

    const/4 v2, 0x0

    .line 2
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;->setRotation(F)V

    goto :goto_1

    .line 3
    :cond_2
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;->setRotation(F)V

    :goto_1
    if-ge p1, v0, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "ssdk_oks_pull_to_refresh"

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 5
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "ssdk_oks_release_to_refresh"

    invoke-static {p1, v0}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    .line 7
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onRequest()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssdk_oks_refreshing"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->tvHeader:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public reverse()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->pbRefreshing:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;->setRotation(F)V

    .line 3
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/PRTHeader;->ivArrow:Lcn/sharesdk/onekeyshare/themes/classic/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
