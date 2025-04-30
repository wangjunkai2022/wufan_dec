.class public Lcom/join/mgps/adapter/u1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "GameListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/u1$b;,
        Lcom/join/mgps/adapter/u1$c;,
        Lcom/join/mgps/adapter/u1$d;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:F

.field d:Lcom/join/mgps/adapter/u1$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/join/mgps/adapter/u1;->c:F

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/adapter/u1;->d:Lcom/join/mgps/adapter/u1$b;

    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/u1;->b:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/adapter/u1;->a:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/join/mgps/adapter/u1$c;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/join/mgps/adapter/u1$c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/adapter/u1;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0713eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 3
    iget v2, p0, Lcom/join/mgps/adapter/u1;->c:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 4
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 5
    iget-object v1, p1, Lcom/join/mgps/adapter/u1$c;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p1, Lcom/join/mgps/adapter/u1$c;->e:Landroid/widget/TextView;

    const v1, 0x7f07110f

    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/u1;->c(I)F

    move-result v2

    iget v3, p0, Lcom/join/mgps/adapter/u1;->c:F

    mul-float v2, v2, v3

    const v3, 0x3f6b851f    # 0.92f

    mul-float v2, v2, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/u1$c;->j:Lcom/join/mgps/customview/VipView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/adapter/u1;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    .line 9
    iget-object v2, p1, Lcom/join/mgps/adapter/u1$c;->j:Lcom/join/mgps/customview/VipView;

    iget v4, p0, Lcom/join/mgps/adapter/u1;->c:F

    mul-float v5, v0, v4

    float-to-int v5, v5

    mul-float v0, v0, v4

    float-to-int v0, v0

    invoke-virtual {v2, v5, v0}, Lcom/join/mgps/customview/VipView;->setSize(II)V

    .line 10
    iget-object v0, p1, Lcom/join/mgps/adapter/u1$c;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 11
    iget-object v2, p0, Lcom/join/mgps/adapter/u1;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 12
    iget v2, p0, Lcom/join/mgps/adapter/u1;->c:F

    mul-float v4, v1, v2

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 13
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 14
    iget-object v1, p1, Lcom/join/mgps/adapter/u1$c;->k:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v0, p1, Lcom/join/mgps/adapter/u1$c;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 16
    iget-object v1, p0, Lcom/join/mgps/adapter/u1;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070f87

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 17
    iget v2, p0, Lcom/join/mgps/adapter/u1;->c:F

    mul-float v4, v1, v2

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    mul-float v4, v1, v2

    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 18
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    mul-float v4, v1, v2

    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 19
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    mul-float v1, v1, v2

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 20
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 21
    iget-object p1, p1, Lcom/join/mgps/adapter/u1$c;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b(Lcom/join/mgps/adapter/u1$d;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lcom/join/mgps/adapter/u1$d;->c:Landroid/widget/TextView;

    const v1, 0x7f07113b

    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/u1;->c(I)F

    move-result v2

    iget v3, p0, Lcom/join/mgps/adapter/u1;->c:F

    mul-float v2, v2, v3

    const v3, 0x3f6b851f    # 0.92f

    mul-float v2, v2, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2
    iget-object v0, p1, Lcom/join/mgps/adapter/u1$d;->h:Landroid/widget/TextView;

    const v2, 0x7f07110f

    invoke-direct {p0, v2}, Lcom/join/mgps/adapter/u1;->c(I)F

    move-result v5

    iget v6, p0, Lcom/join/mgps/adapter/u1;->c:F

    mul-float v5, v5, v6

    mul-float v5, v5, v3

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 3
    iget-object v0, p1, Lcom/join/mgps/adapter/u1$d;->g:Lcom/join/mgps/customview/CountDownerTextView;

    invoke-direct {p0, v2}, Lcom/join/mgps/adapter/u1;->c(I)F

    move-result v2

    iget v5, p0, Lcom/join/mgps/adapter/u1;->c:F

    mul-float v2, v2, v5

    mul-float v2, v2, v3

    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4
    iget-object v0, p1, Lcom/join/mgps/adapter/u1$d;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 5
    iget-object v2, p0, Lcom/join/mgps/adapter/u1;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    int-to-float v2, v2

    .line 6
    iget v3, p0, Lcom/join/mgps/adapter/u1;->c:F

    mul-float v4, v2, v3

    float-to-int v4, v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 7
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 8
    iget-object v2, p1, Lcom/join/mgps/adapter/u1$d;->m:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p1, Lcom/join/mgps/adapter/u1$d;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    iget-object v2, p0, Lcom/join/mgps/adapter/u1;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    .line 11
    iget v2, p0, Lcom/join/mgps/adapter/u1;->c:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 12
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 13
    iget-object p1, p1, Lcom/join/mgps/adapter/u1$d;->n:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private c(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/u1;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    return p1
.end method

.method private g(Landroid/widget/ImageView;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    packed-switch p3, :pswitch_data_0

    const/16 p3, 0x8

    .line 2
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const p1, 0x7f0807fa

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p3, 0x7f080803

    .line 5
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p1, 0x7f080804

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 7
    :pswitch_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p3, 0x7f0807fd

    .line 8
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p1, 0x7f0807fe

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 10
    :pswitch_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p3, 0x7f0807ff

    .line 11
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p1, 0x7f080800

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 13
    :pswitch_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p3, 0x7f0807fb

    .line 14
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p1, 0x7f0807fc

    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 16
    :pswitch_4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p3, 0x7f080801

    .line 17
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p1, 0x7f080802

    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 19
    :pswitch_5
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const p3, 0x7f080805

    .line 20
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const p1, 0x7f08017c

    .line 21
    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    nop

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

.method private i(Lcom/join/mgps/adapter/u1$d;Lapp/mgsim/arena/SimpleWrapperRoom;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 2
    iget-object v4, v1, Lcom/join/mgps/adapter/u1$d;->c:Landroid/widget/TextView;

    const v5, 0x7f07123a

    invoke-direct {v0, v4, v5}, Lcom/join/mgps/adapter/u1;->j(Landroid/view/View;I)V

    .line 3
    invoke-direct/range {p0 .. p1}, Lcom/join/mgps/adapter/u1;->b(Lcom/join/mgps/adapter/u1$d;)V

    .line 4
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getElite()Z

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 5
    iget-object v4, v1, Lcom/join/mgps/adapter/u1$d;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v4, v1, Lcom/join/mgps/adapter/u1$d;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v4, v1, Lcom/join/mgps/adapter/u1$d;->i:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v4, v1, Lcom/join/mgps/adapter/u1$d;->j:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/join/mgps/adapter/u1;->b:Landroid/content/Context;

    const v9, 0x7f1102a4

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getChallengeCoins()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v4, v1, Lcom/join/mgps/adapter/u1$d;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object v4, v1, Lcom/join/mgps/adapter/u1$d;->f:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :goto_0
    iget-object v4, v1, Lcom/join/mgps/adapter/u1$d;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasJoinPassword()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    iget-object v4, v1, Lcom/join/mgps/adapter/u1$d;->d:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v4, v1, Lcom/join/mgps/adapter/u1$d;->d:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    :goto_1
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 16
    iget-object v4, v1, Lcom/join/mgps/adapter/u1$d;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 17
    :cond_2
    iget-object v4, v1, Lcom/join/mgps/adapter/u1$d;->e:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x4

    const-string v10, ""

    if-ge v4, v9, :cond_13

    .line 18
    iget-object v11, v1, Lcom/join/mgps/adapter/u1$d;->o:[Lcom/join/mgps/adapter/u1$c;

    aget-object v11, v11, v4

    .line 19
    invoke-direct {v0, v11}, Lcom/join/mgps/adapter/u1;->a(Lcom/join/mgps/adapter/u1$c;)V

    .line 20
    iget-object v12, v11, Lcom/join/mgps/adapter/u1$c;->j:Lcom/join/mgps/customview/VipView;

    invoke-virtual {v12, v7, v7}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 21
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerListCount()I

    move-result v12

    const-string v13, "uid="

    const-string v14, "newarena account "

    if-lt v4, v12, :cond_9

    if-nez v4, :cond_8

    .line 22
    iget-object v9, v11, Lcom/join/mgps/adapter/u1$c;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 23
    iget-object v9, v11, Lcom/join/mgps/adapter/u1$c;->h:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    iget-object v9, v11, Lcom/join/mgps/adapter/u1$c;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getAvatar()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/join/android/app/common/utils/MyImageLoader;->l(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 25
    iget-object v9, v11, Lcom/join/mgps/adapter/u1$c;->k:Landroid/widget/ImageView;

    iget-object v12, v11, Lcom/join/mgps/adapter/u1$c;->l:Landroid/view/View;

    invoke-virtual {v3, v7}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v15

    invoke-virtual {v15}, Lcom/papa91/battle/protocol/RoomPosition;->getProficiencyLevel()I

    move-result v15

    invoke-direct {v0, v9, v12, v15}, Lcom/join/mgps/adapter/u1;->g(Landroid/widget/ImageView;Landroid/view/View;I)V

    .line 26
    iget-object v9, v11, Lcom/join/mgps/adapter/u1$c;->i:Landroid/widget/ImageView;

    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    iget-object v9, v11, Lcom/join/mgps/adapter/u1$c;->j:Lcom/join/mgps/customview/VipView;

    invoke-virtual {v3, v7}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v12

    invoke-virtual {v12}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    move-result v12

    invoke-virtual {v9, v12, v7}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 28
    iget-object v9, v11, Lcom/join/mgps/adapter/u1$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object v9, v11, Lcom/join/mgps/adapter/u1$c;->e:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 30
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_4

    .line 31
    :cond_3
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_4

    .line 32
    :cond_4
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    .line 33
    :cond_5
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_4

    .line 34
    :cond_6
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getBattleTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    :goto_4
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 36
    invoke-virtual {v3, v4}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v9

    .line 37
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_7
    iget-object v9, v11, Lcom/join/mgps/adapter/u1$c;->e:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getNickname()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 39
    :cond_8
    iget-object v9, v11, Lcom/join/mgps/adapter/u1$c;->a:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 40
    :cond_9
    iget-object v10, v11, Lcom/join/mgps/adapter/u1$c;->a:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->setVisibility(I)V

    .line 41
    invoke-virtual {v3, v4}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v10

    .line 42
    invoke-virtual {v10}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 43
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "uid ="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_a
    iget-object v12, v11, Lcom/join/mgps/adapter/u1$c;->e:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v12, v11, Lcom/join/mgps/adapter/u1$c;->k:Landroid/widget/ImageView;

    iget-object v14, v11, Lcom/join/mgps/adapter/u1$c;->l:Landroid/view/View;

    invoke-virtual {v10}, Lcom/papa91/battle/protocol/RoomPosition;->getProficiencyLevel()I

    move-result v15

    invoke-direct {v0, v12, v14, v15}, Lcom/join/mgps/adapter/u1;->g(Landroid/widget/ImageView;Landroid/view/View;I)V

    .line 46
    iget-object v12, v1, Lcom/join/mgps/adapter/u1$d;->k:Landroid/view/View;

    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 47
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerListCount()I

    move-result v12

    const/4 v14, 0x2

    const/4 v15, 0x3

    if-le v12, v15, :cond_b

    goto :goto_5

    .line 48
    :cond_b
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerListCount()I

    move-result v12

    if-ne v12, v14, :cond_c

    .line 49
    iget-object v12, v1, Lcom/join/mgps/adapter/u1$d;->k:Landroid/view/View;

    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    .line 50
    iget-object v12, v1, Lcom/join/mgps/adapter/u1$d;->k:Landroid/view/View;

    const v6, 0x7f08094b

    invoke-virtual {v12, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_c
    :goto_5
    new-array v6, v9, [Ljava/lang/String;

    const-string v9, "updateItem"

    aput-object v9, v6, v7

    .line 51
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nickname="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "leaderId="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getLeaderId()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v15

    invoke-static {v6}, Lcom/join/mgps/Util/u0;->e([Ljava/lang/String;)V

    .line 52
    invoke-virtual {v10}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v6

    if-eqz v6, :cond_11

    .line 53
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->h:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v10}, Lcom/papa91/battle/protocol/RoomPosition;->getAvatar()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/join/android/app/common/utils/MyImageLoader;->l(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 56
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->i:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    invoke-virtual {v10}, Lcom/papa91/battle/protocol/RoomPosition;->getPlatform()Lcom/papa91/battle/protocol/Platform;

    move-result-object v6

    sget-object v9, Lcom/papa91/battle/protocol/Platform;->PC:Lcom/papa91/battle/protocol/Platform;

    if-ne v6, v9, :cond_d

    .line 58
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->i:Landroid/widget/ImageView;

    const v9, 0x7f0806bf

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_6
    const/16 v9, 0x8

    goto :goto_7

    .line 59
    :cond_d
    invoke-virtual {v10}, Lcom/papa91/battle/protocol/RoomPosition;->getPlatform()Lcom/papa91/battle/protocol/Platform;

    move-result-object v6

    sget-object v9, Lcom/papa91/battle/protocol/Platform;->MOBILE:Lcom/papa91/battle/protocol/Platform;

    if-ne v6, v9, :cond_e

    .line 60
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->i:Landroid/widget/ImageView;

    const v9, 0x7f0806c0

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 61
    :cond_e
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->i:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    :goto_7
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->i:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    invoke-virtual {v10}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v6

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getLeaderId()I

    move-result v9

    if-ne v6, v9, :cond_f

    const/4 v6, 0x1

    goto :goto_8

    :cond_f
    const/4 v6, 0x0

    .line 64
    :goto_8
    iget-object v9, v11, Lcom/join/mgps/adapter/u1$c;->j:Lcom/join/mgps/customview/VipView;

    invoke-virtual {v10}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    move-result v12

    invoke-virtual {v9, v12, v7}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    if-eqz v6, :cond_10

    .line 65
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->e:Landroid/widget/TextView;

    invoke-virtual {v10}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x1

    :goto_9
    const/16 v12, 0x8

    goto :goto_a

    .line 68
    :cond_10
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->f:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_a

    :cond_11
    const/16 v12, 0x8

    .line 70
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->i:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->e:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->h:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    invoke-virtual {v10}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 76
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->h:Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/join/mgps/adapter/u1;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0806ca

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 77
    :cond_12
    iget-object v6, v11, Lcom/join/mgps/adapter/u1$c;->h:Landroid/widget/ImageView;

    iget-object v9, v0, Lcom/join/mgps/adapter/u1;->b:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080643

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_a
    add-int/lit8 v4, v4, 0x1

    const/16 v6, 0x8

    goto/16 :goto_3

    :cond_13
    if-nez v8, :cond_15

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v9, :cond_15

    .line 78
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerListCount()I

    move-result v5

    if-ge v4, v5, :cond_15

    .line 79
    iget-object v5, v1, Lcom/join/mgps/adapter/u1$d;->o:[Lcom/join/mgps/adapter/u1$c;

    aget-object v5, v5, v4

    .line 80
    invoke-virtual {v3, v4}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;

    move-result-object v6

    .line 81
    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    move-result v8

    if-eqz v8, :cond_14

    .line 82
    iget-object v4, v5, Lcom/join/mgps/adapter/u1$c;->j:Lcom/join/mgps/customview/VipView;

    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getVip()Z

    move-result v8

    invoke-virtual {v4, v8, v7}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 83
    iget-object v4, v5, Lcom/join/mgps/adapter/u1$c;->e:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/papa91/battle/protocol/RoomPosition;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v4, v5, Lcom/join/mgps/adapter/u1$c;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v4, v5, Lcom/join/mgps/adapter/u1$c;->f:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 86
    :cond_15
    :goto_c
    iget-object v4, v1, Lcom/join/mgps/adapter/u1$d;->f:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowSpectatorJoin()Z

    move-result v4

    const-string v5, "\u51c6\u5907\u4e2d"

    if-eqz v4, :cond_17

    .line 88
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object v4

    sget-object v6, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne v4, v6, :cond_16

    .line 89
    iget-object v7, v1, Lcom/join/mgps/adapter/u1$d;->g:Lcom/join/mgps/customview/CountDownerTextView;

    iget-wide v8, v2, Lapp/mgsim/arena/SimpleWrapperRoom;->initialStartTime:J

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    move-result v10

    const-string v11, ""

    const-string v12, ""

    invoke-virtual/range {v7 .. v12}, Lcom/join/mgps/customview/CountDownerTextView;->d(JILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 90
    :cond_16
    iget-object v2, v1, Lcom/join/mgps/adapter/u1$d;->g:Lcom/join/mgps/customview/CountDownerTextView;

    invoke-virtual {v2}, Lcom/join/mgps/customview/CountDownerTextView;->e()V

    .line 91
    iget-object v2, v1, Lcom/join/mgps/adapter/u1$d;->g:Lcom/join/mgps/customview/CountDownerTextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 92
    :cond_17
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getState()Lcom/papa91/battle/protocol/RoomState;

    move-result-object v4

    sget-object v6, Lcom/papa91/battle/protocol/RoomState;->START:Lcom/papa91/battle/protocol/RoomState;

    if-ne v4, v6, :cond_18

    .line 93
    iget-object v7, v1, Lcom/join/mgps/adapter/u1$d;->g:Lcom/join/mgps/customview/CountDownerTextView;

    iget-wide v8, v2, Lapp/mgsim/arena/SimpleWrapperRoom;->initialStartTime:J

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    move-result v10

    const-string v11, ""

    const-string v12, ""

    invoke-virtual/range {v7 .. v12}, Lcom/join/mgps/customview/CountDownerTextView;->d(JILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 94
    :cond_18
    iget-object v2, v1, Lcom/join/mgps/adapter/u1$d;->g:Lcom/join/mgps/customview/CountDownerTextView;

    invoke-virtual {v2}, Lcom/join/mgps/customview/CountDownerTextView;->e()V

    .line 95
    iget-object v2, v1, Lcom/join/mgps/adapter/u1$d;->g:Lcom/join/mgps/customview/CountDownerTextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_d
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getSpectatorNumber()I

    move-result v2

    if-lez v2, :cond_19

    .line 97
    iget-object v1, v1, Lcom/join/mgps/adapter/u1$d;->h:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getSpectatorNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\u4eba  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 98
    :cond_19
    iget-object v1, v1, Lcom/join/mgps/adapter/u1$d;->h:Landroid/widget/TextView;

    const-string v2, "0\u4eba "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_e
    return-void
.end method

.method private j(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/adapter/u1;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    .line 3
    iget v1, p0, Lcom/join/mgps/adapter/u1;->c:F

    mul-float p2, p2, v1

    const v1, 0x3f6b851f    # 0.92f

    mul-float p2, p2, v1

    float-to-int p2, p2

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public d(I)Lapp/mgsim/arena/SimpleWrapperRoom;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/u1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/u1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lapp/mgsim/arena/SimpleWrapperRoom;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Lcom/join/mgps/adapter/u1$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/u1;->d:Lcom/join/mgps/adapter/u1$b;

    return-object v0
.end method

.method public f(Lcom/join/mgps/adapter/u1$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/u1;->d:Lcom/join/mgps/adapter/u1$b;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/u1;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public h(F)V
    .locals 5

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const v0, 0x3f6b851f    # 0.92f

    mul-float p1, p1, v0

    .line 1
    :cond_0
    iput p1, p0, Lcom/join/mgps/adapter/u1;->c:F

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/u1;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 2
    instance-of v1, p1, Lcom/join/mgps/adapter/u1$d;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, p1

    check-cast v1, Lcom/join/mgps/adapter/u1$d;

    invoke-direct {p0, v1, v0}, Lcom/join/mgps/adapter/u1;->i(Lcom/join/mgps/adapter/u1$d;Lapp/mgsim/arena/SimpleWrapperRoom;)V

    .line 4
    :cond_0
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/join/mgps/adapter/u1$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/adapter/u1$a;-><init>(Lcom/join/mgps/adapter/u1;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0332

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/join/mgps/adapter/u1$d;

    invoke-direct {v0, p1, p2}, Lcom/join/mgps/adapter/u1$d;-><init>(Landroid/view/View;I)V

    return-object v0
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    instance-of v0, p1, Lcom/join/mgps/adapter/u1$d;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/join/mgps/adapter/u1$d;

    iget-object p1, p1, Lcom/join/mgps/adapter/u1$d;->g:Lcom/join/mgps/customview/CountDownerTextView;

    invoke-virtual {p1}, Lcom/join/mgps/customview/CountDownerTextView;->e()V

    :cond_0
    return-void
.end method
