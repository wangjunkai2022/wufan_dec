.class public Lcom/join/mgps/customview/WrapContentListView;
.super Landroid/widget/ListView;
.source "WrapContentListView.java"


# instance fields
.field private a:Landroid/view/ViewGroup$LayoutParams;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/join/mgps/customview/WrapContentListView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/join/mgps/customview/WrapContentListView;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/join/mgps/customview/WrapContentListView;->b:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget v1, p0, Lcom/join/mgps/customview/WrapContentListView;->b:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    iput v1, p0, Lcom/join/mgps/customview/WrapContentListView;->b:I

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lcom/join/mgps/customview/WrapContentListView;->b:I

    if-ge v0, v3, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    add-int/2addr v2, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/join/mgps/customview/WrapContentListView;->a:Landroid/view/ViewGroup$LayoutParams;

    .line 9
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
