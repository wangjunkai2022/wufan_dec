.class Lru/noties/scrollable/ScrollableLayout$j;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrollableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/noties/scrollable/ScrollableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lru/noties/scrollable/ScrollableLayout;


# direct methods
.method private constructor <init>(Lru/noties/scrollable/ScrollableLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout$j;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lru/noties/scrollable/ScrollableLayout;Lru/noties/scrollable/ScrollableLayout$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lru/noties/scrollable/ScrollableLayout$j;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout$j;->b:Lru/noties/scrollable/ScrollableLayout;

    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout$j;->a:Z

    invoke-static {p1, v0}, Lru/noties/scrollable/ScrollableLayout;->s(Lru/noties/scrollable/ScrollableLayout;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout$j;->b:Lru/noties/scrollable/ScrollableLayout;

    iget-boolean v0, p0, Lru/noties/scrollable/ScrollableLayout$j;->a:Z

    invoke-static {p1, v0}, Lru/noties/scrollable/ScrollableLayout;->s(Lru/noties/scrollable/ScrollableLayout;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout$j;->b:Lru/noties/scrollable/ScrollableLayout;

    invoke-static {p1}, Lru/noties/scrollable/ScrollableLayout;->r(Lru/noties/scrollable/ScrollableLayout;)Z

    move-result p1

    iput-boolean p1, p0, Lru/noties/scrollable/ScrollableLayout$j;->a:Z

    .line 2
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout$j;->b:Lru/noties/scrollable/ScrollableLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lru/noties/scrollable/ScrollableLayout;->s(Lru/noties/scrollable/ScrollableLayout;Z)Z

    return-void
.end method
