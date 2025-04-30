.class Lcom/join/mgps/customview/EqualizerViewLoding$b;
.super Ljava/lang/Object;
.source "EqualizerViewLoding.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/EqualizerViewLoding;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/EqualizerViewLoding;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/EqualizerViewLoding;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/EqualizerViewLoding$b;->a:Lcom/join/mgps/customview/EqualizerViewLoding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding$b;->a:Lcom/join/mgps/customview/EqualizerViewLoding;

    iget-object v0, v0, Lcom/join/mgps/customview/EqualizerViewLoding;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding$b;->a:Lcom/join/mgps/customview/EqualizerViewLoding;

    iget-object v0, v0, Lcom/join/mgps/customview/EqualizerViewLoding;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/customview/EqualizerViewLoding$b;->a:Lcom/join/mgps/customview/EqualizerViewLoding;

    iget-object v0, v0, Lcom/join/mgps/customview/EqualizerViewLoding;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
