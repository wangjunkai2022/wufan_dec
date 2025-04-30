.class public Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;
.super Ljava/lang/Object;
.source "IjkMediaPlayer.java"

# interfaces
.implements Ltv/danmaku/ijk/media/player/IjkMediaPlayer$OnMediaCodecSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/IjkMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultMediaCodecSelector"
.end annotation


# static fields
.field public static final sInstance:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;

    invoke-direct {v0}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;-><init>()V

    sput-object v0, Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;->sInstance:Ltv/danmaku/ijk/media/player/IjkMediaPlayer$DefaultMediaCodecSelector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaCodecSelect(Ltv/danmaku/ijk/media/player/IMediaPlayer;Ljava/lang/String;II)Ljava/lang/String;
    .locals 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    move-object/from16 v0, p2

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    return-object v2

    .line 2
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    .line 3
    :cond_1
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v3, v7

    const-string v5, "onSelectCodec: mime=%s, profile=%d, level=%d"

    invoke-static {v1, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_8

    .line 6
    invoke-static {v5}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v8

    .line 7
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v10, v6, [Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v4

    const-string v11, "  found codec: %s"

    invoke-static {v9, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    .line 9
    :cond_2
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_7

    aget-object v12, v9, v11

    .line 11
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_2

    .line 12
    :cond_4
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v14, v6, [Ljava/lang/Object;

    aput-object v12, v14, v4

    const-string v15, "    mime: %s"

    invoke-static {v13, v15, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_2

    .line 14
    :cond_5
    invoke-static {v8, v0}, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->setupCandidate(Landroid/media/MediaCodecInfo;Ljava/lang/String;)Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    move-result-object v12

    if-nez v12, :cond_6

    goto :goto_2

    .line 15
    :cond_6
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    new-array v14, v7, [Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v4

    iget v15, v12, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v6

    const-string v15, "candidate codec: %s rank=%d"

    invoke-static {v13, v15, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    invoke-virtual {v12, v0}, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->dumpProfileLevels(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 18
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-object v2

    .line 19
    :cond_9
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;

    .line 21
    iget v5, v3, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    iget v8, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    if-le v5, v8, :cond_a

    move-object v0, v3

    goto :goto_4

    .line 22
    :cond_b
    iget v1, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    const/16 v3, 0x258

    if-ge v1, v3, :cond_c

    .line 23
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "unaccetable codec: %s"

    invoke-static {v1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-object v2

    .line 24
    :cond_c
    invoke-static {}, Ltv/danmaku/ijk/media/player/IjkMediaPlayer;->access$100()Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mRank:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "selected codec: %s rank=%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    iget-object v0, v0, Ltv/danmaku/ijk/media/player/IjkMediaCodecInfo;->mCodecInfo:Landroid/media/MediaCodecInfo;

    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
