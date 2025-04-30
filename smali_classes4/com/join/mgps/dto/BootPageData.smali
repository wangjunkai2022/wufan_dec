.class public Lcom/join/mgps/dto/BootPageData;
.super Ljava/lang/Object;
.source "BootPageData.java"


# instance fields
.field private game_setup_boot:Lcom/join/mgps/dto/BootPageItem;

.field private performance_boot:Lcom/join/mgps/dto/BootPageItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BootPageData;->game_setup_boot:Lcom/join/mgps/dto/BootPageItem;

    return-object v0
.end method

.method public getPerformance_boot()Lcom/join/mgps/dto/BootPageItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BootPageData;->performance_boot:Lcom/join/mgps/dto/BootPageItem;

    return-object v0
.end method

.method public setGame_setup_boot(Lcom/join/mgps/dto/BootPageItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BootPageData;->game_setup_boot:Lcom/join/mgps/dto/BootPageItem;

    return-void
.end method

.method public setPerformance_boot(Lcom/join/mgps/dto/BootPageItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BootPageData;->performance_boot:Lcom/join/mgps/dto/BootPageItem;

    return-void
.end method
