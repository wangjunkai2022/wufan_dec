.class public Lcom/join/mgps/dto/TimingBean;
.super Ljava/lang/Object;
.source "TimingBean.java"


# instance fields
.field private isChecked:Z

.field private time:Ljava/lang/Integer;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dto/TimingBean;->isChecked:Z

    return-void
.end method


# virtual methods
.method public getTime()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TimingBean;->time:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/TimingBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/dto/TimingBean;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dto/TimingBean;->isChecked:Z

    return-void
.end method

.method public setTime(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TimingBean;->time:Ljava/lang/Integer;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/TimingBean;->title:Ljava/lang/String;

    return-void
.end method
