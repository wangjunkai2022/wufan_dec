.class Lru/noties/scrollable/ScrollableLayout$d;
.super Ljava/lang/Object;
.source "ScrollableLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/noties/scrollable/ScrollableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lru/noties/scrollable/ScrollableLayout;


# direct methods
.method constructor <init>(Lru/noties/scrollable/ScrollableLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout$d;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$d;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v0}, Lru/noties/scrollable/ScrollableLayout;->n(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/n;

    move-result-object v0

    invoke-virtual {v0}, Lru/noties/scrollable/n;->c()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$d;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v1, v0}, Lru/noties/scrollable/ScrollableLayout;->p(Lru/noties/scrollable/ScrollableLayout;Z)Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$d;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {v0}, Lru/noties/scrollable/ScrollableLayout;->n(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/n;

    move-result-object v0

    invoke-virtual {v0}, Lru/noties/scrollable/n;->f()I

    move-result v0

    .line 4
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$d;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    sub-int v1, v0, v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$d;->a:Lru/noties/scrollable/ScrollableLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lru/noties/scrollable/ScrollableLayout;->scrollTo(II)V

    .line 6
    :cond_0
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$d;->a:Lru/noties/scrollable/ScrollableLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
