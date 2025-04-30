.class Lcom/join/mgps/ptr/header/a$e;
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
    iput-object p1, p0, Lcom/join/mgps/ptr/header/a$e;->b:Lcom/join/mgps/ptr/header/a;

    iput-object p2, p0, Lcom/join/mgps/ptr/header/a$e;->a:Lcom/join/mgps/ptr/header/a$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$e;->a:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/a$h;->D()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$e;->a:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/a$h;->m()V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$e;->a:Lcom/join/mgps/ptr/header/a$h;

    invoke-virtual {p1}, Lcom/join/mgps/ptr/header/a$h;->e()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/ptr/header/a$h;->B(F)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$e;->b:Lcom/join/mgps/ptr/header/a;

    invoke-static {p1}, Lcom/join/mgps/ptr/header/a;->e(Lcom/join/mgps/ptr/header/a;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    rem-float/2addr v0, v1

    invoke-static {p1, v0}, Lcom/join/mgps/ptr/header/a;->f(Lcom/join/mgps/ptr/header/a;F)F

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/ptr/header/a$e;->b:Lcom/join/mgps/ptr/header/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/ptr/header/a;->f(Lcom/join/mgps/ptr/header/a;F)F

    return-void
.end method
