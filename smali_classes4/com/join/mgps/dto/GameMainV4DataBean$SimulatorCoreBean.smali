.class public Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;
.super Ljava/lang/Object;
.source "GameMainV4DataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/GameMainV4DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimulatorCoreBean"
.end annotation


# instance fields
.field private core:Ljava/lang/String;

.field private plugin_num:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCore()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;->core:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin_num()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;->plugin_num:Ljava/lang/String;

    return-object v0
.end method

.method public setCore(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;->core:Ljava/lang/String;

    return-void
.end method

.method public setPlugin_num(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/GameMainV4DataBean$SimulatorCoreBean;->plugin_num:Ljava/lang/String;

    return-void
.end method
