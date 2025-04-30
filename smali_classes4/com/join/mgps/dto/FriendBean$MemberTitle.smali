.class public Lcom/join/mgps/dto/FriendBean$MemberTitle;
.super Ljava/lang/Object;
.source "FriendBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/FriendBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberTitle"
.end annotation


# instance fields
.field private battleTitle:Ljava/lang/String;

.field private battleTitleColor:Ljava/lang/String;

.field private level:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBattleTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean$MemberTitle;->battleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getBattleTitleColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/FriendBean$MemberTitle;->battleTitleColor:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/FriendBean$MemberTitle;->level:I

    return v0
.end method

.method public setBattleTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean$MemberTitle;->battleTitle:Ljava/lang/String;

    return-void
.end method

.method public setBattleTitleColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/FriendBean$MemberTitle;->battleTitleColor:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/FriendBean$MemberTitle;->level:I

    return-void
.end method
