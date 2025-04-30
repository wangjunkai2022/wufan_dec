.class public Lcom/join/mgps/adapter/m3$f;
.super Ljava/lang/Object;
.source "MyGameAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/Object;

.field c:Z


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/adapter/m3$f;->a:I

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/m3$f;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/join/mgps/adapter/m3$f;->a:I

    .line 6
    iput-object p2, p0, Lcom/join/mgps/adapter/m3$f;->b:Ljava/lang/Object;

    .line 7
    iput-boolean p3, p0, Lcom/join/mgps/adapter/m3$f;->c:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m3$f;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/m3$f;->a:I

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/m3$f;->c:Z

    return v0
.end method

.method public d(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/m3$f;->c:Z

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/m3$f;->b:Ljava/lang/Object;

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/m3$f;->a:I

    return-void
.end method
