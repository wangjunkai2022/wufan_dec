.class public Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;
.super Ljava/lang/Object;
.source "MainLabelBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/MainLabelBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManagerInfo"
.end annotation


# instance fields
.field private avatar_src:Ljava/lang/String;

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
.method public getAvatar_src()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;->avatar_src:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;->uid:I

    return v0
.end method

.method public setAvatar_src(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;->avatar_src:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setUid(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;->uid:I

    return-void
.end method
