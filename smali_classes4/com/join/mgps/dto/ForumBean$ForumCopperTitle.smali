.class public Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;
.super Ljava/lang/Object;
.source "ForumBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumCopperTitle"
.end annotation


# instance fields
.field private battleColor:Ljava/lang/String;

.field private battleTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBattleColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->battleColor:Ljava/lang/String;

    return-object v0
.end method

.method public getBattleTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->battleTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setBattleColor(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->battleColor:Ljava/lang/String;

    return-void
.end method

.method public setBattleTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumCopperTitle;->battleTitle:Ljava/lang/String;

    return-void
.end method
