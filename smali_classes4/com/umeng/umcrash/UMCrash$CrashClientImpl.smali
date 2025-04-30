.class Lcom/umeng/umcrash/UMCrash$CrashClientImpl;
.super Ljava/lang/Object;
.source "UMCrash.java"

# interfaces
.implements Lcom/uc/crashsdk/export/ICrashClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/umcrash/UMCrash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrashClientImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/umcrash/UMCrash$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/umeng/umcrash/UMCrash$CrashClientImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddCrashStats(Ljava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onBeforeUploadLog(Ljava/io/File;)Ljava/io/File;
    .locals 0

    return-object p1
.end method

.method public onClientProcessLogGenerated(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCrashRestarting(Z)V
    .locals 0

    return-void
.end method

.method public onGetCallbackInfo(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    const-string p2, "um_action_log"

    .line 1
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 2
    :try_start_0
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$000()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$000()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "source"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "action_name"

    const-string v2, "page_view"

    .line 5
    invoke-virtual {p1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 7
    :goto_0
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 8
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 9
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "name"

    .line 10
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "action_parameter"

    .line 12
    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$100()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 15
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$200()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "page json is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-object v0

    :cond_3
    const-string p2, "um_umid"

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 17
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$300()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/umcrash/UMCrash;->access$400(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p2, "um_user_string"

    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$500()Lcom/umeng/umcrash/UMCrashCallback;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 20
    invoke-static {}, Lcom/umeng/umcrash/UMCrash;->access$500()Lcom/umeng/umcrash/UMCrashCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/umeng/umcrash/UMCrashCallback;->onCallback()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    return-object v0

    .line 21
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    array-length p2, p2

    const/16 v0, 0x100

    if-le p2, v0, :cond_6

    .line 22
    invoke-static {p1, v0}, Lcom/umeng/umcrash/UMCrashUtils;->splitByByte(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_6
    return-object p1

    :cond_7
    return-object v0
.end method

.method public onLogGenerated(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
