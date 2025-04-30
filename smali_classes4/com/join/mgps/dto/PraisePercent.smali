.class public Lcom/join/mgps/dto/PraisePercent;
.super Ljava/lang/Object;
.source "PraisePercent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private praise_bad:I

.field private praise_good:I

.field private praise_nice:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/mgps/dto/PraisePercent;->praise_good:I

    .line 3
    iput p2, p0, Lcom/join/mgps/dto/PraisePercent;->praise_nice:I

    .line 4
    iput p3, p0, Lcom/join/mgps/dto/PraisePercent;->praise_bad:I

    return-void
.end method


# virtual methods
.method public getPraise_bad()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PraisePercent;->praise_bad:I

    return v0
.end method

.method public getPraise_good()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PraisePercent;->praise_good:I

    return v0
.end method

.method public getPraise_nice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PraisePercent;->praise_nice:I

    return v0
.end method

.method public setPraise_bad(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PraisePercent;->praise_bad:I

    return-void
.end method

.method public setPraise_good(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PraisePercent;->praise_good:I

    return-void
.end method

.method public setPraise_nice(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PraisePercent;->praise_nice:I

    return-void
.end method
