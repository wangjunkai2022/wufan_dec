.class Lcom/join/android/app/component/album/lib/b$c;
.super Ljava/lang/Thread;
.source "ImageScaner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/lib/b;->j(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/b$c;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 4
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/b$c;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v1}, Lcom/join/android/app/component/album/lib/b;->d(Lcom/join/android/app/component/album/lib/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "mime_type=? or mime_type=?"

    const-string v5, "image/jpeg"

    const-string v6, "image/png"

    .line 5
    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "date_modified"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "_data"

    .line 7
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    iget-object v3, p0, Lcom/join/android/app/component/album/lib/b$c;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v3}, Lcom/join/android/app/component/album/lib/b;->e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    const/4 v4, 0x2

    .line 9
    iput v4, v3, Landroid/os/Message;->what:I

    .line 10
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    iget-object v4, p0, Lcom/join/android/app/component/album/lib/b$c;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v4}, Lcom/join/android/app/component/album/lib/b;->e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 14
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/b$c;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v1}, Lcom/join/android/app/component/album/lib/b;->e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    .line 15
    iput v2, v1, Landroid/os/Message;->what:I

    .line 16
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$c;->a:Lcom/join/android/app/component/album/lib/b;

    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
