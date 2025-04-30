.class Lcom/join/mgps/customview/XScrollView$a;
.super Ljava/lang/Object;
.source "XScrollView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/XScrollView;->f(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/XScrollView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/XScrollView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/XScrollView$a;->a:Lcom/join/mgps/customview/XScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView$a;->a:Lcom/join/mgps/customview/XScrollView;

    invoke-static {v0}, Lcom/join/mgps/customview/XScrollView;->c(Lcom/join/mgps/customview/XScrollView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/join/mgps/customview/XScrollView;->b(Lcom/join/mgps/customview/XScrollView;I)I

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/XScrollView$a;->a:Lcom/join/mgps/customview/XScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 4
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method
