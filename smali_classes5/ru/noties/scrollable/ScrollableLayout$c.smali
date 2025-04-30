.class Lru/noties/scrollable/ScrollableLayout$c;
.super Ljava/lang/Object;
.source "ScrollableLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/noties/scrollable/ScrollableLayout;->G(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lru/noties/scrollable/ScrollableLayout;


# direct methods
.method constructor <init>(Lru/noties/scrollable/ScrollableLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout$c;->b:Lru/noties/scrollable/ScrollableLayout;

    iput-object p2, p0, Lru/noties/scrollable/ScrollableLayout$c;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lru/noties/scrollable/ScrollableLayout$c;->b:Lru/noties/scrollable/ScrollableLayout;

    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$c;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->m(Lru/noties/scrollable/ScrollableLayout;I)I

    return-void
.end method
