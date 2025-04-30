.class public Lcom/join/mgps/dto/PaMgrBean$Response;
.super Ljava/lang/Object;
.source "PaMgrBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PaMgrBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dto/PaMgrBean$Response$MgrWarnLive;,
        Lcom/join/mgps/dto/PaMgrBean$Response$MgrBanLive;,
        Lcom/join/mgps/dto/PaMgrBean$Response$MgrStopLive;,
        Lcom/join/mgps/dto/PaMgrBean$Response$GetFreeDiamond;,
        Lcom/join/mgps/dto/PaMgrBean$Response$SendGift;,
        Lcom/join/mgps/dto/PaMgrBean$Response$GetGiftList;,
        Lcom/join/mgps/dto/PaMgrBean$Response$UplocadCover;,
        Lcom/join/mgps/dto/PaMgrBean$Response$QuitRoom;,
        Lcom/join/mgps/dto/PaMgrBean$Response$Silence;,
        Lcom/join/mgps/dto/PaMgrBean$Response$Kick;,
        Lcom/join/mgps/dto/PaMgrBean$Response$CancelAdmin;,
        Lcom/join/mgps/dto/PaMgrBean$Response$Report;,
        Lcom/join/mgps/dto/PaMgrBean$Response$SetAdmin;,
        Lcom/join/mgps/dto/PaMgrBean$Response$UnFollowAnchor;,
        Lcom/join/mgps/dto/PaMgrBean$Response$FollowAnchor;,
        Lcom/join/mgps/dto/PaMgrBean$Response$WeekViewerBean;,
        Lcom/join/mgps/dto/PaMgrBean$Response$GetAnchorInfo;,
        Lcom/join/mgps/dto/PaMgrBean$Response$InternalSendRequest;,
        Lcom/join/mgps/dto/PaMgrBean$Response$QuitGroup;,
        Lcom/join/mgps/dto/PaMgrBean$Response$EnterGroup;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private error:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response;->error:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/PaMgrBean$Response;->data:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response;->error:I

    return v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response;->data:Ljava/lang/Object;

    return-void
.end method

.method public setError(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response;->error:I

    return-void
.end method
