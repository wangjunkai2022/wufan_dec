.class public Lcom/papa91/arc/bean/SkillConfigBean;
.super Ljava/lang/Object;
.source "SkillConfigBean.java"


# instance fields
.field private gifHostUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGifHostUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/SkillConfigBean;->gifHostUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setGifHostUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/SkillConfigBean;->gifHostUrl:Ljava/lang/String;

    return-void
.end method
