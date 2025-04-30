.class Lcom/nineoldandroids/animation/n$b;
.super Lcom/nineoldandroids/animation/n;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private r:Lcom/nineoldandroids/util/a;

.field s:Lcom/nineoldandroids/animation/g;

.field t:F


# direct methods
.method public constructor <init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/animation/g;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/n;-><init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/animation/n$a;)V

    .line 6
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/animation/n;->e:Ljava/lang/Class;

    .line 7
    iput-object p2, p0, Lcom/nineoldandroids/animation/n;->f:Lcom/nineoldandroids/animation/k;

    .line 8
    check-cast p2, Lcom/nineoldandroids/animation/g;

    iput-object p2, p0, Lcom/nineoldandroids/animation/n$b;->s:Lcom/nineoldandroids/animation/g;

    .line 9
    instance-of p1, p1, Lcom/nineoldandroids/util/a;

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/nineoldandroids/animation/n;->b:Lcom/nineoldandroids/util/c;

    check-cast p1, Lcom/nineoldandroids/util/a;

    iput-object p1, p0, Lcom/nineoldandroids/animation/n$b;->r:Lcom/nineoldandroids/util/a;

    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Lcom/nineoldandroids/util/c;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/n;-><init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/animation/n$a;)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/n$b;->r([F)V

    .line 15
    instance-of p1, p1, Lcom/nineoldandroids/util/a;

    if-eqz p1, :cond_0

    .line 16
    iget-object p1, p0, Lcom/nineoldandroids/animation/n;->b:Lcom/nineoldandroids/util/c;

    check-cast p1, Lcom/nineoldandroids/util/a;

    iput-object p1, p0, Lcom/nineoldandroids/animation/n$b;->r:Lcom/nineoldandroids/util/a;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nineoldandroids/animation/g;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/n;-><init>(Ljava/lang/String;Lcom/nineoldandroids/animation/n$a;)V

    .line 2
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lcom/nineoldandroids/animation/n;->e:Ljava/lang/Class;

    .line 3
    iput-object p2, p0, Lcom/nineoldandroids/animation/n;->f:Lcom/nineoldandroids/animation/k;

    .line 4
    check-cast p2, Lcom/nineoldandroids/animation/g;

    iput-object p2, p0, Lcom/nineoldandroids/animation/n$b;->s:Lcom/nineoldandroids/animation/g;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/animation/n;-><init>(Ljava/lang/String;Lcom/nineoldandroids/animation/n$a;)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/n$b;->r([F)V

    return-void
.end method


# virtual methods
.method public E()Lcom/nineoldandroids/animation/n$b;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/nineoldandroids/animation/n;->b()Lcom/nineoldandroids/animation/n;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/n$b;

    .line 2
    iget-object v1, v0, Lcom/nineoldandroids/animation/n;->f:Lcom/nineoldandroids/animation/k;

    check-cast v1, Lcom/nineoldandroids/animation/g;

    iput-object v1, v0, Lcom/nineoldandroids/animation/n$b;->s:Lcom/nineoldandroids/animation/g;

    return-object v0
.end method

.method a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n$b;->s:Lcom/nineoldandroids/animation/g;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/g;->i(F)F

    move-result p1

    iput p1, p0, Lcom/nineoldandroids/animation/n$b;->t:F

    return-void
.end method

.method public bridge synthetic b()Lcom/nineoldandroids/animation/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/n$b;->E()Lcom/nineoldandroids/animation/n$b;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/nineoldandroids/animation/n$b;->t:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/n$b;->E()Lcom/nineoldandroids/animation/n$b;

    move-result-object v0

    return-object v0
.end method

.method p(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n$b;->r:Lcom/nineoldandroids/util/a;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/nineoldandroids/animation/n$b;->t:F

    invoke-virtual {v0, p1, v1}, Lcom/nineoldandroids/util/a;->g(Ljava/lang/Object;F)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->b:Lcom/nineoldandroids/util/c;

    if-eqz v0, :cond_1

    .line 4
    iget v1, p0, Lcom/nineoldandroids/animation/n$b;->t:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nineoldandroids/util/c;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->h:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/nineoldandroids/animation/n$b;->t:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 7
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nineoldandroids/animation/n;->h:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs r([F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/n;->r([F)V

    .line 2
    iget-object p1, p0, Lcom/nineoldandroids/animation/n;->f:Lcom/nineoldandroids/animation/k;

    check-cast p1, Lcom/nineoldandroids/animation/g;

    iput-object p1, p0, Lcom/nineoldandroids/animation/n$b;->s:Lcom/nineoldandroids/animation/g;

    return-void
.end method

.method z(Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nineoldandroids/animation/n;->b:Lcom/nineoldandroids/util/c;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/n;->z(Ljava/lang/Class;)V

    return-void
.end method
