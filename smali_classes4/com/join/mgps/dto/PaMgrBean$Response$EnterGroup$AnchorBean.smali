.class public Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;
.super Ljava/lang/Object;
.source "PaMgrBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnchorBean"
.end annotation


# instance fields
.field private avatar:Ljava/lang/String;

.field private charm:I

.field private fans:I

.field private intro:Ljava/lang/String;

.field private nickname:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCharm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;->charm:I

    return v0
.end method

.method public getFans()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;->fans:I

    return v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;->intro:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;->uid:I

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCharm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;->charm:I

    return-void
.end method

.method public setFans(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;->fans:I

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;->intro:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup$AnchorBean;->uid:I

    return-void
.end method
