.class public Lcom/join/mgps/dto/PaMgrBean$Response$QuitGroup;
.super Ljava/lang/Object;
.source "PaMgrBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PaMgrBean$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QuitGroup"
.end annotation


# instance fields
.field private charmCount:I

.field private currentCharm:I

.field private error:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private viewerCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharmCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitGroup;->charmCount:I

    return v0
.end method

.method public getCurrentCharm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitGroup;->currentCharm:I

    return v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitGroup;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitGroup;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getViewerCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitGroup;->viewerCount:I

    return v0
.end method

.method public setCharmCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitGroup;->charmCount:I

    return-void
.end method

.method public setCurrentCharm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitGroup;->currentCharm:I

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitGroup;->error:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitGroup;->message:Ljava/lang/String;

    return-void
.end method

.method public setViewerCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$QuitGroup;->viewerCount:I

    return-void
.end method
