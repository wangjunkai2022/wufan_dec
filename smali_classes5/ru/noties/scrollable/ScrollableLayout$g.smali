.class Lru/noties/scrollable/ScrollableLayout$g;
.super Ljava/lang/Object;
.source "ScrollableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/noties/scrollable/ScrollableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field final a:Lru/noties/scrollable/ScrollableLayout$h;


# direct methods
.method constructor <init>(Lru/noties/scrollable/ScrollableLayout$h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout$g;->a:Lru/noties/scrollable/ScrollableLayout$h;

    return-void
.end method


# virtual methods
.method a(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 3
    iget-object p2, p0, Lru/noties/scrollable/ScrollableLayout$g;->a:Lru/noties/scrollable/ScrollableLayout$h;

    invoke-interface {p2, p1}, Lru/noties/scrollable/ScrollableLayout$h;->a(Landroid/view/MotionEvent;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return-void
.end method
