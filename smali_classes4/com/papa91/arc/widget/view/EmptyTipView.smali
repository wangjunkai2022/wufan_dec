.class public Lcom/papa91/arc/widget/view/EmptyTipView;
.super Landroid/widget/LinearLayout;
.source "EmptyTipView.java"


# instance fields
.field private iv_icon:Landroid/widget/ImageView;

.field private tv_tip_msg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/papa91/arc/widget/view/EmptyTipView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/papa91/arc/widget/view/EmptyTipView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/ppsspp/ppsspp/R$layout;->view_empty_tip:I

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    sget v1, Lorg/ppsspp/ppsspp/R$id;->iv_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/papa91/arc/widget/view/EmptyTipView;->iv_icon:Landroid/widget/ImageView;

    .line 3
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_tip_msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/papa91/arc/widget/view/EmptyTipView;->tv_tip_msg:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setImage(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/view/EmptyTipView;->iv_icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setTipMsg(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/view/EmptyTipView;->tv_tip_msg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
