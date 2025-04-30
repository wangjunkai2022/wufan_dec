.class public Lcom/join/kotlin/ui/findgame/data/TagData;
.super Ljava/lang/Object;
.source "TagData.java"


# instance fields
.field private id:I

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/TagData;->id:I

    .line 3
    iput p2, p0, Lcom/join/kotlin/ui/findgame/data/TagData;->type:I

    .line 4
    iput-object p3, p0, Lcom/join/kotlin/ui/findgame/data/TagData;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/TagData;->id:I

    .line 7
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/data/TagData;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/data/TagData;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/TagData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/data/TagData;->type:I

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/TagData;->id:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/TagData;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/TagData;->type:I

    return-void
.end method
