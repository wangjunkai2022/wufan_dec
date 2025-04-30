.class public Lcom/join/mgps/customview/XListViewFooter;
.super Landroid/widget/LinearLayout;
.source "XListViewFooter.java"


# static fields
.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x4

.field public static final l:I = 0x5

.field public static final m:I = 0x6

.field public static final n:I = 0x7


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:I

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/XListViewFooter;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/XListViewFooter;->c(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XListViewFooter;->a:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0601

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0912eb

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->b:Landroid/view/View;

    const v0, 0x7f0912ed

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->c:Landroid/view/View;

    const v0, 0x7f0912ec

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    const v0, 0x7f0912ee

    .line 8
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/customview/XListViewFooter;->f:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    .line 2
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getBottomMargin()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/XListViewFooter;->e:I

    return v0
.end method

.method public setBottomMargin(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewFooter;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setState(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    const v1, 0x7f110471

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x7

    if-ne p1, v3, :cond_1

    .line 7
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    const-string v3, "\u8bf7\u7ee7\u7eed\u63a2\u7d22\u66f4\u591a\u6e38\u620f\u4ee5\u83b7\u5f97\u7cbe\u51c6\u63a8\u8350"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewFooter;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 10
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    const v1, 0x7f11046c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 12
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewFooter;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const v3, 0x7f11046b

    if-ne p1, v1, :cond_4

    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    .line 15
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 17
    :cond_5
    iget-object v1, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 19
    iget-object p1, p0, Lcom/join/mgps/customview/XListViewFooter;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    return-void
.end method
