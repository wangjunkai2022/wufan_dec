.class public Lcom/papa91/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field public static EXIT_AD_URL:Ljava/lang/String; = "http://anv9.ctapi.5fun.com"

.field public static GAME_URL:Ljava/lang/String; = "http://anctapi.5fun.com"

.field public static REWARD_CONFIG_URL:Ljava/lang/String; = "http://anv3btapi.5fun.com"

.field public static RealName_URL:Ljava/lang/String; = "http://anctapi.5fun.com"

.field protected static final SHOW_RESPONSE:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserRewardConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/utils/HttpFinishInterface;)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/papa91/utils/HttpUtils$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/papa91/utils/HttpUtils$2;-><init>(Lcom/papa91/utils/HttpUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/utils/HttpFinishInterface;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public sendRequestWithHttpClient(Ljava/lang/String;Ljava/lang/String;Lcom/papa91/utils/HttpFinishInterface;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/papa91/utils/HttpUtils$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/papa91/utils/HttpUtils$1;-><init>(Lcom/papa91/utils/HttpUtils;Ljava/lang/String;Ljava/lang/String;Lcom/papa91/utils/HttpFinishInterface;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
