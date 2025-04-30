.class Lcom/join/mgps/ad/SplashZoomOutLayout$a;
.super Ljava/lang/Object;
.source "SplashZoomOutLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/SplashZoomOutLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/ad/SplashZoomOutLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/SplashZoomOutLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ad/SplashZoomOutLayout$a;->a:Lcom/join/mgps/ad/SplashZoomOutLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/SplashZoomOutLayout$a;->a:Lcom/join/mgps/ad/SplashZoomOutLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 4
    iget-object v2, p0, Lcom/join/mgps/ad/SplashZoomOutLayout$a;->a:Lcom/join/mgps/ad/SplashZoomOutLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/join/mgps/ad/SplashZoomOutLayout$a;->a:Lcom/join/mgps/ad/SplashZoomOutLayout;

    invoke-static {v3}, Lcom/join/mgps/ad/SplashZoomOutLayout;->b(Lcom/join/mgps/ad/SplashZoomOutLayout;)I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Lcom/join/mgps/ad/SplashZoomOutLayout;->a(Lcom/join/mgps/ad/SplashZoomOutLayout;I)I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/ad/SplashZoomOutLayout$a;->a:Lcom/join/mgps/ad/SplashZoomOutLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/join/mgps/ad/SplashZoomOutLayout$a;->a:Lcom/join/mgps/ad/SplashZoomOutLayout;

    invoke-static {v2}, Lcom/join/mgps/ad/SplashZoomOutLayout;->b(Lcom/join/mgps/ad/SplashZoomOutLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/join/mgps/ad/SplashZoomOutLayout;->c(Lcom/join/mgps/ad/SplashZoomOutLayout;I)I

    return-void
.end method
