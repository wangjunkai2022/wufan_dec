.class public Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;
.super Lcn/sharesdk/onekeyshare/themes/classic/EditPage;
.source "EditPagePort.java"


# static fields
.field private static final DESIGN_BOTTOM_HEIGHT:I = 0x4b

.field private static final DESIGN_LEFT_PADDING:I = 0x28

.field private static final DESIGN_REMOVE_THUMB_HEIGHT:I = 0x46

.field private static final DESIGN_SCREEN_HEIGHT:I = 0x500

.field private static final DESIGN_THUMB_HEIGHT:I = 0x12c

.field private static final DESIGN_TITLE_HEIGHT:I = 0x60


# direct methods
.method public constructor <init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;-><init>(Lcn/sharesdk/onekeyshare/OnekeyShareThemeImpl;)V

    return-void
.end method

.method static synthetic access$002(Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->thumb:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private initBody(Landroid/widget/RelativeLayout;F)V
    .locals 7

    .line 1
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->svContent:Landroid/widget/ScrollView;

    .line 2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->svContent:Landroid/widget/ScrollView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    new-instance v1, Landroid/widget/EditText;

    iget-object v4, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->etContent:Landroid/widget/EditText;

    const/high16 v4, 0x42200000    # 40.0f

    mul-float v4, v4, p2

    float-to-int v4, v4

    .line 7
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 8
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->etContent:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->etContent:Landroid/widget/EditText;

    const v5, -0xc4c4c5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTextColor(I)V

    .line 10
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->etContent:Landroid/widget/EditText;

    const/4 v5, 0x2

    const/high16 v6, 0x41a80000    # 21.0f

    invoke-virtual {v1, v5, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 11
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->etContent:Landroid/widget/EditText;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v5}, Lcn/sharesdk/framework/InnerShareParams;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {p1, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 15
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    const v2, -0xcececf

    .line 16
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/high16 v1, 0x43960000    # 300.0f

    mul-float v1, v1, p2

    float-to-int v1, v1

    const/high16 v2, 0x428c0000    # 70.0f

    mul-float v2, v2, p2

    float-to-int v2, v2

    .line 17
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 18
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 19
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    new-instance p1, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort$1;

    iget-object v3, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {p1, p0, v3}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort$1;-><init>(Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    .line 21
    invoke-virtual {p1, v0}, Lcom/mob/tools/gui/AsyncImageView;->setScaleToCropCenter(Z)V

    .line 22
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 23
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->aivThumb:Lcom/mob/tools/gui/AsyncImageView;

    invoke-direct {p0, p1}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->initThumb(Lcom/mob/tools/gui/AsyncImageView;)V

    .line 26
    new-instance p1, Lcn/sharesdk/onekeyshare/themes/classic/XView;

    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/XView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    .line 27
    invoke-virtual {p1, p2}, Lcn/sharesdk/onekeyshare/themes/classic/XView;->setRatio(F)V

    .line 28
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xa

    .line 29
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0xb

    .line 30
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 31
    iget-object p2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    invoke-virtual {p2, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->xvRemove:Lcn/sharesdk/onekeyshare/themes/classic/XView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initBottom(Landroid/widget/LinearLayout;F)V
    .locals 9

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 2
    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v2, -0x1

    .line 3
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/high16 v3, 0x42960000    # 75.0f

    mul-float v3, v3, p2

    float-to-int v3, v3

    .line 4
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5
    invoke-virtual {p1, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvAt:Landroid/widget/TextView;

    const v4, -0xc4c4c5

    .line 7
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvAt:Landroid/widget/TextView;

    const/4 v5, 0x2

    const/high16 v6, 0x41b00000    # 22.0f

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvAt:Landroid/widget/TextView;

    const/16 v6, 0x50

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 10
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvAt:Landroid/widget/TextView;

    const-string v6, "@"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x42200000    # 40.0f

    mul-float v3, v3, p2

    float-to-int v3, v3

    .line 11
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvAt:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 12
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 13
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvAt:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvAt:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v6}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->isShowAtUserLayout(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 16
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvAt:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvAt:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    :goto_0
    new-instance v6, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v6, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvTextCouter:Landroid/widget/TextView;

    .line 19
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvTextCouter:Landroid/widget/TextView;

    const/high16 v6, 0x41a80000    # 21.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 21
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvTextCouter:Landroid/widget/TextView;

    const/16 v5, 0x55

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 22
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->etContent:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0, v4, v1, v1, v1}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 23
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvTextCouter:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 24
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 25
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 26
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvTextCouter:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, -0x333334

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    cmpl-float v1, p2, v3

    if-lez v1, :cond_1

    float-to-int p2, p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    .line 29
    :goto_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initShadow(Landroid/widget/LinearLayout;F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    float-to-int p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 1
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2
    new-instance p2, Landroid/view/View;

    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x29000000

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    new-instance p2, Landroid/view/View;

    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x14000000

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    new-instance p2, Landroid/view/View;

    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {p2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x7000000

    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    invoke-virtual {p1, p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initThumb(Lcom/mob/tools/gui/AsyncImageView;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/InnerShareParams;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/InnerShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->sp:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v2}, Lcn/sharesdk/framework/InnerShareParams;->getImageArray()[Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    :try_start_0
    invoke-static {v1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 8
    iput-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->thumb:Landroid/graphics/Bitmap;

    .line 9
    invoke-virtual {p1, v3}, Lcom/mob/tools/gui/AsyncImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 10
    array-length v5, v2

    if-lez v5, :cond_2

    .line 11
    aget-object v5, v2, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/io/File;

    aget-object v2, v2, v4

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    :try_start_1
    invoke-static {v1}, Lcom/mob/tools/utils/BitmapHelper;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 14
    iput-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->thumb:Landroid/graphics/Bitmap;

    .line 15
    invoke-virtual {p1, v3}, Lcom/mob/tools/gui/AsyncImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 17
    invoke-virtual {p1, v0, v4}, Lcom/mob/tools/gui/AsyncImageView;->execute(Ljava/lang/String;I)V

    goto :goto_2

    .line 18
    :cond_4
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private initTitle(Landroid/widget/RelativeLayout;F)V
    .locals 9

    .line 1
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvCancel:Landroid/widget/TextView;

    const v1, -0xc4c4c5

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvCancel:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvCancel:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 5
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const-string v5, "ssdk_oks_cancel"

    invoke-static {v0, v5}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 6
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const/high16 v0, 0x42200000    # 40.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    .line 7
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvCancel:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v0, p2, v5, p2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 8
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v0, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 9
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {p1, v8, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvCancel:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance v0, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 14
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 15
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const-string v8, "ssdk_oks_multi_share"

    invoke-static {v1, v8}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 17
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xd

    .line 18
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvShare:Landroid/widget/TextView;

    const v1, -0x92ef

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 23
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 24
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    const-string v1, "ssdk_oks_share"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 25
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 26
    :cond_2
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvShare:Landroid/widget/TextView;

    invoke-virtual {v0, p2, v5, p2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 27
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p2, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xb

    .line 28
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 29
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvShare:Landroid/widget/TextView;

    invoke-virtual {p1, v0, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object p1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->tvShare:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->onCreate()V

    .line 2
    iget-object v0, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x44a00000    # 1280.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->maxBodyHeight:I

    .line 4
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->llPage:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    iget-object v1, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 7
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->rlTitle:Landroid/widget/RelativeLayout;

    const v3, -0x191614

    .line 8
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/high16 v1, 0x42c00000    # 96.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 9
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 10
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->llPage:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->rlTitle:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->initTitle(Landroid/widget/RelativeLayout;F)V

    .line 12
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 14
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 15
    iget-object v6, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->llPage:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-direct {p0, v1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->initBody(Landroid/widget/RelativeLayout;F)V

    .line 17
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 19
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    invoke-direct {p0, v3, v0}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->initShadow(Landroid/widget/LinearLayout;F)V

    .line 21
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/mob/tools/FakeActivity;->activity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->llBottom:Landroid/widget/LinearLayout;

    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 23
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 24
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->llPage:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->llBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/themes/classic/EditPage;->llBottom:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Lcn/sharesdk/onekeyshare/themes/classic/port/EditPagePort;->initBottom(Landroid/widget/LinearLayout;F)V

    return-void
.end method
