.class public Lcn/sharesdk/framework/i;
.super Lcn/sharesdk/framework/utils/g;
.source "ShareSDKCoreThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/framework/i$a;
    }
.end annotation


# instance fields
.field private b:Lcn/sharesdk/framework/i$a;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/sharesdk/framework/Platform;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/sharesdk/framework/Service;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/sharesdk/framework/utils/g;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/sharesdk/framework/i;->j:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/i;->e:Ljava/util/HashMap;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/i;->f:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    return-void
.end method

.method private a(Lcn/sharesdk/framework/a/a;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/a/a;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "res"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "error"

    .line 107
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 108
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    const-string v0, "ShareSDK parse sns config ==>>"

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v4, Lcom/mob/tools/utils/Hashon;

    invoke-direct {v4}, Lcom/mob/tools/utils/Hashon;-><init>()V

    invoke-virtual {v4, p2}, Lcom/mob/tools/utils/Hashon;->fromHashMap(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v2}, Lcn/sharesdk/framework/utils/SSDKLog;->c(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v1

    .line 109
    :cond_0
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p1

    const-string p2, "ShareSDK platform config result ==>>"

    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "SNS configuration is empty"

    aput-object v2, v0, v3

    invoke-virtual {p1, p2, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v1

    .line 111
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_2

    return-object v1

    .line 112
    :cond_2
    invoke-virtual {p1, p2}, Lcn/sharesdk/framework/a/a;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 113
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    return-object v1
.end method

.method static synthetic a(Lcn/sharesdk/framework/i;Lcn/sharesdk/framework/a/a;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/sharesdk/framework/i;->a(Lcn/sharesdk/framework/a/a;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/sharesdk/framework/i;Ljava/util/HashMap;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/sharesdk/framework/i;->a(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    monitor-enter v0

    .line 115
    :try_start_0
    invoke-static {p1}, Lcn/sharesdk/framework/h;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 118
    iput-object p1, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    const/4 p1, 0x1

    .line 119
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 120
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 121
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private j()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 5
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    .line 6
    :try_start_2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "ShareSDK.xml"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    .line 7
    :try_start_3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    :goto_0
    const-string v4, "utf-8"

    .line 8
    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 9
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_1
    if-eq v4, v2, :cond_2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 10
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 11
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 12
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_0

    .line 13
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-interface {v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 15
    invoke-virtual {v5, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 16
    :cond_0
    iget-object v6, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 19
    :try_start_4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 20
    :goto_3
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .line 4
    invoke-static {}, Lcn/sharesdk/framework/h;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcn/sharesdk/framework/Platform;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcn/sharesdk/framework/i;->e()[Lcn/sharesdk/framework/Platform;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 49
    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 50
    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public a(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 101
    iget-object v0, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 103
    monitor-exit v0

    return-object v1

    .line 104
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 105
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    .line 125
    sget-object v0, Lcn/sharesdk/framework/i$a;->b:Lcn/sharesdk/framework/i$a;

    iget-object v1, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 126
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/a/a;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;ZILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 122
    sget-object v0, Lcn/sharesdk/framework/i$a;->b:Lcn/sharesdk/framework/i$a;

    iget-object v1, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    if-eq v0, v1, :cond_0

    return-object p1

    .line 123
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p1, p3, p2, p4}, Lcn/sharesdk/framework/a/a;->a(Ljava/lang/String;IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 0

    .line 51
    sput p1, Lcom/mob/tools/network/NetworkHelper;->connectionTimeout:I

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 99
    iget-object v1, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(ILcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 52
    invoke-static {p1, p2}, Lcn/sharesdk/framework/h;->a(ILcn/sharesdk/framework/Platform;)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lcn/sharesdk/framework/h;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 6

    .line 6
    iget-object p1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    monitor-enter p1

    .line 7
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    const-string v1, "SHARESDK"

    .line 8
    invoke-static {v1}, Lcom/mob/commons/eventrecoder/EventRecorder;->checkRecord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/a/a;->a(Ljava/util/HashMap;)V

    .line 11
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EventRecorder checkRecord result =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0}, Lcn/sharesdk/framework/i;->i()V

    .line 13
    :cond_0
    invoke-static {}, Lcom/mob/commons/eventrecoder/EventRecorder;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 14
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    .line 15
    :goto_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 16
    invoke-static {}, Lcn/sharesdk/framework/h;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 17
    iget-object v2, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 18
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/sharesdk/framework/Platform;

    .line 19
    iget-object v3, p0, Lcn/sharesdk/framework/i;->f:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v3, p0, Lcn/sharesdk/framework/i;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcn/sharesdk/framework/Platform;->getPlatformId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 21
    :cond_2
    iget-object v1, p0, Lcn/sharesdk/framework/utils/g;->a:Landroid/os/Handler;

    invoke-static {v1}, Lcn/sharesdk/framework/h;->a(Landroid/os/Handler;)V

    .line 22
    sget-object v1, Lcn/sharesdk/framework/i$a;->b:Lcn/sharesdk/framework/i$a;

    iput-object v1, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    .line 23
    new-instance v2, Lcn/sharesdk/framework/i$1;

    invoke-direct {v2, p0}, Lcn/sharesdk/framework/i$1;-><init>(Lcn/sharesdk/framework/i;)V

    .line 24
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    :try_start_3
    iput-object v1, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    .line 26
    iget-object v1, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 27
    iget-object v1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 28
    :try_start_4
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 29
    :try_start_5
    sget-object v1, Lcn/sharesdk/framework/i$a;->b:Lcn/sharesdk/framework/i$a;

    iput-object v1, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    .line 30
    iget-object v1, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 31
    iget-object v1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    goto :goto_2

    .line 32
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 33
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    return-void

    :catchall_2
    move-exception v1

    .line 34
    :try_start_7
    sget-object v2, Lcn/sharesdk/framework/i$a;->b:Lcn/sharesdk/framework/i$a;

    iput-object v2, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    .line 35
    iget-object v2, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 36
    iget-object v2, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 37
    throw v1

    :catchall_3
    move-exception v1

    .line 38
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v1

    :catchall_4
    move-exception v0

    .line 39
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public a(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/Service;",
            ">;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    monitor-enter v0

    .line 41
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 43
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/framework/Service;

    .line 44
    iget-object v2, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {v1}, Lcn/sharesdk/framework/Service;->onBind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 46
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    .line 47
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 53
    invoke-static {p1, p2}, Lcn/sharesdk/framework/h;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 95
    iget-object v1, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 57
    :cond_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 58
    :try_start_1
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 59
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 61
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 62
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 63
    :try_start_2
    iget-object p2, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 65
    iget-object p2, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    monitor-enter p2

    .line 66
    :try_start_3
    iget-object v0, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    sget-object v1, Lcn/sharesdk/framework/i$a;->a:Lcn/sharesdk/framework/i$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v0, v1, :cond_3

    .line 67
    :try_start_4
    iget-object v0, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 68
    :try_start_5
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    .line 69
    :cond_3
    :goto_1
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 70
    iget-object p2, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    if-eqz v0, :cond_4

    .line 71
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 72
    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform;->a()V

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    .line 73
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    .line 74
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1

    :catchall_3
    move-exception p1

    .line 75
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 77
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v2, 0x0

    .line 78
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 79
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 81
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "platformName"

    .line 82
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v6, :cond_0

    .line 84
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 85
    :cond_2
    iget-object v1, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 87
    iget-object p1, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    monitor-enter p1

    .line 88
    :try_start_1
    iget-object v0, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    sget-object v1, Lcn/sharesdk/framework/i$a;->a:Lcn/sharesdk/framework/i$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_4

    .line 89
    :try_start_2
    iget-object v0, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 90
    :try_start_3
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    .line 91
    :cond_4
    :goto_2
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception p1

    .line 92
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public a(Z)V
    .locals 0

    .line 5
    invoke-static {p1}, Lcn/sharesdk/framework/h;->a(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 3

    .line 11
    iget-object v0, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object v2, p0, Lcn/sharesdk/framework/i;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    iget-object v2, p0, Lcn/sharesdk/framework/i;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 15
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return p1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 18
    iget-object v0, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 20
    monitor-exit v0

    return-object p1

    .line 21
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(I)V
    .locals 0

    .line 10
    sput p1, Lcom/mob/tools/network/NetworkHelper;->readTimout:I

    return-void
.end method

.method protected b(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/Service;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 5
    iget-object v1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/framework/Service;

    .line 7
    invoke-virtual {v1}, Lcn/sharesdk/framework/Service;->onUnbind()V

    .line 8
    iget-object v1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Z)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcn/sharesdk/framework/h;->b(Z)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/h;->c()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/Class;)Lcn/sharesdk/framework/Service;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcn/sharesdk/framework/Service;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    sget-object v2, Lcn/sharesdk/framework/i$a;->a:Lcn/sharesdk/framework/i$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ne v1, v2, :cond_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 6
    :cond_0
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcn/sharesdk/framework/i;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/sharesdk/framework/Service;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 7
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 8
    monitor-exit v0

    return-object p1

    :catchall_2
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public c(I)Ljava/lang/String;
    .locals 3

    .line 11
    iget-object v0, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object v2, p0, Lcn/sharesdk/framework/i;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 16
    sget-object v0, Lcn/sharesdk/framework/i$a;->b:Lcn/sharesdk/framework/i$a;

    iget-object v1, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 17
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lcn/sharesdk/framework/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcn/sharesdk/framework/i;->k:Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/sharesdk/framework/h;->d()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    sget-object v0, Lcn/sharesdk/framework/i$a;->a:Lcn/sharesdk/framework/i$a;

    iput-object v0, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->a()Lcom/mob/tools/log/NLog;

    .line 3
    invoke-static {}, Lcom/mob/commons/eventrecoder/EventRecorder;->prepare()V

    .line 4
    invoke-direct {p0}, Lcn/sharesdk/framework/i;->j()V

    .line 5
    invoke-super {p0}, Lcn/sharesdk/framework/utils/g;->d()V

    return-void
.end method

.method public d(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/framework/CustomPlatform;

    .line 10
    iget-object v2, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcn/sharesdk/framework/i;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcn/sharesdk/framework/CustomPlatform;->getPlatformId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1}, Lcn/sharesdk/framework/CustomPlatform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcn/sharesdk/framework/i;->e:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcn/sharesdk/framework/CustomPlatform;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcn/sharesdk/framework/CustomPlatform;->getPlatformId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 14
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    .line 15
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public e(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcn/sharesdk/framework/CustomPlatform;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()[Lcn/sharesdk/framework/Platform;
    .locals 9

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    iget-object v2, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v3, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    sget-object v4, Lcn/sharesdk/framework/i$a;->a:Lcn/sharesdk/framework/i$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v3, v4, :cond_0

    .line 8
    :try_start_1
    iget-object v3, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 9
    :try_start_2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    .line 10
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v3, p0, Lcn/sharesdk/framework/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/sharesdk/framework/Platform;

    if-eqz v4, :cond_1

    .line 13
    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 14
    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->a()V

    .line 15
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_2
    invoke-static {v2}, Lcn/sharesdk/framework/h;->a(Ljava/util/ArrayList;)V

    .line 17
    iget-object v3, p0, Lcn/sharesdk/framework/i;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 18
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/sharesdk/framework/Platform;

    if-eqz v4, :cond_3

    .line 19
    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 20
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_5

    const/4 v0, 0x0

    return-object v0

    .line 22
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Lcn/sharesdk/framework/Platform;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_6

    .line 23
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/sharesdk/framework/Platform;

    aput-object v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 24
    :cond_6
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v2

    const-string v3, "sort list use time: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v5

    invoke-virtual {v2, v3, v6}, Lcn/sharesdk/framework/utils/SSDKLog;->c(Ljava/lang/Object;[Ljava/lang/Object;)I

    return-object v4

    :catchall_1
    move-exception v0

    .line 25
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/sharesdk/framework/i;->k:Z

    return v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/framework/i;->h:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    .line 4
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h()Z
    .locals 5

    .line 1
    sget-object v0, Lcn/sharesdk/framework/i$a;->b:Lcn/sharesdk/framework/i$a;

    iget-object v1, p0, Lcn/sharesdk/framework/i;->b:Lcn/sharesdk/framework/i$a;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Statistics module unopened"

    invoke-virtual {v0, v3, v1}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v2

    .line 3
    :cond_0
    invoke-static {}, Lcn/sharesdk/framework/a/a;->a()Lcn/sharesdk/framework/a/a;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcn/sharesdk/framework/a/a;->e()Ljava/util/HashMap;

    move-result-object v1

    .line 5
    invoke-direct {p0, v0, v1}, Lcn/sharesdk/framework/i;->a(Lcn/sharesdk/framework/a/a;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 7
    invoke-direct {p0, v1}, Lcn/sharesdk/framework/i;->a(Ljava/util/HashMap;)Z

    move-result v2

    :cond_1
    if-eqz v2, :cond_2

    .line 8
    new-instance v1, Lcn/sharesdk/framework/i$2;

    invoke-direct {v1, p0, v0}, Lcn/sharesdk/framework/i$2;-><init>(Lcn/sharesdk/framework/i;Lcn/sharesdk/framework/a/a;)V

    .line 9
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 10
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcn/sharesdk/framework/a/a;->f()Ljava/util/HashMap;

    move-result-object v1

    .line 11
    invoke-direct {p0, v0, v1}, Lcn/sharesdk/framework/i;->a(Lcn/sharesdk/framework/a/a;Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 12
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 13
    invoke-direct {p0, v3}, Lcn/sharesdk/framework/i;->a(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {v0, v1}, Lcn/sharesdk/framework/a/a;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return v2
.end method

.method public i()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/utils/ResHelper;->clearCache(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->b(Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
