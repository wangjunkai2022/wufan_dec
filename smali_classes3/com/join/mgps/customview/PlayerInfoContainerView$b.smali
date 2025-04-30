.class Lcom/join/mgps/customview/PlayerInfoContainerView$b;
.super Ljava/lang/Object;
.source "PlayerInfoContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/PlayerInfoContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/ViewGroup;

.field private m:I

.field private n:Z

.field private o:Lcom/papa91/battle/protocol/RoomPosition;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;

.field private w:Lcom/join/mgps/customview/VipView;

.field final synthetic x:Lcom/join/mgps/customview/PlayerInfoContainerView;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/PlayerInfoContainerView;Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->n:Z

    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->l:Landroid/view/ViewGroup;

    .line 5
    iput p4, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->m:I

    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)Lcom/papa91/battle/protocol/RoomPosition;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->o:Lcom/papa91/battle/protocol/RoomPosition;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->m:I

    return p0
.end method

.method private d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    iget-object v0, v0, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/j;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/j;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    iget-object v1, v1, Lcom/join/mgps/customview/PlayerInfoContainerView;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/j;->j(Landroid/app/Activity;)F

    move-result v0

    const/high16 v1, 0x41100000    # 9.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0710f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 5
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07113a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 6
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->v:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070f88

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 9
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 10
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071167

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 11
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 13
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07145a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 14
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 15
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07117e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 16
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 18
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 19
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 20
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0710d7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 21
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 23
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0710cc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 24
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 26
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070ff6

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 27
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->w:Lcom/join/mgps/customview/VipView;

    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iget-object v4, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v0

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/customview/VipView;->setSize(II)V

    .line 29
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 30
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0711cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 31
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 32
    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 34
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07113b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 35
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0710f8

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    iget v0, v0, Lcom/join/mgps/customview/PlayerInfoContainerView;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iget v3, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->m:I

    const/4 v4, 0x0

    if-ne v3, v1, :cond_1

    .line 4
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_1
    if-ne v3, v2, :cond_2

    .line 5
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 6
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07112a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 7
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 9
    iget-object v3, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->l:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    const v4, 0x7f07112e

    if-lez v3, :cond_5

    .line 10
    div-int/2addr v3, v2

    iget-object v5, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    sub-int/2addr v3, v5

    div-int/2addr v3, v2

    div-int/2addr v3, v2

    .line 11
    iget-object v5, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    iget v5, v5, Lcom/join/mgps/customview/PlayerInfoContainerView;->c:I

    if-ne v5, v2, :cond_5

    .line 12
    iget v5, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->m:I

    if-ne v5, v1, :cond_4

    .line 13
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_4
    if-ne v5, v2, :cond_5

    .line 14
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 15
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void
.end method


# virtual methods
.method c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c030c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v1, 0x7f0907fd

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->j:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v1, 0x7f0909d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->u:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v1, 0x7f090167

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v1, 0x7f091153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c:Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v1, 0x7f0907e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v1, 0x7f09113e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->e:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v1, 0x7f091145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v1, 0x7f0910ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->g:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v1, 0x7f09082c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->i:Landroid/widget/ImageView;

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v1, 0x7f091186

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->k:Landroid/widget/TextView;

    .line 12
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v1, 0x7f09094c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->q:Landroid/widget/LinearLayout;

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v1, 0x7f090819

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->r:Landroid/widget/TextView;

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v1, 0x7f09081a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->s:Landroid/widget/TextView;

    .line 15
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v1, 0x7f0912a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/customview/VipView;

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->w:Lcom/join/mgps/customview/VipView;

    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v1, 0x7f090962

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->h:Landroid/widget/LinearLayout;

    .line 17
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v1, 0x7f090d80

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->v:Landroid/view/View;

    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    const v2, 0x7f0907d4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    .line 19
    iget v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->m:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c:Landroid/widget/TextView;

    const-string v3, "4P"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c:Landroid/widget/TextView;

    const-string v3, "3P"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c:Landroid/widget/TextView;

    const-string v3, "2P"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c:Landroid/widget/TextView;

    const-string v3, "1P"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;-><init>(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 26
    iget v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->m:I

    if-le v1, v2, :cond_4

    .line 27
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07110f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 28
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->l:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public f(Lcom/papa91/battle/protocol/RoomPosition;ZZ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->e()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->o:Lcom/papa91/battle/protocol/RoomPosition;

    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->n:Z

    .line 4
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v0

    const v1, 0x7f080939

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 5
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->j:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f:Landroid/widget/TextView;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->i:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->k:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->i:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080926

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->k:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->i:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080922

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    iget-object p1, p1, Lcom/join/mgps/customview/PlayerInfoContainerView;->d:Lapp/mgsim/arena/UserType;

    sget-object p2, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    if-ne p1, p2, :cond_1

    .line 18
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->u:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 21
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->w:Lcom/join/mgps/customview/VipView;

    invoke-virtual {p1, v3, v3}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 22
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->q:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 25
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->s:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->k:Landroid/widget/TextView;

    new-instance p2, Lcom/join/mgps/customview/PlayerInfoContainerView$b$b;

    invoke-direct {p2, p0}, Lcom/join/mgps/customview/PlayerInfoContainerView$b$b;-><init>(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getState()Lcom/papa91/battle/protocol/RoomPosition$State;

    move-result-object v0

    sget-object v4, Lcom/papa91/battle/protocol/RoomPosition$State;->READY:Lcom/papa91/battle/protocol/RoomPosition$State;

    if-ne v0, v4, :cond_3

    if-nez p2, :cond_3

    .line 36
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RoomPosition player Avatar:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "GameRoomActivity"

    invoke-static {v4, v0}, Lcom/join/mgps/Util/t0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/join/android/app/common/utils/MyImageLoader;->l(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->f:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->g:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getPingVal()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->o:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getPeripheral()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->o:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getPlatform()Lcom/papa91/battle/protocol/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/Platform;->getNumber()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    .line 46
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 47
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    :goto_3
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->o:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v0}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 49
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->w:Lcom/join/mgps/customview/VipView;

    invoke-virtual {v0, v4, v3}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    goto :goto_4

    .line 50
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->w:Lcom/join/mgps/customview/VipView;

    invoke-virtual {v0, v3, v3}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 51
    :goto_4
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->o:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v4}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitleColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->e:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->o:Lcom/papa91/battle/protocol/RoomPosition;

    invoke-virtual {v4}, Lcom/papa91/battle/protocol/RoomPosition;->getBattleTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getProficiencyLevel()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 55
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    const v0, 0x7f0807fa

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 57
    :pswitch_0
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    const v0, 0x7f080803

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 59
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    const v0, 0x7f080804

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 60
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    const v0, 0x7f0807fd

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 62
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    const v0, 0x7f0807fe

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 63
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    const v0, 0x7f0807ff

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 65
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    const v0, 0x7f080800

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 66
    :pswitch_3
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    const v0, 0x7f0807fb

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 68
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    const v0, 0x7f0807fc

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 69
    :pswitch_4
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    const v0, 0x7f080801

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 71
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    const v0, 0x7f080802

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    .line 72
    :pswitch_5
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->t:Landroid/widget/ImageView;

    const v0, 0x7f080805

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 74
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->p:Landroid/view/View;

    const v0, 0x7f08017c

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_5
    if-eqz p2, :cond_7

    .line 75
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->u:Landroid/view/View;

    const p2, 0x7f080925

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    :cond_7
    if-eqz p3, :cond_8

    .line 76
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->u:Landroid/view/View;

    const p2, 0x7f08093a

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    .line 77
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->u:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
