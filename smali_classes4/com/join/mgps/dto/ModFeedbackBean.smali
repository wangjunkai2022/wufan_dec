.class public Lcom/join/mgps/dto/ModFeedbackBean;
.super Ljava/lang/Object;
.source "ModFeedbackBean.java"


# instance fields
.field private btn_title:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private show_switch:I

.field private status:Z

.field private title:Ljava/lang/String;

.field private wx_num:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBtn_title()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModFeedbackBean;->btn_title:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModFeedbackBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getShow_switch()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/ModFeedbackBean;->show_switch:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModFeedbackBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWx_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ModFeedbackBean;->wx_num:Ljava/lang/String;

    return-object v0
.end method

.method public isStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/ModFeedbackBean;->status:Z

    return v0
.end method

.method public setBtn_title(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModFeedbackBean;->btn_title:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModFeedbackBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setShow_switch(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/ModFeedbackBean;->show_switch:I

    return-void
.end method

.method public setStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/ModFeedbackBean;->status:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModFeedbackBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setWx_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ModFeedbackBean;->wx_num:Ljava/lang/String;

    return-void
.end method
