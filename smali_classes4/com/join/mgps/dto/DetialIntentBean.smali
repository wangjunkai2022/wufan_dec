.class public Lcom/join/mgps/dto/DetialIntentBean;
.super Ljava/lang/Object;
.source "DetialIntentBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final GIFTMORE:I = 0x4

.field public static final INFORMITIONMORE:I = 0x2

.field public static final SERVICEMORE:I = 0x3

.field public static final STRATEGYMORE:I = 0x1

.field public static final STRATEGYTABLE:I = 0x5


# instance fields
.field private gameId:Ljava/lang/String;

.field private intentType:I

.field private startegyTab:I

.field private strategyTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialStrategyTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetialIntentBean;->gameId:Ljava/lang/String;

    return-object v0
.end method

.method public getIntentType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetialIntentBean;->intentType:I

    return v0
.end method

.method public getStartegyTab()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/DetialIntentBean;->startegyTab:I

    return v0
.end method

.method public getStrategyTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialStrategyTag;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/DetialIntentBean;->strategyTags:Ljava/util/List;

    return-object v0
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetialIntentBean;->gameId:Ljava/lang/String;

    return-void
.end method

.method public setIntentType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetialIntentBean;->intentType:I

    return-void
.end method

.method public setStartegyTab(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/DetialIntentBean;->startegyTab:I

    return-void
.end method

.method public setStrategyTags(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetialStrategyTag;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/DetialIntentBean;->strategyTags:Ljava/util/List;

    return-void
.end method
