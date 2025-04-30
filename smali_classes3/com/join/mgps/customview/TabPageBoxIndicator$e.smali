.class Lcom/join/mgps/customview/TabPageBoxIndicator$e;
.super Landroid/widget/TextView;
.source "TabPageBoxIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/TabPageBoxIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/join/mgps/customview/TabPageBoxIndicator;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/TabPageBoxIndicator;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$e;->b:Lcom/join/mgps/customview/TabPageBoxIndicator;

    const/4 p1, 0x0

    const v0, 0x7f0405d2

    .line 2
    invoke-direct {p0, p2, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/TabPageBoxIndicator$e;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$e;->a:I

    return p1
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$e;->a:I

    return v0
.end method

.method public onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$e;->b:Lcom/join/mgps/customview/TabPageBoxIndicator;

    invoke-static {p1}, Lcom/join/mgps/customview/TabPageBoxIndicator;->d(Lcom/join/mgps/customview/TabPageBoxIndicator;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$e;->b:Lcom/join/mgps/customview/TabPageBoxIndicator;

    invoke-static {v0}, Lcom/join/mgps/customview/TabPageBoxIndicator;->d(Lcom/join/mgps/customview/TabPageBoxIndicator;)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$e;->b:Lcom/join/mgps/customview/TabPageBoxIndicator;

    invoke-static {p1}, Lcom/join/mgps/customview/TabPageBoxIndicator;->d(Lcom/join/mgps/customview/TabPageBoxIndicator;)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_0
    return-void
.end method
