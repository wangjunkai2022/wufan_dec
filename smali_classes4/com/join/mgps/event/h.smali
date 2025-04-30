.class public Lcom/join/mgps/event/h;
.super Ljava/lang/Object;
.source "DeleteOrModifyCommentEvent.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:D

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;DJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/event/h;->a:I

    .line 3
    iput-object p2, p0, Lcom/join/mgps/event/h;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/join/mgps/event/h;->c:D

    .line 5
    iput-wide p5, p0, Lcom/join/mgps/event/h;->d:J

    .line 6
    iput-object p7, p0, Lcom/join/mgps/event/h;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/event/h;->c:D

    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/event/h;->d:J

    return-wide v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/h;->b:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/h;->e:Ljava/lang/String;

    return-void
.end method

.method public g(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/event/h;->c:D

    return-void
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/h;->a:I

    return v0
.end method

.method public h(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/event/h;->d:J

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/event/h;->a:I

    return-void
.end method
