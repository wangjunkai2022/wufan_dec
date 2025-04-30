.class Lcom/nineoldandroids/animation/j$c;
.super Lcom/nineoldandroids/animation/j;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field e:Ljava/lang/Object;


# direct methods
.method constructor <init>(FLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/nineoldandroids/animation/j;-><init>()V

    .line 2
    iput p1, p0, Lcom/nineoldandroids/animation/j;->a:F

    .line 3
    iput-object p2, p0, Lcom/nineoldandroids/animation/j$c;->e:Ljava/lang/Object;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/j;->d:Z

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-class p1, Ljava/lang/Object;

    :goto_1
    iput-object p1, p0, Lcom/nineoldandroids/animation/j;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/nineoldandroids/animation/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/j$c;->o()Lcom/nineoldandroids/animation/j$c;

    move-result-object v0

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
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/j$c;->o()Lcom/nineoldandroids/animation/j$c;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/j$c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public n(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/nineoldandroids/animation/j$c;->e:Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/j;->d:Z

    return-void
.end method

.method public o()Lcom/nineoldandroids/animation/j$c;
    .locals 3

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/j$c;

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/j;->b()F

    move-result v1

    iget-object v2, p0, Lcom/nineoldandroids/animation/j$c;->e:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/animation/j$c;-><init>(FLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/j;->c()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/j;->m(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method
