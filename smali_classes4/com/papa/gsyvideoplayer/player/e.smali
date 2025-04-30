.class public Lcom/papa/gsyvideoplayer/player/e;
.super Ljava/lang/Object;
.source "PlayerFactory.java"


# static fields
.field private static a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/papa/gsyvideoplayer/player/c;",
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

.method public static a()Lcom/papa/gsyvideoplayer/player/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/papa/gsyvideoplayer/player/e;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 2
    const-class v0, Lcom/papa/gsyvideoplayer/player/d;

    sput-object v0, Lcom/papa/gsyvideoplayer/player/e;->a:Ljava/lang/Class;

    .line 3
    :cond_0
    :try_start_0
    sget-object v0, Lcom/papa/gsyvideoplayer/player/e;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/papa/gsyvideoplayer/player/c;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/papa/gsyvideoplayer/player/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/papa/gsyvideoplayer/player/e;->a:Ljava/lang/Class;

    return-void
.end method
