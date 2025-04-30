.class public Lx0/b;
.super Ljava/lang/Object;
.source "UnreadMsgUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/flyco/tablayout/widget/MsgView;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static b(Lcom/flyco/tablayout/widget/MsgView;I)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v3, ""

    if-gtz p1, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Lcom/flyco/tablayout/widget/MsgView;->setStrokeWidth(I)V

    .line 5
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget p1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v2, p1, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 7
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 9
    :cond_1
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41900000    # 18.0f

    mul-float v5, v1, v4

    float-to-int v5, v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-lez p1, :cond_2

    const/16 v5, 0xa

    if-ge p1, v5, :cond_2

    mul-float v1, v1, v4

    float-to-int v1, v1

    .line 10
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x9

    const/4 v5, -0x2

    const/high16 v6, 0x40c00000    # 6.0f

    if-le p1, v4, :cond_3

    const/16 v4, 0x64

    if-ge p1, v4, :cond_3

    .line 12
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-float v4, v1, v6

    float-to-int v4, v4

    mul-float v1, v1, v6

    float-to-int v1, v1

    .line 13
    invoke-virtual {p0, v4, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :cond_3
    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-float p1, v1, v6

    float-to-int p1, p1

    mul-float v1, v1, v6

    float-to-int v1, v1

    .line 16
    invoke-virtual {p0, p1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string p1, "99+"

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method
