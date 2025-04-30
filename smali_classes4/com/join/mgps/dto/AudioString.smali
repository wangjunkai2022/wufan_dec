.class public Lcom/join/mgps/dto/AudioString;
.super Ljava/lang/Object;
.source "AudioString.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/join/mgps/dto/AudioString;",
        ">;"
    }
.end annotation


# instance fields
.field private audioUrl:Ljava/lang/String;

.field private priority:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/join/mgps/dto/AudioString;)I
    .locals 1
    .param p1    # Lcom/join/mgps/dto/AudioString;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dto/AudioString;->priority:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/join/mgps/dto/AudioString;->getPriority()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/join/mgps/dto/AudioString;

    invoke-virtual {p0, p1}, Lcom/join/mgps/dto/AudioString;->compareTo(Lcom/join/mgps/dto/AudioString;)I

    move-result p1

    return p1
.end method

.method public getAudioUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AudioString;->audioUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/AudioString;->priority:Ljava/lang/Integer;

    return-object v0
.end method

.method public setAudioUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AudioString;->audioUrl:Ljava/lang/String;

    return-void
.end method

.method public setPriority(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/AudioString;->priority:Ljava/lang/Integer;

    return-void
.end method
