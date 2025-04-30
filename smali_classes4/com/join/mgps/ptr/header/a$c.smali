.class Lcom/join/mgps/ptr/header/a$c;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ptr/header/a;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/ptr/header/a$h;

.field final synthetic b:Lcom/join/mgps/ptr/header/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/ptr/header/a;Lcom/join/mgps/ptr/header/a$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/ptr/header/a$c;->b:Lcom/join/mgps/ptr/header/a;

    iput-object p2, p0, Lcom/join/mgps/ptr/header/a$c;->a:Lcom/join/mgps/ptr/header/a$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$c;->a:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/a$h;->m()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$c;->a:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/a$h;->D()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$c;->a:Lcom/join/mgps/ptr/header/a$h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/header/a$h;->A(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$c;->b:Lcom/join/mgps/ptr/header/a;

    invoke-static {p1}, Lcom/join/mgps/ptr/header/a;->b(Lcom/join/mgps/ptr/header/a;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/ptr/header/a$c;->b:Lcom/join/mgps/ptr/header/a;

    invoke-static {v0}, Lcom/join/mgps/ptr/header/a;->a(Lcom/join/mgps/ptr/header/a;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
