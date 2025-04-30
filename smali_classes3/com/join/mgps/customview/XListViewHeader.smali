.class public Lcom/join/mgps/customview/XListViewHeader;
.super Landroid/widget/LinearLayout;
.source "XListViewHeader.java"


# static fields
.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x3


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ProgressBar;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/view/animation/Animation;

.field private final h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/customview/XListViewHeader;->e:I

    const/16 v0, 0xb4

    .line 3
    iput v0, p0, Lcom/join/mgps/customview/XListViewHeader;->h:I

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/XListViewHeader;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/join/mgps/customview/XListViewHeader;->e:I

    const/16 p2, 0xb4

    .line 7
    iput p2, p0, Lcom/join/mgps/customview/XListViewHeader;->h:I

    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/XListViewHeader;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 10

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0c0602

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->a:Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x50

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const p1, 0x7f0912ef

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->b:Landroid/widget/ImageView;

    const p1, 0x7f0912f1

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->d:Landroid/widget/TextView;

    const p1, 0x7f0912f2

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->c:Landroid/widget/ProgressBar;

    .line 8
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->f:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xb4

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->f:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 11
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/high16 v4, -0x3ccc0000    # -180.0f

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->g:Landroid/view/animation/Animation;

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->g:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method


# virtual methods
.method public getVisibleHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewHeader;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public setState(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/XListViewHeader;->e:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x4

    if-ne p1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lcom/join/mgps/customview/XListViewHeader;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 3
    iget-object v2, p0, Lcom/join/mgps/customview/XListViewHeader;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewHeader;->c:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/customview/XListViewHeader;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v2, p0, Lcom/join/mgps/customview/XListViewHeader;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewHeader;->d:Landroid/widget/TextView;

    const v1, 0x7f110471

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewHeader;->d:Landroid/widget/TextView;

    const v1, 0x7f11046d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 9
    :cond_4
    iget v0, p0, Lcom/join/mgps/customview/XListViewHeader;->e:I

    if-eq v0, v1, :cond_6

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewHeader;->d:Landroid/widget/TextView;

    const v1, 0x7f11046f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewHeader;->d:Landroid/widget/TextView;

    const v1, 0x7f11046e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 12
    :cond_6
    :goto_1
    iput p1, p0, Lcom/join/mgps/customview/XListViewHeader;->e:I

    return-void
.end method

.method public setVisibleHeight(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewHeader;->a:Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 4
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewHeader;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setmState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/XListViewHeader;->e:I

    return-void
.end method
