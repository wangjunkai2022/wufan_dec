.class public Lcom/join/mgps/dto/BtGameBenefitBean;
.super Ljava/lang/Object;
.source "BtGameBenefitBean.java"


# instance fields
.field private default_sub_title:Ljava/lang/String;

.field private exist:Z

.field private jump_url:Ljava/lang/String;

.field private sub_title:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefault_sub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->default_sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getJump_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->jump_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isExist()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->exist:Z

    return v0
.end method

.method public setDefault_sub_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->default_sub_title:Ljava/lang/String;

    return-void
.end method

.method public setExist(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->exist:Z

    return-void
.end method

.method public setJump_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->jump_url:Ljava/lang/String;

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BtGameBenefitBean;->title:Ljava/lang/String;

    return-void
.end method
