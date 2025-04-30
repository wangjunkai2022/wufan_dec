.class Lcom/join/mgps/customview/ScratchView$a;
.super Ljava/lang/Object;
.source "ScratchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ScratchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ScratchView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ScratchView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ScratchView$a;->a:Lcom/join/mgps/customview/ScratchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView$a;->a:Lcom/join/mgps/customview/ScratchView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/ScratchView$a;->a:Lcom/join/mgps/customview/ScratchView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v9

    mul-int v1, v0, v9

    int-to-float v10, v1

    .line 3
    invoke-static {}, Lcom/join/mgps/customview/ScratchView;->a()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4
    new-array v11, v1, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v2

    move-object v2, v11

    move v4, v0

    move v7, v0

    move v8, v9

    .line 5
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v9, :cond_1

    mul-int v6, v5, v0

    add-int/2addr v6, v3

    .line 6
    aget v6, v11, v6

    if-nez v6, :cond_0

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v4, v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    cmpl-float v0, v4, v2

    if-lez v0, :cond_3

    cmpl-float v0, v10, v2

    if-lez v0, :cond_3

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v4, v4, v0

    div-float/2addr v4, v10

    float-to-int v0, v4

    .line 7
    iget-object v2, p0, Lcom/join/mgps/customview/ScratchView$a;->a:Lcom/join/mgps/customview/ScratchView;

    invoke-static {v2}, Lcom/join/mgps/customview/ScratchView;->b(Lcom/join/mgps/customview/ScratchView;)I

    move-result v2

    if-le v0, v2, :cond_3

    .line 8
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView$a;->a:Lcom/join/mgps/customview/ScratchView;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/join/mgps/customview/ScratchView;->c(Lcom/join/mgps/customview/ScratchView;Z)Z

    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView$a;->a:Lcom/join/mgps/customview/ScratchView;

    invoke-static {v0, v1}, Lcom/join/mgps/customview/ScratchView;->d(Lcom/join/mgps/customview/ScratchView;Z)Z

    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/ScratchView$a;->a:Lcom/join/mgps/customview/ScratchView;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
