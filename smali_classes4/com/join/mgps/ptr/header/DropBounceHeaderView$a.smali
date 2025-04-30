.class Lcom/join/mgps/ptr/header/DropBounceHeaderView$a;
.super Ljava/lang/Object;
.source "DropBounceHeaderView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/ptr/header/DropBounceHeaderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/ptr/header/DropBounceHeaderView;


# direct methods
.method constructor <init>(Lcom/join/mgps/ptr/header/DropBounceHeaderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView$a;->a:Lcom/join/mgps/ptr/header/DropBounceHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/DropBounceHeaderView$a;->a:Lcom/join/mgps/ptr/header/DropBounceHeaderView;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
