.class public Lcom/join/mgps/event/s;
.super Ljava/lang/Object;
.source "ZipEvent.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:J


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/event/s;->a:I

    .line 3
    iput-object p2, p0, Lcom/join/mgps/event/s;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/join/mgps/event/s;->a:I

    .line 6
    iput-object p2, p0, Lcom/join/mgps/event/s;->b:Ljava/lang/String;

    .line 7
    iput-wide p3, p0, Lcom/join/mgps/event/s;->c:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/s;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/event/s;->c:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/s;->a:I

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/s;->b:Ljava/lang/String;

    return-void
.end method

.method public e(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/event/s;->c:J

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/event/s;->a:I

    return-void
.end method
