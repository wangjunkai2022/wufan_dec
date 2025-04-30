.class public abstract Lcom/nineoldandroids/animation/j;
.super Ljava/lang/Object;
.source "Keyframe.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/animation/j$a;,
        Lcom/nineoldandroids/animation/j$b;,
        Lcom/nineoldandroids/animation/j$c;
    }
.end annotation


# instance fields
.field a:F

.field b:Ljava/lang/Class;

.field private c:Landroid/view/animation/Interpolator;

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/nineoldandroids/animation/j;->c:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/nineoldandroids/animation/j;->d:Z

    return-void
.end method

.method public static f(F)Lcom/nineoldandroids/animation/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/j$a;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/j$a;-><init>(F)V

    return-object v0
.end method

.method public static g(FF)Lcom/nineoldandroids/animation/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/j$a;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/j$a;-><init>(FF)V

    return-object v0
.end method

.method public static h(F)Lcom/nineoldandroids/animation/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/j$b;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/j$b;-><init>(F)V

    return-object v0
.end method

.method public static i(FI)Lcom/nineoldandroids/animation/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/j$b;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/j$b;-><init>(FI)V

    return-object v0
.end method

.method public static j(F)Lcom/nineoldandroids/animation/j;
    .locals 2

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/j$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nineoldandroids/animation/j$c;-><init>(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static k(FLjava/lang/Object;)Lcom/nineoldandroids/animation/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/j$c;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/j$c;-><init>(FLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/nineoldandroids/animation/j;
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/nineoldandroids/animation/j;->a:F

    return v0
.end method

.method public c()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/j;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/j;->a()Lcom/nineoldandroids/animation/j;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Ljava/lang/Object;
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/j;->d:Z

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/j;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public l(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/nineoldandroids/animation/j;->a:F

    return-void
.end method

.method public m(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/animation/j;->c:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public abstract n(Ljava/lang/Object;)V
.end method
