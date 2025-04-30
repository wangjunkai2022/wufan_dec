.class public Lcom/join/mgps/customview/CellClassifyItem;
.super Landroid/widget/RelativeLayout;
.source "CellClassifyItem.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0807b1

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/CellClassifyItem;->b:I

    .line 3
    invoke-direct {p0}, Lcom/join/mgps/customview/CellClassifyItem;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f0807b1

    .line 5
    iput p1, p0, Lcom/join/mgps/customview/CellClassifyItem;->b:I

    .line 6
    invoke-direct {p0}, Lcom/join/mgps/customview/CellClassifyItem;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0807b1

    .line 8
    iput v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->b:I

    .line 9
    sget-object v1, Lcom/join/android/app/mgsim/wufun/R$styleable;->CellClassifyItem:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CellClassifyItem;->b:I

    const/4 p2, 0x3

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/join/mgps/customview/CellClassifyItem;->d:Ljava/lang/String;

    const/4 p2, 0x2

    .line 12
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/join/mgps/customview/CellClassifyItem;->e:Ljava/lang/String;

    const/4 p2, 0x1

    .line 13
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/join/mgps/customview/CellClassifyItem;->f:I

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    invoke-direct {p0}, Lcom/join/mgps/customview/CellClassifyItem;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c01f9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090b71

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v1, p0, Lcom/join/mgps/customview/CellClassifyItem;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f090acd

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/customview/CellClassifyItem;->h:Landroid/widget/TextView;

    const v1, 0x7f090ad0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/join/mgps/customview/CellClassifyItem;->l:Landroid/widget/LinearLayout;

    const v1, 0x7f090340

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/customview/CellClassifyItem;->i:Landroid/widget/TextView;

    const v1, 0x7f090b73

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/customview/CellClassifyItem;->j:Landroid/widget/TextView;

    const v1, 0x7f090b72

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/join/mgps/customview/CellClassifyItem;->k:Landroid/widget/TextView;

    const/4 v1, -0x1

    .line 9
    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 10
    iget v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->b:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/CellClassifyItem;->setmIconRes(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/CellClassifyItem;->setmName(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/CellClassifyItem;->setmDesc(Ljava/lang/String;)V

    .line 13
    iget v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->f:I

    invoke-virtual {p0, v0}, Lcom/join/mgps/customview/CellClassifyItem;->setCountTip(I)V

    return-void
.end method


# virtual methods
.method public getmCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->f:I

    return v0
.end method

.method public getmDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getmIconRes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->b:I

    return v0
.end method

.method public getmIconSrc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getmId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->a:I

    return v0
.end method

.method public getmName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setCountFlag(I)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/CellClassifyItem;->setmCount(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->k:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCountTip(I)V
    .locals 6

    const-string v0, ""

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/CellClassifyItem;->setmCount(I)V

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110112

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v2

    .line 5
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    .line 7
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#FC9234"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/CellClassifyItem;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDescVisibility(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/CellClassifyItem;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const v0, 0x7f090b71

    .line 4
    invoke-virtual {p1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/CellClassifyItem;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    invoke-virtual {p1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v0, -0x1

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setmCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CellClassifyItem;->f:I

    return-void
.end method

.method public setmDesc(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CellClassifyItem;->e:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setmIconRes(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CellClassifyItem;->b:I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->E(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    return-void
.end method

.method public setmIconSrc(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CellClassifyItem;->c:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget v1, p0, Lcom/join/mgps/customview/CellClassifyItem;->b:I

    invoke-static {v0, v1, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    return-void
.end method

.method public setmId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/CellClassifyItem;->a:I

    return-void
.end method

.method public setmName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/CellClassifyItem;->d:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/CellClassifyItem;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
