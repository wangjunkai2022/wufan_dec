.class public Lcom/join/mgps/dto/PapaMainLivelistItem;
.super Ljava/lang/Object;
.source "PapaMainLivelistItem.java"


# instance fields
.field private cover_img:Ljava/lang/String;

.field private end_timestamp:J

.field private start_timestamp:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCover_img()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaMainLivelistItem;->cover_img:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd_timestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/PapaMainLivelistItem;->end_timestamp:J

    return-wide v0
.end method

.method public getStart_timestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/PapaMainLivelistItem;->start_timestamp:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PapaMainLivelistItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setCover_img(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaMainLivelistItem;->cover_img:Ljava/lang/String;

    return-void
.end method

.method public setEnd_timestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/PapaMainLivelistItem;->end_timestamp:J

    return-void
.end method

.method public setStart_timestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/PapaMainLivelistItem;->start_timestamp:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PapaMainLivelistItem;->title:Ljava/lang/String;

    return-void
.end method
