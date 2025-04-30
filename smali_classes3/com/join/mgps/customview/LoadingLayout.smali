.class public Lcom/join/mgps/customview/LoadingLayout;
.super Landroid/widget/RelativeLayout;
.source "LoadingLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/LoadingLayout$a;,
        Lcom/join/mgps/customview/LoadingLayout$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/join/mgps/customview/LoadingLayout$b;

.field private l:Lcom/join/mgps/customview/LoadingLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    const v0, 0x1020002

    .line 1
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, p0, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    invoke-virtual {p0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "the view must has a parent"

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v0, p0, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/LoadingLayout;->d()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/LoadingLayout;->d()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/LoadingLayout;->d()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/LoadingLayout;->d()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->I2(Landroid/content/Context;)V

    goto :goto_0

    .line 3
    :sswitch_1
    iget-object p1, p0, Lcom/join/mgps/customview/LoadingLayout;->l:Lcom/join/mgps/customview/LoadingLayout$a;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/join/mgps/customview/LoadingLayout$a;->noDataCallBack()V

    goto :goto_0

    .line 5
    :sswitch_2
    iget-object p1, p0, Lcom/join/mgps/customview/LoadingLayout;->k:Lcom/join/mgps/customview/LoadingLayout$b;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/join/mgps/customview/LoadingLayout$b;->callBack()V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090d11 -> :sswitch_2
        0x7f090e20 -> :sswitch_1
        0x7f090e21 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f090e21

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090d11

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090481

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->a:Landroid/widget/TextView;

    const v0, 0x7f0909b5

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f090b1f

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f0909b0

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f090989

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f090b23

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->j:Landroid/widget/ImageView;

    const v0, 0x7f090b22

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->b:Landroid/widget/TextView;

    const v0, 0x7f090e20

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->c:Landroid/widget/TextView;

    const v0, 0x7f090f6e

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->e:Landroid/widget/TextView;

    const v0, 0x7f090fcf

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->d:Landroid/widget/TextView;

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setFailLayoutBgAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public setFailedMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLoadingHintMsg(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLoadingLayoutBGColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setLoadingLayoutBgAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public setLoadingLayoutMarginTop(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/LoadingLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iget-object v2, p0, Lcom/join/mgps/customview/LoadingLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4
    iget-object v3, p0, Lcom/join/mgps/customview/LoadingLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 6
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 7
    iput p1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 8
    iput p1, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/LoadingLayout;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/LoadingLayout;->g:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/LoadingLayout;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/LoadingLayout;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setNoDataAll(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNoDataCallBackListener(Lcom/join/mgps/customview/LoadingLayout$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LoadingLayout;->l:Lcom/join/mgps/customview/LoadingLayout$a;

    return-void
.end method

.method public setNoDataImage(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setNoDataImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setNoDataMsg(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRefreshCallBackListener(Lcom/join/mgps/customview/LoadingLayout$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LoadingLayout;->k:Lcom/join/mgps/customview/LoadingLayout$b;

    return-void
.end method

.method public setTextViewNoData(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LoadingLayout;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
