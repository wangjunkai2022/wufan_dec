.class public Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;
.super Ljava/lang/Object;
.source "GameSubTypeData.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private id:I

.field private pic:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selected:Z

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->id:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 2
    iput p3, p0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->id:I

    .line 3
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->id:I

    .line 4
    iput-object p2, p0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->title:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->pic:Ljava/lang/String;

    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->pic:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->id:I

    return v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->selected:Z

    return v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->id:I

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->pic:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->selected:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/data/GameSubTypeData;->title:Ljava/lang/String;

    return-void
.end method
