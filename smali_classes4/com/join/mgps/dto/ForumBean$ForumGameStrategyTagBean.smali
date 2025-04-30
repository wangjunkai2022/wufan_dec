.class public Lcom/join/mgps/dto/ForumBean$ForumGameStrategyTagBean;
.super Ljava/lang/Object;
.source "ForumBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/ForumBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForumGameStrategyTagBean"
.end annotation


# instance fields
.field private tag_id:Ljava/lang/String;

.field private tag_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTag_id()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumGameStrategyTagBean;->tag_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTag_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/ForumBean$ForumGameStrategyTagBean;->tag_name:Ljava/lang/String;

    return-object v0
.end method

.method public setTag_id(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumGameStrategyTagBean;->tag_id:Ljava/lang/String;

    return-void
.end method

.method public setTag_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/ForumBean$ForumGameStrategyTagBean;->tag_name:Ljava/lang/String;

    return-void
.end method
