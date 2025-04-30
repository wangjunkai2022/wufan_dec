.class Lcom/join/mgps/adapter/m3$b;
.super Ljava/lang/Object;
.source "MyGameAdapter.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/m3;->Q(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/join/mgps/adapter/m3;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/m3;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m3$b;->b:Lcom/join/mgps/adapter/m3;

    iput-object p2, p0, Lcom/join/mgps/adapter/m3$b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$b;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$b;->b:Lcom/join/mgps/adapter/m3;

    const/4 v0, -0x1

    iput v0, p1, Lcom/join/mgps/adapter/m3;->e:I

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/m3$b;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
