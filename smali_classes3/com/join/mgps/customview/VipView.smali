.class public Lcom/join/mgps/customview/VipView;
.super Landroid/widget/LinearLayout;
.source "VipView.java"


# instance fields
.field a:Landroid/content/Context;

.field b:I

.field c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/VipView;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/VipView;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    iput-object p1, p0, Lcom/join/mgps/customview/VipView;->a:Landroid/content/Context;

    return-void
.end method

.method private a(I)I
    .locals 0

    packed-switch p1, :pswitch_data_0

    const p1, 0x7f080d06

    return p1

    :pswitch_0
    const p1, 0x7f080d0e

    return p1

    :pswitch_1
    const p1, 0x7f080d0d

    return p1

    :pswitch_2
    const p1, 0x7f080d0c

    return p1

    :pswitch_3
    const p1, 0x7f080d0b

    return p1

    :pswitch_4
    const p1, 0x7f080d0a

    return p1

    :pswitch_5
    const p1, 0x7f080d09

    return p1

    :pswitch_6
    const p1, 0x7f080d08

    return p1

    :pswitch_7
    const p1, 0x7f080d07

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/VipView;->b:I

    .line 2
    iput p2, p0, Lcom/join/mgps/customview/VipView;->c:I

    return-void
.end method

.method public setVipData(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 2
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/join/mgps/customview/VipView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x10

    .line 5
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 6
    iget v2, p0, Lcom/join/mgps/customview/VipView;->b:I

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/join/mgps/customview/VipView;->c:I

    if-eqz v3, :cond_0

    .line 7
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 8
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/customview/VipView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07113b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 10
    iget-object v2, p0, Lcom/join/mgps/customview/VipView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_0
    const v1, 0x106000d

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    if-lez p2, :cond_1

    .line 12
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/VipView;->a(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    if-lez p1, :cond_2

    .line 15
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f080d10

    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    aput-object v0, p1, v1

    .line 18
    invoke-static {p1}, Lcom/join/mgps/Util/i0;->W0([Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    .line 19
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setVipDataForUserCenter(II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 2
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/join/mgps/customview/VipView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x10

    .line 5
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 6
    iget-object v2, p0, Lcom/join/mgps/customview/VipView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07113b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 7
    iget-object v2, p0, Lcom/join/mgps/customview/VipView;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-lez p2, :cond_0

    .line 8
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/VipView;->a(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    const p1, 0x7f080d10

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    .line 10
    invoke-static {p1}, Lcom/join/mgps/Util/i0;->W0([Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f080d04

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setVipDataForUserCenter(IIZ)V
    .locals 3

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 14
    new-instance p3, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/join/mgps/customview/VipView;->a:Landroid/content/Context;

    invoke-direct {p3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x10

    .line 17
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 18
    iget-object v1, p0, Lcom/join/mgps/customview/VipView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07113b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 19
    iget-object v1, p0, Lcom/join/mgps/customview/VipView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-lez p2, :cond_0

    .line 20
    invoke-direct {p0, p2}, Lcom/join/mgps/customview/VipView;->a(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    const p1, 0x7f080d10

    .line 21
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    const p1, 0x7f080d05

    .line 22
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
