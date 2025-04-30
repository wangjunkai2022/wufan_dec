.class public Lcom/papa91/arc/bean/PopwindowBean;
.super Ljava/lang/Object;
.source "PopwindowBean.java"


# instance fields
.field private buttonCenter:Lcom/papa91/arc/bean/ButtonBean;

.field private buttonClose:Lcom/papa91/arc/bean/ButtonBean;

.field private buttonLeft:Lcom/papa91/arc/bean/ButtonBean;

.field private buttonRight:Lcom/papa91/arc/bean/ButtonBean;

.field private endDuration:Ljava/lang/Integer;

.field private noAge:Z

.field private popup:Z

.field private status:I

.field private subTitle:Ljava/lang/String;

.field private subTitle2:Ljava/lang/String;

.field private subTitle3:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/papa91/arc/bean/PopwindowBean;->status:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/papa91/arc/bean/PopwindowBean;->type:I

    return-void
.end method


# virtual methods
.method public getButtonCenter()Lcom/papa91/arc/bean/ButtonBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PopwindowBean;->buttonCenter:Lcom/papa91/arc/bean/ButtonBean;

    return-object v0
.end method

.method public getButtonClose()Lcom/papa91/arc/bean/ButtonBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PopwindowBean;->buttonClose:Lcom/papa91/arc/bean/ButtonBean;

    return-object v0
.end method

.method public getButtonLeft()Lcom/papa91/arc/bean/ButtonBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PopwindowBean;->buttonLeft:Lcom/papa91/arc/bean/ButtonBean;

    return-object v0
.end method

.method public getButtonRight()Lcom/papa91/arc/bean/ButtonBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PopwindowBean;->buttonRight:Lcom/papa91/arc/bean/ButtonBean;

    return-object v0
.end method

.method public getEndDuration()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PopwindowBean;->endDuration:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPopup()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/bean/PopwindowBean;->popup:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/PopwindowBean;->status:I

    return v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PopwindowBean;->subTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PopwindowBean;->subTitle2:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PopwindowBean;->subTitle3:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/PopwindowBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/bean/PopwindowBean;->type:I

    return v0
.end method

.method public isNoAge()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/bean/PopwindowBean;->noAge:Z

    return v0
.end method

.method public isPopup()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/arc/bean/PopwindowBean;->popup:Z

    return v0
.end method

.method public setButtonCenter(Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PopwindowBean;->buttonCenter:Lcom/papa91/arc/bean/ButtonBean;

    return-void
.end method

.method public setButtonClose(Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PopwindowBean;->buttonClose:Lcom/papa91/arc/bean/ButtonBean;

    return-void
.end method

.method public setButtonLeft(Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PopwindowBean;->buttonLeft:Lcom/papa91/arc/bean/ButtonBean;

    return-void
.end method

.method public setButtonRight(Lcom/papa91/arc/bean/ButtonBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PopwindowBean;->buttonRight:Lcom/papa91/arc/bean/ButtonBean;

    return-void
.end method

.method public setEndDuration(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PopwindowBean;->endDuration:Ljava/lang/Integer;

    return-void
.end method

.method public setNoAge(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/bean/PopwindowBean;->noAge:Z

    return-void
.end method

.method public setPopup(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/papa91/arc/bean/PopwindowBean;->popup:Z

    return-void
.end method

.method public setPopup(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/papa91/arc/bean/PopwindowBean;->popup:Z

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/PopwindowBean;->status:I

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PopwindowBean;->subTitle:Ljava/lang/String;

    return-void
.end method

.method public setSubTitle2(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PopwindowBean;->subTitle2:Ljava/lang/String;

    return-void
.end method

.method public setSubTitle3(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PopwindowBean;->subTitle3:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/PopwindowBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/bean/PopwindowBean;->type:I

    return-void
.end method
