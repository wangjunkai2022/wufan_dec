.class public Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public content:Ljava/lang/String;

.field public ctime:Ljava/lang/Long;

.field public ftime:Ljava/lang/Long;

.field public mobile:Ljava/lang/String;

.field public opt:I

.field public result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->content:Ljava/lang/String;

    iput-object p2, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->mobile:Ljava/lang/String;

    iput p3, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->opt:I

    iput-object p4, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->ctime:Ljava/lang/Long;

    iput-object p5, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->ftime:Ljava/lang/Long;

    iput-object p6, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->result:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCtime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->ctime:Ljava/lang/Long;

    return-object v0
.end method

.method public getFtime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->ftime:Ljava/lang/Long;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getOpt()I
    .locals 1

    iget v0, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->opt:I

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->result:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->content:Ljava/lang/String;

    return-void
.end method

.method public setCtime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->ctime:Ljava/lang/Long;

    return-void
.end method

.method public setFtime(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->ftime:Ljava/lang/Long;

    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->mobile:Ljava/lang/String;

    return-void
.end method

.method public setOpt(I)V
    .locals 0

    iput p1, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->opt:I

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->result:Ljava/lang/String;

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sdk/l/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\'content\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'mobile\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'opt\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->opt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\', \'ctime\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->ctime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'ftime\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->ftime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'result\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sdk/Unicorn/base/framework/bean/SmsInfo;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
