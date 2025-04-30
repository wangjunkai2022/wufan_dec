.class public Lcom/join/mgps/dto/SearchRecrodBean;
.super Ljava/lang/Object;
.source "SearchRecrodBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private create_time:J

.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/SearchRecrodBean;->id:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/SearchRecrodBean;->name:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/join/mgps/dto/SearchRecrodBean;->create_time:J

    return-void
.end method


# virtual methods
.method public getCreate_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/SearchRecrodBean;->create_time:J

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/SearchRecrodBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchRecrodBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCreate_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/SearchRecrodBean;->create_time:J

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/SearchRecrodBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchRecrodBean;->name:Ljava/lang/String;

    return-void
.end method
