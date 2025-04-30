.class public Lcom/join/mgps/dto/RegisterRequestBean;
.super Ljava/lang/Object;
.source "RegisterRequestBean.java"


# instance fields
.field private reg_id:Ljava/lang/String;

.field private times:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/RegisterRequestBean;->reg_id:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lcom/join/mgps/dto/RegisterRequestBean;->times:J

    return-void
.end method


# virtual methods
.method public getReg_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RegisterRequestBean;->reg_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTimes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/RegisterRequestBean;->times:J

    return-wide v0
.end method

.method public setReg_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RegisterRequestBean;->reg_id:Ljava/lang/String;

    return-void
.end method

.method public setTimes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/RegisterRequestBean;->times:J

    return-void
.end method
