.class public Lcom/papa91/arc/bean/ButtonBean;
.super Ljava/lang/Object;
.source "ButtonBean.java"


# instance fields
.field private buttonHint:Ljava/lang/String;

.field private eventType:Ljava/lang/Integer;

.field private jumpLink:Ljava/lang/String;

.field private popUpWindow:Lcom/papa91/arc/bean/PopwindowBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getButtonHint()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/ButtonBean;->buttonHint:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/ButtonBean;->eventType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getJumpLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/ButtonBean;->jumpLink:Ljava/lang/String;

    return-object v0
.end method

.method public getPopUpWindow()Lcom/papa91/arc/bean/PopwindowBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/bean/ButtonBean;->popUpWindow:Lcom/papa91/arc/bean/PopwindowBean;

    return-object v0
.end method

.method public setButtonHint(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/ButtonBean;->buttonHint:Ljava/lang/String;

    return-void
.end method

.method public setEventType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/ButtonBean;->eventType:Ljava/lang/Integer;

    return-void
.end method

.method public setJumpLink(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/ButtonBean;->jumpLink:Ljava/lang/String;

    return-void
.end method

.method public setPopUpWindow(Lcom/papa91/arc/bean/PopwindowBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/bean/ButtonBean;->popUpWindow:Lcom/papa91/arc/bean/PopwindowBean;

    return-void
.end method
