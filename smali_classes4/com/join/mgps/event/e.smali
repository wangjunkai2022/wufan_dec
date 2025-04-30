.class public Lcom/join/mgps/event/e;
.super Ljava/lang/Object;
.source "CloudEvent.java"


# instance fields
.field private a:Lcom/join/mgps/dto/CloudListDataBean;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/join/mgps/event/e;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/CloudListDataBean;I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/join/mgps/event/e;->b:I

    .line 5
    iput-object p1, p0, Lcom/join/mgps/event/e;->a:Lcom/join/mgps/dto/CloudListDataBean;

    .line 6
    iput p2, p0, Lcom/join/mgps/event/e;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/CloudListDataBean;ILjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/join/mgps/event/e;->b:I

    .line 9
    iput-object p1, p0, Lcom/join/mgps/event/e;->a:Lcom/join/mgps/dto/CloudListDataBean;

    .line 10
    iput p2, p0, Lcom/join/mgps/event/e;->b:I

    .line 11
    iput-object p3, p0, Lcom/join/mgps/event/e;->c:Ljava/lang/String;

    .line 12
    iput p4, p0, Lcom/join/mgps/event/e;->d:I

    .line 13
    iput-object p5, p0, Lcom/join/mgps/event/e;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/join/mgps/dto/CloudListDataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/e;->a:Lcom/join/mgps/dto/CloudListDataBean;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/event/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/e;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/event/e;->b:I

    return v0
.end method

.method public f(Lcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/e;->a:Lcom/join/mgps/dto/CloudListDataBean;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/e;->e:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/event/e;->c:Ljava/lang/String;

    return-void
.end method

.method public i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/event/e;->d:I

    return-void
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/event/e;->b:I

    return-void
.end method
