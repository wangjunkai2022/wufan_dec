.class public Lcom/join/mgps/dto/ModleBean;
.super Ljava/lang/Object;
.source "ModleBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ad_switch:I

.field private color:Ljava/lang/String;

.field private comment_count:I

.field private ico_remote:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private margin:Ljava/lang/String;

.field private model_type:Ljava/lang/String;

.field private online:I

.field private pic_remote:Ljava/lang/String;

.field private pv_count:I

.field private sub_title:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private title_type:Ljava/lang/String;

.field private vedio_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/join/mgps/dto/ModleBean;->title:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/join/mgps/dto/ModleBean;->label:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/join/mgps/dto/ModleBean;->pic_remote:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/join/mgps/dto/ModleBean;->ico_remote:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/join/mgps/dto/ModleBean;->title_type:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/join/mgps/dto/ModleBean;->margin:Ljava/lang/String;

    .line 21
    iput-object p7, p0, Lcom/join/mgps/dto/ModleBean;->sub_title:Ljava/lang/String;

    .line 22
    iput p8, p0, Lcom/join/mgps/dto/ModleBean;->online:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/join/mgps/dto/ModleBean;->title:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/join/mgps/dto/ModleBean;->label:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/join/mgps/dto/ModleBean;->pic_remote:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/join/mgps/dto/ModleBean;->ico_remote:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/join/mgps/dto/ModleBean;->title_type:Ljava/lang/String;

    .line 29
    iput-object p6, p0, Lcom/join/mgps/dto/ModleBean;->margin:Ljava/lang/String;

    .line 30
    iput-object p7, p0, Lcom/join/mgps/dto/ModleBean;->sub_title:Ljava/lang/String;

    .line 31
    iput p8, p0, Lcom/join/mgps/dto/ModleBean;->online:I

    .line 32
    iput-object p9, p0, Lcom/join/mgps/dto/ModleBean;->model_type:Ljava/lang/String;

    .line 33
    iput p10, p0, Lcom/join/mgps/dto/ModleBean;->ad_switch:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dto/ModleBean;->title:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/dto/ModleBean;->label:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/dto/ModleBean;->pic_remote:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/join/mgps/dto/ModleBean;->ico_remote:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/join/mgps/dto/ModleBean;->title_type:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/join/mgps/dto/ModleBean;->margin:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/join/mgps/dto/ModleBean;->sub_title:Ljava/lang/String;

    .line 9
    iput p8, p0, Lcom/join/mgps/dto/ModleBean;->online:I

    .line 10
    iput-object p9, p0, Lcom/join/mgps/dto/ModleBean;->model_type:Ljava/lang/String;

    .line 11
    iput p10, p0, Lcom/join/mgps/dto/ModleBean;->ad_switch:I

    .line 12
    iput-object p11, p0, Lcom/join/mgps/dto/ModleBean;->color:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAd_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModleBean;->ad_switch:I

    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModleBean;->color:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModleBean;->comment_count:I

    return v0
.end method

.method public getIco_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModleBean;->ico_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModleBean;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMargin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModleBean;->margin:Ljava/lang/String;

    return-object v0
.end method

.method public getModel_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModleBean;->model_type:Ljava/lang/String;

    return-object v0
.end method

.method public getOnline()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModleBean;->online:I

    return v0
.end method

.method public getPic_remote()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModleBean;->pic_remote:Ljava/lang/String;

    return-object v0
.end method

.method public getPv_count()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModleBean;->pv_count:I

    return v0
.end method

.method public getSub_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModleBean;->sub_title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModleBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle_type()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModleBean;->title_type:Ljava/lang/String;

    return-object v0
.end method

.method public getVedio_url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModleBean;->vedio_url:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModleBean;->ad_switch:I

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModleBean;->color:Ljava/lang/String;

    return-void
.end method

.method public setComment_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModleBean;->comment_count:I

    return-void
.end method

.method public setIco_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModleBean;->ico_remote:Ljava/lang/String;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModleBean;->label:Ljava/lang/String;

    return-void
.end method

.method public setMargin(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModleBean;->margin:Ljava/lang/String;

    return-void
.end method

.method public setModel_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModleBean;->model_type:Ljava/lang/String;

    return-void
.end method

.method public setOnline(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModleBean;->online:I

    return-void
.end method

.method public setPic_remote(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModleBean;->pic_remote:Ljava/lang/String;

    return-void
.end method

.method public setPv_count(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModleBean;->pv_count:I

    return-void
.end method

.method public setSub_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModleBean;->sub_title:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModleBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitle_type(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModleBean;->title_type:Ljava/lang/String;

    return-void
.end method

.method public setVedio_url(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModleBean;->vedio_url:Ljava/lang/String;

    return-void
.end method
