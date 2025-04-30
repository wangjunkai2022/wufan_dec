.class public Lcom/join/mgps/dto/SearchHistoryBean;
.super Ljava/lang/Object;
.source "SearchHistoryBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final GAME_NAME:Ljava/lang/String; = "game_name"


# instance fields
.field private game_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGameName()Ljava/lang/String;
    .locals 1

    const-string v0, "game_name"

    return-object v0
.end method


# virtual methods
.method public getGame_name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/SearchHistoryBean;->game_name:Ljava/lang/String;

    return-object v0
.end method

.method public setGame_name(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/SearchHistoryBean;->game_name:Ljava/lang/String;

    return-void
.end method
