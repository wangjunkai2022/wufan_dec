.class public Lcom/join/mgps/dto/AccountPayConfigBean;
.super Ljava/lang/Object;
.source "AccountPayConfigBean.java"


# instance fields
.field private desc:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private min_money:I

.field private rebate_money:I

.field private start_time:J

.field private stop_time:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->title:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->desc:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->start_time:J

    .line 6
    iput-wide p5, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->stop_time:J

    .line 7
    iput-object p7, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->icon:Ljava/lang/String;

    .line 8
    iput p8, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->min_money:I

    .line 9
    iput p9, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->rebate_money:I

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getMin_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->min_money:I

    return v0
.end method

.method public getRebate_money()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->rebate_money:I

    return v0
.end method

.method public getStart_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->start_time:J

    return-wide v0
.end method

.method public getStop_time()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->stop_time:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->desc:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->icon:Ljava/lang/String;

    return-void
.end method

.method public setMin_money(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->min_money:I

    return-void
.end method

.method public setRebate_money(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->rebate_money:I

    return-void
.end method

.method public setStart_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->start_time:J

    return-void
.end method

.method public setStop_time(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->stop_time:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountPayConfigBean{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", desc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", start_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->start_time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", stop_time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->stop_time:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", icon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->icon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", min_money="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->min_money:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rebate_money="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/mgps/dto/AccountPayConfigBean;->rebate_money:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
