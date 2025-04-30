.class public Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;
.super Ljava/lang/Object;
.source "PAPAHomeBeanV7.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PAPAHomeBeanV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankingListDTO"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;>;"
        }
    .end annotation
.end field

.field private txt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->list:Ljava/util/List;

    return-object v0
.end method

.method public getTxt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->txt:Ljava/lang/String;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->list:Ljava/util/List;

    return-void
.end method

.method public setTxt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$RankingListDTO;->txt:Ljava/lang/String;

    return-void
.end method
