.class Lcom/join/mgps/dialog/c$a;
.super Ljava/lang/Object;
.source "AdVipMainDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/c;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Lcom/join/mgps/dialog/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/c;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/c$a;->b:Lcom/join/mgps/dialog/c;

    iput-object p2, p0, Lcom/join/mgps/dialog/c$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/c$a;->b:Lcom/join/mgps/dialog/c;

    invoke-static {p1}, Lcom/join/mgps/dialog/c;->a(Lcom/join/mgps/dialog/c;)Lcom/join/mgps/pref/PrefDef_;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v0, Lcom/join/mgps/dto/SingleGameAdBean;

    sget v1, Lcom/MApplication;->v0:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/dto/SingleGameAdBean;-><init>(IJ)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dialog/c$a;->b:Lcom/join/mgps/dialog/c;

    invoke-static {v1}, Lcom/join/mgps/dialog/c;->b(Lcom/join/mgps/dialog/c;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/join/mgps/dialog/c$a;->b:Lcom/join/mgps/dialog/c;

    invoke-static {v0}, Lcom/join/mgps/dialog/c;->a(Lcom/join/mgps/dialog/c;)Lcom/join/mgps/pref/PrefDef_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    const-class v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/join/mgps/dto/SingleGameAdBean;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructParametricType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 11
    new-instance v0, Lcom/join/mgps/dto/SingleGameAdBean;

    sget v1, Lcom/MApplication;->v0:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/dto/SingleGameAdBean;-><init>(IJ)V

    .line 12
    iget-object v1, p0, Lcom/join/mgps/dialog/c$a;->b:Lcom/join/mgps/dialog/c;

    invoke-static {v1}, Lcom/join/mgps/dialog/c;->b(Lcom/join/mgps/dialog/c;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/join/mgps/dialog/c$a;->b:Lcom/join/mgps/dialog/c;

    invoke-static {v0}, Lcom/join/mgps/dialog/c;->a(Lcom/join/mgps/dialog/c;)Lcom/join/mgps/pref/PrefDef_;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->singleGameShowDialog()Lorg/androidannotations/api/sharedpreferences/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 15
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/c$a;->b:Lcom/join/mgps/dialog/c;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 16
    invoke-static {}, Lcom/join/android/app/component/album/lib/ImageLoader;->q()Lcom/join/android/app/component/album/lib/ImageLoader;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/c$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/album/lib/ImageLoader;->m(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/join/mgps/dialog/c$a;->b:Lcom/join/mgps/dialog/c;

    iget-object v0, p0, Lcom/join/mgps/dialog/c$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/join/mgps/dialog/c;->c(Lcom/join/mgps/dialog/c;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/c$a;->b:Lcom/join/mgps/dialog/c;

    invoke-static {v0}, Lcom/join/mgps/dialog/c;->d(Lcom/join/mgps/dialog/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/dialog/c$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/join/mgps/dialog/c$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/join/mgps/Util/t1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
