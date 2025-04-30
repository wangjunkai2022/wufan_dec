.class public Lcom/papa/gsyvideoplayer/model/c;
.super Ljava/lang/Object;
.source "VideoOptionModel.java"


# static fields
.field public static final f:I = 0x0

.field public static final g:I = 0x1


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/papa/gsyvideoplayer/model/c;->a:I

    .line 3
    iput p1, p0, Lcom/papa/gsyvideoplayer/model/c;->b:I

    .line 4
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/model/c;->d:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/papa/gsyvideoplayer/model/c;->c:I

    .line 6
    iput v0, p0, Lcom/papa/gsyvideoplayer/model/c;->a:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/papa/gsyvideoplayer/model/c;->a:I

    .line 9
    iput p1, p0, Lcom/papa/gsyvideoplayer/model/c;->b:I

    .line 10
    iput-object p2, p0, Lcom/papa/gsyvideoplayer/model/c;->d:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/papa/gsyvideoplayer/model/c;->e:Ljava/lang/String;

    const/4 p1, 0x1

    .line 12
    iput p1, p0, Lcom/papa/gsyvideoplayer/model/c;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/model/c;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/model/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/model/c;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa/gsyvideoplayer/model/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa/gsyvideoplayer/model/c;->a:I

    return v0
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/model/c;->b:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/model/c;->d:Ljava/lang/String;

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/model/c;->c:I

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/papa/gsyvideoplayer/model/c;->a:I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/gsyvideoplayer/model/c;->e:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/papa/gsyvideoplayer/model/c;->a:I

    return-void
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa/gsyvideoplayer/model/c;->a:I

    return-void
.end method
