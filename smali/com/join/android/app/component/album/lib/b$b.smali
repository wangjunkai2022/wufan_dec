.class Lcom/join/android/app/component/album/lib/b$b;
.super Ljava/lang/Object;
.source "ImageScaner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/lib/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/lib/b;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/lib/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/b$b;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4
    iget-object v2, p0, Lcom/join/android/app/component/album/lib/b$b;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v2}, Lcom/join/android/app/component/album/lib/b;->d(Lcom/join/android/app/component/album/lib/b;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 7
    new-instance v8, Lcom/join/android/app/component/album/lib/a;

    invoke-direct {v8}, Lcom/join/android/app/component/album/lib/a;-><init>()V

    const-string v4, "All"

    .line 8
    invoke-virtual {v8, v4}, Lcom/join/android/app/component/album/lib/a;->j(Ljava/lang/String;)V

    const-string v4, ""

    .line 9
    invoke-virtual {v8, v4}, Lcom/join/android/app/component/album/lib/a;->k(Ljava/lang/String;)V

    const/4 v9, 0x1

    .line 10
    invoke-virtual {v8, v9}, Lcom/join/android/app/component/album/lib/a;->i(I)V

    const-string v4, "\u5168\u90e8"

    .line 11
    invoke-virtual {v8, v4}, Lcom/join/android/app/component/album/lib/a;->l(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v8, v1}, Lcom/join/android/app/component/album/lib/a;->g(Ljava/util/List;)V

    const-string v4, "ALL"

    .line 13
    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "_data"

    const-string v11, "bucket_display_name"

    .line 14
    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "image/jpeg"

    const-string v6, "image/png"

    .line 15
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v5, "mime_type=? or mime_type=?"

    const-string v7, "datetaken DESC "

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    move-object v4, v3

    .line 16
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 17
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v4, :cond_1

    move-object v4, v5

    .line 19
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 23
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/android/app/component/album/lib/a;

    invoke-virtual {v6}, Lcom/join/android/app/component/album/lib/a;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/android/app/component/album/lib/a;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/join/android/app/component/album/lib/a;

    invoke-virtual {v6}, Lcom/join/android/app/component/album/lib/a;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/join/android/app/component/album/lib/a;->i(I)V

    goto :goto_0

    .line 25
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/join/android/app/component/album/lib/a;

    .line 26
    invoke-static {v6}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v13}, Lcom/join/android/app/component/album/lib/a;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 27
    invoke-virtual {v13}, Lcom/join/android/app/component/album/lib/a;->a()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {v13}, Lcom/join/android/app/component/album/lib/a;->a()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v13, v12}, Lcom/join/android/app/component/album/lib/a;->i(I)V

    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    const/4 v12, 0x1

    :goto_1
    if-eqz v12, :cond_6

    .line 29
    new-instance v12, Lcom/join/android/app/component/album/lib/a;

    invoke-direct {v12}, Lcom/join/android/app/component/album/lib/a;-><init>()V

    .line 30
    invoke-virtual {v12, v7}, Lcom/join/android/app/component/album/lib/a;->j(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v12, v5}, Lcom/join/android/app/component/album/lib/a;->k(Ljava/lang/String;)V

    .line 32
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v13}, Lcom/join/android/app/component/album/lib/a;->g(Ljava/util/List;)V

    .line 33
    invoke-virtual {v12}, Lcom/join/android/app/component/album/lib/a;->a()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {v12, v9}, Lcom/join/android/app/component/album/lib/a;->i(I)V

    .line 35
    invoke-virtual {v12, v6}, Lcom/join/android/app/component/album/lib/a;->h(Ljava/lang/String;)V

    .line 36
    invoke-interface {v0, v7, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    move-object v12, v3

    .line 37
    :goto_2
    iget-object v5, p0, Lcom/join/android/app/component/album/lib/b$b;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v5}, Lcom/join/android/app/component/album/lib/b;->e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    const/16 v6, 0x8

    .line 38
    iput v6, v5, Landroid/os/Message;->what:I

    .line 39
    iput-object v12, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 40
    iget-object v6, p0, Lcom/join/android/app/component/album/lib/b$b;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v6}, Lcom/join/android/app/component/album/lib/b;->e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 41
    :cond_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 42
    invoke-virtual {v8}, Lcom/join/android/app/component/album/lib/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/join/android/app/component/album/lib/a;->i(I)V

    .line 43
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/b$b;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v1}, Lcom/join/android/app/component/album/lib/b;->e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    .line 44
    iput v2, v1, Landroid/os/Message;->what:I

    .line 45
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$b;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
