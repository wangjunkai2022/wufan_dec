.class public Lcom/papa91/arc/bean/MainBean;
.super Ljava/lang/Object;
.source "MainBean.java"


# instance fields
.field private ad_switch:I

.field private label:Ljava/lang/String;

.field private pic_remote:Ljava/lang/String;

.field private sub_title:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private title_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/papa91/arc/bean/MainBean;->title:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/papa91/arc/bean/MainBean;->label:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/papa91/arc/bean/MainBean;->pic_remote:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/papa91/arc/bean/MainBean;->title_type:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/papa91/arc/bean/MainBean;->sub_title:Ljava/lang/String;

    .line 8
    iput p6, p0, Lcom/papa91/arc/bean/MainBean;->ad_switch:I

    return-void
.end method


# virtual methods
.method public getAd_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/MainBean;->ad_switch:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/MainBean;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPic_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/MainBean;->pic_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/MainBean;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/MainBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/MainBean;->title_type:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/MainBean;->ad_switch:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/MainBean;->label:Ljava/lang/String;

    return-void
.end method

.method public setPic_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/MainBean;->pic_remote:Ljava/lang/String;

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/MainBean;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/MainBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitle_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/MainBean;->title_type:Ljava/lang/String;

    return-void
.end method
