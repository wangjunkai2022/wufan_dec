.class public Lcom/heepay/plugin/domain/PayInitInfo;
.super Ljava/lang/Object;


# instance fields
.field private agentBillIdCache:Ljava/lang/String;

.field private isReCommit:Z

.field private payType:Ljava/lang/String;

.field private payUrlType:I

.field private sdkVersion:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/heepay/plugin/domain/PayInitInfo;->sdkVersion:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/heepay/plugin/domain/PayInitInfo;->sdkVersion:I

    iput-object p1, p0, Lcom/heepay/plugin/domain/PayInitInfo;->payType:Ljava/lang/String;

    iput p2, p0, Lcom/heepay/plugin/domain/PayInitInfo;->sdkVersion:I

    iput p3, p0, Lcom/heepay/plugin/domain/PayInitInfo;->payUrlType:I

    return-void
.end method


# virtual methods
.method public getAgentBillIdCache()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heepay/plugin/domain/PayInitInfo;->agentBillIdCache:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/heepay/plugin/domain/PayInitInfo;->payType:Ljava/lang/String;

    return-object v0
.end method

.method public getPayUrlType()I
    .locals 1

    iget v0, p0, Lcom/heepay/plugin/domain/PayInitInfo;->payUrlType:I

    return v0
.end method

.method public getSdkVersion()I
    .locals 1

    iget v0, p0, Lcom/heepay/plugin/domain/PayInitInfo;->sdkVersion:I

    return v0
.end method

.method public isReCommit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/heepay/plugin/domain/PayInitInfo;->isReCommit:Z

    return v0
.end method

.method public setAgentBillIdCache(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/domain/PayInitInfo;->agentBillIdCache:Ljava/lang/String;

    return-void
.end method

.method public setPayType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/heepay/plugin/domain/PayInitInfo;->payType:Ljava/lang/String;

    return-void
.end method

.method public setPayUrlType(I)V
    .locals 0

    iput p1, p0, Lcom/heepay/plugin/domain/PayInitInfo;->payUrlType:I

    return-void
.end method

.method public setReCommit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/heepay/plugin/domain/PayInitInfo;->isReCommit:Z

    return-void
.end method

.method public setSdkVersion(I)V
    .locals 0

    iput p1, p0, Lcom/heepay/plugin/domain/PayInitInfo;->sdkVersion:I

    return-void
.end method
