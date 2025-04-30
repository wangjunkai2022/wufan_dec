.class public Lcom/papa91/wrapper/KeyboardListenLayout;
.super Landroid/widget/RelativeLayout;
.source "KeyboardListenLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/wrapper/KeyboardListenLayout$OnSoftKeyboardListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private onSoftKeyboardListener:Lcom/papa91/wrapper/KeyboardListenLayout$OnSoftKeyboardListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "KeyboardListenLayout"

    .line 4
    iput-object p1, p0, Lcom/papa91/wrapper/KeyboardListenLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "KeyboardListenLayout"

    .line 2
    iput-object p1, p0, Lcom/papa91/wrapper/KeyboardListenLayout;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    .line 1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " w="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lcom/papa91/wrapper/KeyboardListenLayout;->onSoftKeyboardListener:Lcom/papa91/wrapper/KeyboardListenLayout$OnSoftKeyboardListener;

    if-eqz v2, :cond_1

    if-le v1, v0, :cond_0

    .line 7
    invoke-interface {v2}, Lcom/papa91/wrapper/KeyboardListenLayout$OnSoftKeyboardListener;->onShown()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v2}, Lcom/papa91/wrapper/KeyboardListenLayout$OnSoftKeyboardListener;->onHidden()V

    .line 9
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oldh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public final setOnSoftKeyboardListener(Lcom/papa91/wrapper/KeyboardListenLayout$OnSoftKeyboardListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/wrapper/KeyboardListenLayout;->onSoftKeyboardListener:Lcom/papa91/wrapper/KeyboardListenLayout$OnSoftKeyboardListener;

    return-void
.end method
