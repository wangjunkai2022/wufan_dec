.class abstract Lcom/melnykov/fab/e;
.super Ljava/lang/Object;
.source "ScrollViewScrollDetector.java"

# interfaces
.implements Lcom/melnykov/fab/ObservableScrollView$a;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ScrollView;IIII)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/melnykov/fab/e;->a:I

    sub-int p1, p3, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/melnykov/fab/e;->b:I

    if-le p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    iget p1, p0, Lcom/melnykov/fab/e;->a:I

    if-le p3, p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/melnykov/fab/e;->c()V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/melnykov/fab/e;->b()V

    .line 5
    :cond_2
    :goto_1
    iput p3, p0, Lcom/melnykov/fab/e;->a:I

    return-void
.end method

.method abstract b()V
.end method

.method abstract c()V
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/melnykov/fab/e;->b:I

    return-void
.end method
