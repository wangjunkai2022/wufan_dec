.class public Lcom/papa/controller/core/ControllerManager$c;
.super Ljava/lang/Object;
.source "ControllerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/core/ControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager$c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager$c;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/controller/core/ControllerManager$c;->a:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager$c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/ControllerManager$c;->c:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/papa/controller/core/ControllerManager$c;

    .line 3
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager$c;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v2, p1, Lcom/papa/controller/core/ControllerManager$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/papa/controller/core/ControllerManager$c;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_0
    return v0

    .line 4
    :cond_3
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager$c;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/papa/controller/core/ControllerManager$c;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/ControllerManager$c;->d:Ljava/lang/Object;

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/controller/core/ControllerManager$c;->a:I

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/core/ControllerManager$c;->b:Ljava/lang/String;

    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa/controller/core/ControllerManager$c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/papa/controller/core/ControllerManager$c;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
